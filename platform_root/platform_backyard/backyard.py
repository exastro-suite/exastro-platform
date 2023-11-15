#   Copyright 2022 NEC Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
import time
import datetime
import sys
import multiprocessing
import signal
import threading
import traceback
import itertools
import random
import ulid
from contextlib import closing
from importlib import import_module

import globals
import backyard_config
import backyard_const
from common_library.common.db import DBconnector
from libs import queries_process_queue, queries_health_check
from libs.backyard_classes import SubProcessesManager, SubProcessParameter, SubProcessManager, Task, IntervalTiming

# 終了指示のシグナル受信
process_terminate = False


def backyard_main_process():
    """main process
    """
    # シグナルのハンドライベント設定 / Signal handler event settings
    signal.signal(signal.SIGTERM, backyard_process_signal_handler)
    signal.signal(signal.SIGINT, backyard_process_signal_handler)

    log_queue = multiprocessing.Queue()
    globals.init(log_queue, main_process=True)
    globals.logger.info('START main process')

    # sub process管理用クラス / sub process management class
    sub_processes_mgr = SubProcessesManager()

    while not process_terminate:
        try:
            # sub processsの状態を更新します / Update the state of sub processes
            sub_processes_mgr.refresh_sub_process_status()

            # sub processを起動する必要があるか？ / Is it necessary to start a sub process?
            if not sub_processes_mgr.is_enough_sub_process():

                # sub process起動用パラメータを払いだす / Assign sub process startup parameters
                sub_process_parameter = sub_processes_mgr.generate_sub_process_parameter()

                if sub_process_parameter is not None:
                    # processインスタンスの生成 / Generate process instance
                    new_sub_process = multiprocessing.Process(
                        target=backyard_sub_process,
                        args=(log_queue, sub_process_parameter)
                    )
                    # sub processを追加
                    sub_processes_mgr.append_new_process(sub_process_parameter, new_sub_process)
                    # sub processを起動する / Start sub process
                    new_sub_process.start()
                else:
                    # 何らかの要因でsub processが停止していなく管理上限を超えた時
                    # When the sub process is not stopped for some reason and exceeds the management limit
                    globals.logger.error('Sub process management limit exceeded')
                    # 一番古いsub processをkillする / kill the oldest sub process
                    sub_processes_mgr.kill_oldest_sub_process()

            # sub processへの終了要求を設定 / Set termination request to sub process
            sub_processes_mgr.set_sub_process_termination_request(force=False)

        except Exception as err:
            # 例外が発生しても処理は継続する / Processing continues even if an exception occurs
            globals.logger.error(err)
            globals.logger.error(f'stack trace\n{traceback.format_exc()}')

        time.sleep(backyard_config.SUB_PROCESS_WATCH_INTERVAL_SECONDS)

    #
    # 終了処理 / End processing
    #
    globals.logger.info('TERMINATING main process')

    # sub processへの受付終了指示 / Instructions to end reception for sub process
    sub_processes_mgr.set_sub_process_termination_request(force=True)

    # sub processの終了 / End of sub process
    all_sub_process = sub_processes_mgr.get_sub_processes()
    for sub_process in all_sub_process:
        try:
            # SIGTERMシグナル送信 / SIGTERM signal transmission
            sub_process.terminate()
        except Exception:
            pass

    for sub_process in all_sub_process:
        try:
            # 終了待ち / Waiting for completion
            sub_process.join()
        except Exception:
            pass

    globals.logger.info('TERMINATE main process')
    globals.terminate()
    return


def backyard_sub_process(log_queue, parameter: SubProcessParameter):
    """sub process

    Args:
        log_queue (_type_): log queue
        parameter (SubProcessParameter): sub process arguments
    """
    # シグナルのハンドライベント設定 / Signal handler event settings
    signal.signal(signal.SIGTERM, backyard_process_signal_handler)
    signal.signal(signal.SIGINT, backyard_process_signal_handler)

    # loggerの初期化 / Initializing logger
    globals.init(log_queue)
    globals.logger.info('START sub process')

    # task classのインポート / Importing task class
    task_modules = {kind: import_module(config["module"]) for kind, config in backyard_config.TASKS.items()}

    # sub process管理情報の生成 / Generate sub process management information
    sub_process_mgr = parameter.genarate_sub_process_manager()

    # 終了要求がセットされるまで続ける / Continue until end request is set
    while (not process_terminate) and sub_process_mgr.is_process_continue():
        try:
            with closing(DBconnector().connect_platformdb()) as conn:

                while (not process_terminate) and sub_process_mgr.is_process_continue():
                    time.sleep(backyard_config.TASK_STATUS_WATCH_INTERVAL_SECONDS)

                    try:
                        if not sub_process_mgr.is_sheard_variables_normal():
                            # 共有メモリ領域が想定外の状態のためprocessを終了する
                            # Terminate process because the shared memory area is in an unexpected state
                            globals.logger.error("Shared variable was overwritten by another process")
                            sys.exit(201)

                        if sub_process_mgr.interval_db_reconect.is_passed():
                            # DBの再接続時間になったのでループを抜ける
                            # It's time to reconnect the DB, so exit the loop.
                            globals.logger.debug("Reconnect DB")
                            break

                        if sub_process_mgr.interval_db_health_check.is_passed():
                            if is_healthy_db_connection(conn):
                                globals.logger.debug("Check DB connection : healthy")
                            else:
                                # DB接続が異常なのでループを抜ける(再接続する)
                                # The DB connection is abnormal, so exit the loop (reconnect)
                                globals.logger.warning("Check DB connection : unhealthy")
                                break

                        try:
                            # taskの起動処理
                            # Task startup process
                            task_start_control(conn, sub_process_mgr, task_modules)
                        except Exception:
                            pass

                        try:
                            # task timeoutの起動処理
                            # Task timeout startup process
                            task_timeout_control(sub_process_mgr)
                        except Exception:
                            pass

                        try:
                            # task cancel timeoutの処理
                            # Handling task cancel timeout
                            cancel_task_timeout_control(sub_process_mgr)
                        except Exception:
                            pass

                    except Exception as err:
                        # 例外が発生しても処理は継続する / Processing continues even if an exception occurs
                        globals.logger.error(err)
                        globals.logger.error(f'stack trace\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(err)
            globals.logger.error(f'stack trace\n{traceback.format_exc()}')
            time.sleep(backyard_config.TASK_STATUS_WATCH_INTERVAL_SECONDS)

        if process_terminate:
            # taskの強制終了を行う / Force quit task
            cancel_all_tasks(sub_process_mgr)

    globals.logger.info('EXIT sub process')
    return


def is_healthy_db_connection(conn):
    """DB接続の正常性確認 / Checking the health of the DB connection

    Args:
        conn (_type_): db connection

    Returns:
        bool: result (True: normal / False: abnormal)
    """
    try:
        with conn.cursor() as cursor:
            # テスト用のSQLを実行 / Execute test SQL
            cursor.execute(queries_health_check.SQL_QUERY_HEALTH_CHECK)
            cursor.fetchone()
        return True
    except Exception:
        return False


def task_start_control(conn, sub_process_mgr: SubProcessManager, task_modules):
    """task起動 / task launch

    Args:
        conn (_type_): db connection
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
        task_modules (dict): 各taskのimport module / import module for each task
    """
    # 終了したtaskの情報クリア / Clear information on completed tasks
    sub_process_mgr.refresh_task_status()

    # taskは起動可能かチェック / Check if task can be started
    if sub_process_mgr.can_launch_task():
        try:
            conn.begin()
            # queueから処理可能な処理対象の情報を取得する / Get information about processable objects from the queue
            queue_rows = get_queue(conn, sub_process_mgr.get_running_task_queue(), sub_process_mgr.is_timing_of_force_updating_status())

            # 取得したqueue分処理する / Process the acquired queue
            for queue_row in queue_rows:
                if not sub_process_mgr.countup_task_count():
                    # taskの上限数に到達した場合 / When the maximum number of tasks is reached
                    break

                try:
                    globals.logger.debug(f"Starting task : {queue_row['PROCESS_ID']} / {queue_row['PROCESS_KIND']}")

                    # queueから起動対象のレコードを削除する / Delete the record to be launched from the queue
                    delete_queue(conn, queue_row)
                    
                    # task処理のclassのinstanceを生成する / Generate an instance of the task processing class
                    task_executor = task_modules[queue_row['PROCESS_KIND']].TaskExecuter(queue_row)

                    # task処理のthreadを生成する / Generate a thread for task processing
                    task_thread = threading.Thread(
                        target=task_executor.execute_base,
                        name=queue_row['PROCESS_ID'],
                        daemon=True)
                    # task処理のthreadを開始する / Start a task processing thread
                    task_thread.start()
                    # taskの情報を追加する / Add task information
                    sub_process_mgr.append_task(queue_row, task_thread, task_executor)
                except Exception:
                    # 何らかの異常でtaskを開始できなかった場合、countupしたtask数を元に戻す
                    # If the task cannot be started due to some abnormality, restore the counted up task number to the original number.
                    sub_process_mgr.countdown_task_count()
                    raise
        except Exception as err:
            globals.logger.debug(err)
            globals.logger.debug(f'stack trace\n{traceback.format_exc()}')
        finally:
            # queueの更新をcommitする / Commit queue updates
            conn.commit()


def task_timeout_control(sub_process_mgr: SubProcessManager):
    """timeout処理の制御 / Controlling timeout processing

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    # taskがtimeoutしたtaskの一覧を取得する / Get a list of tasks that have timed out
    timeout_tasks = sub_process_mgr.get_timeout_tasks()
    # timeoutのtaskを全てcancelする
    cancel_tasks(timeout_tasks)


def cancel_all_tasks(sub_process_mgr: SubProcessManager):
    """taskを全てcancelする / cancel all tasks

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    all_tasks = sub_process_mgr.get_all_tasks()
    cancel_tasks(all_tasks)
    for task in all_tasks:
        task.cancel_thread.join()


def cancel_tasks(tasks: list[Task]):
    for task in tasks:
        # timeoutのtaskに対して全て処理する / Process everything for timeout tasks

        if task.thread.is_alive():
            # timeoutしたtaskにtimeout例外を発行する / Issue a timeout exception for a task that has timed out
            globals.logger.warning(f"Timeout task : {task.queue['PROCESS_ID']}")
            task.task_executor.raise_timeout_exception()

        if task.cancel_thread is None:
            # cancel処理が起動していない場合、cancel処理を起動する / If the cancel process is not started, start the cancel process
            globals.logger.debug(f"Cancel thread starting : {task.queue['PROCESS_ID']}")
            try:
                # cancelのthreadを生成し開始する / Create and start a cancel thread
                task.cancel_thread = threading.Thread(
                    target=task.task_executor.cancel_base,
                    name=f"{task.queue['PROCESS_ID']}_cancel",
                    daemon=True)
                task.cancel_thread.start()
                # cancel処理のtimeout時間を設定する / Set timeout time for cancel processing
                task.cancel_timeout = datetime.datetime.now() + datetime.timedelta(seconds=backyard_config.TASK_CANCEL_TIMEOUT_SECONDS)
            except Exception as err:
                globals.logger.debug(err)
                globals.logger.debug(f'stack trace\n{traceback.format_exc()}')
                pass


def cancel_task_timeout_control(sub_process_mgr: SubProcessManager):
    """cancel timeoutの制御 / Controlling cancel timeout

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    # taskのcancelがtimeoutしたtaskの一覧を取得する / Get a list of tasks whose cancel timed out
    timeout_tasks = sub_process_mgr.get_cancel_timeout_tasks()

    for timeout_task in timeout_tasks:
        # cancel timeoutのtask全てを処理する / Process all tasks with cancel timeout

        if timeout_task.cancel_thread.is_alive():
            # cancel timeoutしたtaskにtimeout例外を発行する / Issue a timeout exception for a task that has canceled timeout
            globals.logger.warning(f"Cancel timeout task : {timeout_task.queue['PROCESS_ID']}")
            timeout_task.task_executor.raise_cancel_timeout_exception()

            # 実行中taskからcancel timeoutしたtaskに移管する
            # （何らかの要因でcancel threadが応答しなくなり新たなtask起動できなくなる状態を防ぐため）
            # Transfer from a running task to a task that has canceled timeout
            # (to prevent a situation where the cancel thread becomes unresponsive for some reason and cannot start a new task)
            sub_process_mgr.transfer_cancel_timeout(timeout_task)

            # cancel timeoutした件数を取得する / Get the number of cancel timeouts
            count_cancel_timeout = sub_process_mgr.count_cancel_timeout()
            globals.logger.debug(f"cancel timeout task count: {count_cancel_timeout}")

            # cancel timeoutした件数が一定値を超えた場合、sub processを終了する（メモリ圧迫の予防のため）
            # If the number of cancel timeouts exceeds a certain value, terminate the sub process (to prevent memory pressure)
            if count_cancel_timeout >= backyard_config.SUB_PROCESS_MAX_CANCEL_TIMEOUT:
                globals.logger.warning("Restarting process due to too many cancellation timeouts")
                sub_process_mgr.set_terminating()


            

def get_queue(conn, running_task_queue: list, force_status_update_task: bool):
    """queueの取得 / Get queue

    Args:
        conn (_type_): DB connection
        running_task_queue (list): 実行中のtaskのqueue / queue of running tasks
        force_status_update_task (bool): 強制ステータス更新タスク起動有無 / Whether or not to start the forced status update task

    Returns:
        list: task起動対象のqueue情報 / Queue information for task activation
    """
    # 実行中のtaskをPROCESS_KINDでグルーピング / Group running tasks by PROCESS_KIND
    running_kind_grouping = queue_grouping(running_task_queue, "PROCESS_KIND", "undefined")
    # 実行してないPROCESS_KINDの情報を0件で追加 / Added 0 information about PROCESS_KIND that is not being executed.
    running_kind_grouping.update({key: [] for key in backyard_config.TASKS.keys() if key not in running_kind_grouping})

    # queueの内容をDBから取得 / Get queue contents from DB
    with conn.cursor() as cursor:
        cursor.execute(queries_process_queue.SQL_QUERY_PROCESS_QUEUE)
        queue = cursor.fetchall()

    # queueの情報をorganization_idでグルーピングし、last_update_timestampでソート
    # Group queue information by organization_id and sort by last_update_timestamp
    queue_org_grouping = queue_grouping(queue, "ORGANIZATION_ID", "_platform", "LAST_UPDATE_TIMESTAMP")

    # 実行中のtaskをorganization_idでグルーピング / Group running tasks by organization_id
    running_org_grouping = queue_grouping(running_task_queue, "ORGANIZATION_ID", "_platform")
    # 実行してないorganization_idの情報を0件で追加 / Add information of organization_id that is not executed with 0 items
    running_org_grouping.update({key: [] for key in queue_org_grouping.keys() if key not in running_org_grouping})

    # totalで実行中のtask数 / Number of tasks running in total
    total_task_count = len(running_task_queue)

    # return値の配列を初期化 / Initialize return value array
    ret_queue = []

    # 強制ステータス更新のtaskの起動要求がなされている場合、return値の配列に追加する
    # If a request is made to start a forced status update task, add it to the return value array.
    if force_status_update_task:
        ret_queue.append({
            "PROCESS_ID": ulid.new().str,
            "PROCESS_KIND": backyard_const.PROCESS_KIND_FORCE_STATUS_UPDATE,
            "PROCESS_EXEC_ID": None,
            "ORGANIZATION_ID": None,
            "WORKSPACE_ID": None,
            "LAST_UPDATE_TIMESTAMP": datetime.datetime.now(),
            "LAST_UPDATE_USER": None
        })

    # queueが残っているもしくはtotal task数が上限値未満の場合繰り返す
    # Repeat if the queue remains or the total number of tasks is less than the upper limit
    while len(queue_org_grouping) > 0 and total_task_count < backyard_config.SUB_PROCESS_MAX_TASKS:
        # 次に処理をするorganization_idを決定する
        #   実行中または起動対象のtaskの総件数の昇順
        #   last_update_timestampの昇順
        #   乱数の昇順（特定のorganization_idが有利にならないように）
        # Determine the organization_id to process next
        #   Ascending order of total number of tasks being executed or started
        #   Ascending order of last_update_timestamp
        #   Ascending random numbers (so that no particular organization_id has an advantage)
        next_organization_id = sorted(
            [{
                "organization_id": organization_id,
                "task_count": len(running_org_grouping[organization_id]),
                "last_update_timestamp": queue_org_grouping[organization_id][0]['LAST_UPDATE_TIMESTAMP'],
                "random": random.randrange(999999),
            } for organization_id in queue_org_grouping.keys()],
            key=lambda x: (x['task_count'], x['last_update_timestamp'], x['random'])
        )[0]['organization_id']

        # 次に処理するPROCESS_KIND / PROCESS_KIND to process next
        next_process_king = queue_org_grouping[next_organization_id][0]['PROCESS_KIND']

        if len(running_kind_grouping[next_process_king]) < backyard_config.TASKS[next_process_king]['max_task_per_process']:
            # 次に処理するPROCESS_KINDが条件に達していないときは、起動対象としてreturn配列に追加
            # If the next PROCESS_KIND to be processed does not meet the conditions, add it to the return array as a startup target
            ret_queue.append(queue_org_grouping[next_organization_id][0])
            running_kind_grouping[next_process_king].append(queue_org_grouping[next_organization_id][0])
            running_org_grouping[next_organization_id].append(queue_org_grouping[next_organization_id][0])
            total_task_count += 1

        # 次のqueue情報に進むためqueueの配列から削除 / Delete from queue array to proceed to next queue information
        del queue_org_grouping[next_organization_id][0]
        if len(queue_org_grouping[next_organization_id]) == 0:
            # 0件になったらorganization_idのキーも消す / When the number becomes 0, delete the organization_id key as well.
            del queue_org_grouping[next_organization_id]

    return ret_queue


def queue_grouping(queue: list, group_key: str, group_null_vale: str, sort_key: str = None):
    """queue grouping

    Args:
        queue (list): queue
        group_key (str): grouping項目 / grouping item
        group_null_vale (str): grouping項目がNull値の場合に置き換える値 / Value to replace when grouping item is null value
        sort_key (str, optional): ソートする項目 / Item to sort. Defaults to None.

    Returns:
        dict: グルーピング結果 / Grouping results
    """
    if sort_key is None:
        return {
            key: list(rows)
            for key, rows in itertools.groupby(
                sorted(queue, key=lambda x: x[group_key]),
                lambda x: x[group_key] if x[group_key] is not None else group_null_vale)
        }
    else:
        return {
            key: sorted(list(rows), key=lambda x: x[sort_key])
            for key, rows in itertools.groupby(
                sorted(queue, key=lambda x: x[group_key]),
                lambda x: x[group_key] if x[group_key] is not None else group_null_vale)
        }


def delete_queue(conn, queue_row: dict):
    """queueのレコード削除 / Delete queue record

    Args:
        conn (_type_): db connection
        queue_row (dict): 削除対象 / Target for deletion
    """
    with conn.cursor() as cursor:
        cursor.execute(queries_process_queue.SQL_QUERY_PROCESS_DELETE, {"process_id": queue_row["PROCESS_ID"]})


def backyard_process_signal_handler(signum, frame):
    """processへの終了指示（シグナル受信） / Termination instruction to process (signal reception)

    Args:
        signum (_type_): signal handler parameter
        frame (_type_): signal handler parameter
    """
    global process_terminate
    process_terminate = True


if __name__ == '__main__':
    # main processメイン処理
    backyard_main_process()
