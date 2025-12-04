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
import os
from contextlib import closing
from importlib import import_module
import pymysql.err

import globals
import job_manager_config
import job_manager_const
from common_library.common.db import DBconnector
from libs import queries_process_queue, queries_health_check
from libs.job_manager_classes import SubProcessesManager, SubProcessParameter, SubProcessManager, Job

# 終了指示のシグナル受信
process_terminate = False   # SIGTERM or SIGINT signal
process_sigterm = False     # SIGTERM signal (Jobを中断して終了する / Interrupt and end the job)
process_sigint = False      # SIGINT signal (Jobをやり終えて停止する / Finish the job and stop)


def job_manager_main_process():
    """main process
    """
    global process_terminate
    global process_sigterm
    global process_sigint
    process_terminate = False
    process_sigterm = False
    process_sigint = False

    # シグナルのハンドライベント設定 / Signal handler event settings
    signal.signal(signal.SIGTERM, job_manager_process_sigterm_handler)
    signal.signal(signal.SIGINT, job_manager_process_sigint_handler)

    # 乱数の初期化
    random.seed()

    globals.init(main_process=True)
    globals.logger.info('START main process')

    # migration完了まで待つ / Wait until migration completes
    wait_until_migration_completed()

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
                        target=job_manager_sub_process,
                        args=(sub_process_parameter,)
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

            # interval job 実行processの設定 / interval job Execution process settings
            sub_processes_mgr.set_interval_job_execute_process()

        except Exception as err:
            # 例外が発生しても処理は継続する / Processing continues even if an exception occurs
            globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

        time.sleep(job_manager_config.SUB_PROCESS_WATCH_INTERVAL_SECONDS)

    #
    # 終了処理 / End processing
    #
    globals.logger.info('TERMINATING main process')

    # sub processへの受付終了指示 / Instructions to end reception for sub process
    sub_processes_mgr.set_sub_process_termination_request(force=True)

    all_sub_process = sub_processes_mgr.get_sub_processes()

    if process_sigterm:
        # sub processの終了 / End of sub process
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


def wait_until_migration_completed():
    """migration完了まで待つ / Wait until migration completes
    """
    with open(job_manager_const.VERSION_TEXT_PATH) as fp:
        version_text = str.strip(fp.readline())

    while True:
        try:
            with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
                cursor.execute(queries_health_check.SQL_QUERY_VERSION)
                version = cursor.fetchone()
                if version is None:
                    raise Exception('Version Not Found')
                if version_text == version.get('VERSION'):
                    globals.logger.info(f"Migration completed : {version_text}")
                    break

                raise Exception(f"Version mismatch : application:[{version_text}] database:[{version.get('VERSION')}]")

        except Exception as err:
            globals.logger.info(f"Wait until migration completed : {err}")
            time.sleep(job_manager_config.SUB_PROCESS_WATCH_INTERVAL_SECONDS)


def job_manager_sub_process(parameter: SubProcessParameter):
    """sub process

    Args:
        log_queue (_type_): log queue
        parameter (SubProcessParameter): sub process arguments
    """
    global process_terminate
    global process_sigterm
    global process_sigint
    process_terminate = False
    process_sigterm = False
    process_sigint = False

    # シグナルのハンドライベント設定 / Signal handler event settings
    signal.signal(signal.SIGTERM, job_manager_process_sigterm_handler)
    signal.signal(signal.SIGINT, job_manager_process_sigint_handler)

    # 乱数の初期化
    random.seed()

    # loggerの初期化 / Initializing logger
    globals.init()
    globals.logger.info('START sub process')

    # job classのインポート / Importing job class
    job_modules = {kind: import_module(config["module"]) for kind, config in job_manager_config.JOBS.items()}

    # sub process管理情報の生成 / Generate sub process management information
    sub_process_mgr = parameter.genarate_sub_process_manager()

    # 終了要求がセットされるまで続ける / Continue until end request is set
    while (not process_terminate) and sub_process_mgr.is_process_continue():
        try:
            with closing(DBconnector().connect_platformdb()) as conn:

                while (not process_terminate) and sub_process_mgr.is_process_continue():
                    time.sleep(job_manager_config.JOB_STATUS_WATCH_INTERVAL_SECONDS)

                    try:
                        if not sub_process_mgr.is_sheard_variables_normal():
                            # 共有メモリ領域が想定外の状態のためprocessを終了する
                            # Terminate process because the shared memory area is in an unexpected state
                            globals.logger.error("Shared variable was overwritten by another process")
                            sys.exit(201)

                        if sub_process_mgr.interval_db_reconect.is_passed():
                            # DBの再接続時間になったのでループを抜ける
                            # It's time to reconnect the DB, so exit the loop.
                            globals.logger.debug(job_manager_const.LOG_RECONNECT)
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
                            # jobの起動処理
                            # Job startup process
                            job_start_control(conn, sub_process_mgr, job_modules)
                        except Exception as err:
                            globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

                        try:
                            # job timeoutの起動処理
                            # Job timeout startup process
                            job_timeout_control(sub_process_mgr)
                        except Exception as err:
                            globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

                        try:
                            # job cancel timeoutの処理
                            # Handling job cancel timeout
                            cancel_job_timeout_control(sub_process_mgr)
                        except Exception as err:
                            globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

                        # ハングアップ監視用に時刻を出力する
                        with open(os.environ.get('FILE_PATH_LIVENESS'), 'w') as f:
                            f.write(str(int(time.time())))
                            
                    except Exception as err:
                        # 例外が発生しても処理は継続する / Processing continues even if an exception occurs
                        globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

        except Exception as err:
            globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')
            time.sleep(job_manager_config.JOB_STATUS_WATCH_INTERVAL_SECONDS)

    globals.logger.debug('Sub process loop exited')

    if process_sigterm:
        # jobの強制終了を行う / Force quit job
        cancel_all_jobs(sub_process_mgr)

    sub_process_mgr.set_terminated_flag()
    globals.logger.info('EXIT sub process')


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


def job_start_control(conn, sub_process_mgr: SubProcessManager, job_modules):
    """job起動 / job launch

    Args:
        conn (_type_): db connection
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
        job_modules (dict): 各jobのimport module / import module for each job
    """
    # 終了したjobの情報クリア / Clear information on completed jobs
    sub_process_mgr.refresh_job_status()

    # jobは起動可能かチェック / Check if job can be started
    if sub_process_mgr.can_launch_job():
        try:
            conn.begin()

            # 定期実行のjobを取得する / Get a regularly executed job
            start_interval_jobs = get_start_interval_jobs(sub_process_mgr)

            # queueから処理可能な処理対象の情報を取得する / Get information about processable objects from the queue
            queue_rows, queue_rows_batch = get_queue(
                conn,
                sub_process_mgr.get_running_job_queue(),
                job_manager_config.SUB_PROCESS_MAX_JOBS - len(sub_process_mgr.get_running_job_queue()) - len(start_interval_jobs))

            # interval実行jobとqueue実行jobを結合する
            # interval実行にはbatchする処理は無いのでstart_interval_job分のNoneを結合する
            # Combine interval execution job and queue execution job
            # Since there is no batch process for interval execution, combine None for start_interval_job.
            start_jobs = start_interval_jobs + queue_rows
            start_jobs_batch = [None] * len(start_interval_jobs) + queue_rows_batch

            # 取得したqueue分処理する / Process the acquired queue
            for index, queue_row in enumerate(start_jobs):
                globals.logger.debug(f"Starting job : {queue_row['PROCESS_ID']} / {queue_row['PROCESS_KIND']}")

                # queueから起動対象のレコードを削除する / Delete the record to be launched from the queue
                delete_queue(conn, queue_row, start_jobs_batch[index])

                # batch処理の場合は一定時間当該のbatch_groupの次回実行をロックする
                # In the case of batch processing, the next execution of the batch_group is locked for a certain period of time.
                if queue_row['ENABLE_BATCH']:
                    lock_queue_batch_group(conn, queue_row)

                # job処理のclassのinstanceを生成する / Generate an instance of the job processing class
                job_class = eval(f"job_modules[queue_row['PROCESS_KIND']].{job_manager_config.JOBS[queue_row['PROCESS_KIND']]['class']}")
                job_executor = job_class(queue_row, start_jobs_batch[index])

                # job処理のthreadを生成する / Generate a thread for job processing
                job_thread = threading.Thread(
                    target=job_executor.execute_base,
                    name=queue_row['PROCESS_ID'],
                    daemon=True)
                # job処理のthreadを開始する / Start a job processing thread
                job_thread.start()
                # jobの情報を追加する / Add job information
                sub_process_mgr.append_job(queue_row, job_thread, job_executor)
        finally:
            # queueの更新をcommitする / Commit queue updates
            conn.commit()


def job_timeout_control(sub_process_mgr: SubProcessManager):
    """timeout処理の制御 / Controlling timeout processing

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    # jobがtimeoutしたjobの一覧を取得する / Get a list of jobs that have timed out
    timeout_jobs = sub_process_mgr.get_timeout_jobs()
    # timeoutのjobを全てcancelする
    cancel_jobs(timeout_jobs)


def cancel_all_jobs(sub_process_mgr: SubProcessManager):
    """jobを全てcancelする / cancel all jobs

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    globals.logger.info('Start cancel_all_jobs')
    all_jobs = sub_process_mgr.get_all_jobs()
    cancel_jobs(all_jobs)
    for job in all_jobs:
        job.cancel_thread.join()
    globals.logger.info('Finish cancel_all_jobs')


def cancel_jobs(jobs: list[Job]):
    """Jobのcancelを行う

    Args:
        jobs (list[Job]): cancel対象job / Job to be canceled
    """
    for job in jobs:
        # timeoutのjobに対して全て処理する / Process everything for timeout jobs

        if job.thread.is_alive():
            # timeoutしたjobにtimeout例外を発行する / Issue a timeout exception for a job that has timed out
            globals.logger.warning(f"Timeout job : {job.queue['PROCESS_ID']}")
            job.job_executor.raise_timeout_exception()

        if job.cancel_thread is None:
            # cancel処理が起動していない場合、cancel処理を起動する / If the cancel process is not started, start the cancel process
            globals.logger.debug(f"Cancel thread starting : {job.queue['PROCESS_ID']}")
            try:
                # cancelのthreadを生成し開始する / Create and start a cancel thread
                job.cancel_thread = threading.Thread(
                    target=job.job_executor.cancel_base,
                    name=f"{job.queue['PROCESS_ID']}_cancel",
                    daemon=True)
                job.cancel_thread.start()
                # cancel処理のtimeout時間を設定する / Set timeout time for cancel processing
                job.cancel_timeout = datetime.datetime.now() + datetime.timedelta(seconds=job_manager_config.JOB_CANCEL_TIMEOUT_SECONDS)
            except Exception as err:
                globals.logger.debug(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')
                pass


def cancel_job_timeout_control(sub_process_mgr: SubProcessManager):
    """cancel timeoutの制御 / Controlling cancel timeout

    Args:
        sub_process_mgr (SubProcessManager): sub process 管理情報 / sub process management information
    """
    # jobのcancelがtimeoutしたjobの一覧を取得する / Get a list of jobs whose cancel timed out
    timeout_jobs = sub_process_mgr.get_cancel_timeout_jobs()

    for timeout_job in timeout_jobs:
        # cancel timeoutのjob全てを処理する / Process all jobs with cancel timeout

        if timeout_job.cancel_thread.is_alive():
            # cancel timeoutしたjobにtimeout例外を発行する / Issue a timeout exception for a job that has canceled timeout
            globals.logger.warning(f"Cancel timeout job : {timeout_job.queue['PROCESS_ID']}")
            timeout_job.job_executor.raise_cancel_timeout_exception()

            # 実行中jobからcancel timeoutしたjobに移管する
            # （何らかの要因でcancel threadが応答しなくなり新たなjob起動できなくなる状態を防ぐため）
            # Transfer from a running job to a job that has canceled timeout
            # (to prevent a situation where the cancel thread becomes unresponsive for some reason and cannot start a new job)
            sub_process_mgr.transfer_cancel_timeout(timeout_job)

            # cancel timeoutした件数を取得する / Get the number of cancel timeouts
            count_cancel_timeout = sub_process_mgr.count_cancel_timeout()
            globals.logger.debug(f"cancel timeout job count: {count_cancel_timeout}")

            # cancel timeoutした件数が一定値を超えた場合、sub processを終了する（メモリ圧迫の予防のため）
            # If the number of cancel timeouts exceeds a certain value, terminate the sub process (to prevent memory pressure)
            if count_cancel_timeout >= job_manager_config.SUB_PROCESS_MAX_CANCEL_TIMEOUT:
                globals.logger.warning("Restarting process due to too many cancellation timeouts")
                sub_process_mgr.set_terminating()


def get_start_interval_jobs(sub_process_mgr: SubProcessManager):
    """開始するinterval jobを取得 / Get interval job to start

    Args:
        sub_process_mgr (SubProcessManager): _description_

    Returns:
        list: job queue
    """
    running_jobs = sub_process_mgr.get_running_job_queue()
    start_jobs = sub_process_mgr.get_timing_of_interval_job_start()[:(job_manager_config.SUB_PROCESS_MAX_JOBS - len(running_jobs))]

    ret_queue = []
    for job in start_jobs:
        sub_process_mgr.set_next_interval_job_start_time(job)
        ret_queue.append({
            "PROCESS_ID": ulid.new().str,
            "PROCESS_KIND": job,
            "PROCESS_EXEC_ID": None,
            "ORGANIZATION_ID": None,
            "WORKSPACE_ID": None,
            "ENABLE_BATCH": False,
            "BATCH_PERIOD_SECONDS": None,
            "BATCH_COUNT_LIMIT": None,
            "BATCH_GROUP_KEY": None,
            "LAST_UPDATE_TIMESTAMP": datetime.datetime.now(),
            "LAST_UPDATE_USER": None
        })
    return ret_queue


def get_queue(conn, running_job_queue: list, get_queue_len: int):
    """queueの取得 / Get queue

    Args:
        conn (_type_): DB connection
        running_job_queue (list): 実行中のjobのqueue / queue of running jobs
        get_queue_len(int): queueから取得する最大数 / Maximum number to retrieve from queue

    Returns:
        tuple[list, list]: job起動対象のqueue情報, batchで処理するqueue情報
    """
    # 実行中のjobをPROCESS_KINDでグルーピング / Group running jobs by PROCESS_KIND
    running_kind_grouping = queue_grouping(running_job_queue, "PROCESS_KIND", "undefined")
    # 実行してないPROCESS_KINDの情報を0件で追加 / Added 0 information about PROCESS_KIND that is not being executed.
    running_kind_grouping.update({key: [] for key in job_manager_config.JOBS.keys() if key not in running_kind_grouping})

    # queueの内容をDBから取得
    #   lock失敗などで読み捨てになる可能性を考慮し最大の2倍の件数を取得
    # Obtain the contents of the queue from the DB
    #   taking into account the possibility of the read being discarded due to lock failure, etc., obtain twice the maximum number of items
    with conn.cursor() as cursor:
        cursor.execute(
            queries_process_queue.SQL_QUERY_PROCESS,
            {"job_max_count": get_queue_len * 2}
        )
        queue = cursor.fetchall()

    # queueの情報をorganization_idでグルーピングし、last_update_timestampでソート
    # Group queue information by organization_id and sort by last_update_timestamp
    queue_org_grouping = queue_grouping(queue, "ORGANIZATION_ID", "_platform", "LAST_UPDATE_TIMESTAMP")

    # 実行中のjobをorganization_idでグルーピング / Group running jobs by organization_id
    running_org_grouping = queue_grouping(running_job_queue, "ORGANIZATION_ID", "_platform")
    # 実行してないorganization_idの情報を0件で追加 / Add information of organization_id that is not executed with 0 items
    running_org_grouping.update({key: [] for key in queue_org_grouping.keys() if key not in running_org_grouping})

    # return値の配列を初期化 / Initialize return value array
    ret_queue = []
    ret_batch_queue = []

    # 処理済みのbatch groupは処理対象外にするための判定用のディクショナリ
    # A dictionary for determining whether to exclude processed batch groups from processing.
    processing_batch_group = {}

    # queueが残っているもしくは取得job数が上限値未満の場合繰り返す
    # Repeat if the maximum number of jobs to be retrieved from the queue remains or the number of jobs to be retrieved is less than the upper limit.
    while len(queue_org_grouping) > 0 and len(ret_queue) < get_queue_len:
        # 次に処理をするorganization_idを決定する
        #   実行中または起動対象のjobの総件数の昇順
        #   last_update_timestampの昇順
        #   乱数の昇順（特定のorganization_idが有利にならないように）
        # Determine the organization_id to process next
        #   Ascending order of total number of jobs being executed or started
        #   Ascending order of last_update_timestamp
        #   Ascending random numbers (so that no particular organization_id has an advantage)
        next_organization_id = sorted(
            [{
                "organization_id": organization_id,
                "job_count": len(running_org_grouping[organization_id]),
                "last_update_timestamp": queue_org_grouping[organization_id][0]['LAST_UPDATE_TIMESTAMP'],
                "random": random.randrange(999999),
            } for organization_id in queue_org_grouping.keys()],
            key=lambda x: (x['job_count'], x['last_update_timestamp'], x['random'])
        )[0]['organization_id']

        # 次に処理するqueue情報 / queue to process next
        next_process_id = queue_org_grouping[next_organization_id][0]['PROCESS_ID']
        next_process_kind = queue_org_grouping[next_organization_id][0]['PROCESS_KIND']
        next_process = queue_org_grouping[next_organization_id][0]

        # 処理対象のものかの判定結果格納用
        is_processable = True
        # batchで処理するqueue情報
        batch_queue = None

        # 次に処理するPROCESS_KINDが既にmaxの同時実行数を超えている場合は処理対象外にする
        # If the next PROCESS_KIND to be processed already exceeds the max number of concurrent executions, it will be excluded from processing.
        if len(running_kind_grouping[next_process_kind]) >= job_manager_config.JOBS[next_process_kind]['max_job_per_process']:
            is_processable = False

        # 処理済みのbatch groupは処理対象外にする
        # Exclude processed batch groups from the list
        if is_processable and next_process['ENABLE_BATCH']:
            batch_group_dict_key = next_process_kind + "\t" + next_process['ORGANIZATION_ID'] + "\t" + next_process['WORKSPACE_ID'] + '\t' + next_process['BATCH_GROUP_KEY']
            if batch_group_dict_key in processing_batch_group:
                is_processable = False
            else:
                processing_batch_group[batch_group_dict_key] = True

        if is_processable:
            try:
                # queueをLockする / Lock the queue
                with conn.cursor() as cursor:
                    cursor.execute(queries_process_queue.SQL_QUERY_PROCESS_LOCK, {"process_id": next_process_id})
                    is_processable = cursor.fetchone() is not None
            except pymysql.err.OperationalError as err:
                # Lock Error
                is_processable = False
                globals.logger.debug(err)
            except Exception as err:
                is_processable = False
                globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

        if is_processable and next_process['ENABLE_BATCH']:
            # batch送信の場合、batchで一気に送るqueueを全てLockする
            # In the case of batch sending, acquire and lock all queues to be sent at once in the batch.
            # ただし、next_process_idのものは必ず実行対象にするので除外して以外のものを取得する
            try:
                with conn.cursor() as cursor:
                    cursor.execute(
                        queries_process_queue.SQL_QUERY_FETCH_BATCH_PROCESS,
                        {
                            "organization_id": next_organization_id,
                            "workspace_id": next_process["WORKSPACE_ID"],
                            "process_kind": next_process["PROCESS_KIND"],
                            "batch_group_key": next_process["BATCH_GROUP_KEY"],
                            "exclude_process_id": next_process_id
                        })
                    # 処理対象件数-1だけfetchする(1件はnext_process_idのものがあるため)
                    batch_queue_add = cursor.fetchmany(next_process["BATCH_COUNT_LIMIT"] - 1)
                    
                    # next_processと追加分を合わせてbatch_queueとする
                    batch_queue = [next_process] + [r for r in batch_queue_add]

            except pymysql.err.OperationalError as err:
                # Lock Error
                is_processable = False
                globals.logger.debug(err)
            except Exception as err:
                is_processable = False
                globals.logger.error(f'{err}\n---- stack trace ----\n{traceback.format_exc()}')

        if is_processable:
            # queueのlockに成功した場合、起動対象としてreturn配列に追加
            # If the queue is successfully locked, add it to the return array as a startup target
            ret_queue.append(queue_org_grouping[next_organization_id][0])
            ret_batch_queue.append(batch_queue)
            running_kind_grouping[next_process_kind].append(queue_org_grouping[next_organization_id][0])
            running_org_grouping[next_organization_id].append(queue_org_grouping[next_organization_id][0])

        # 次のqueue情報に進むためqueueの配列から削除 / Delete from queue array to proceed to next queue information
        del queue_org_grouping[next_organization_id][0]
        if len(queue_org_grouping[next_organization_id]) == 0:
            # 0件になったらorganization_idのキーも消す / When the number becomes 0, delete the organization_id key as well.
            del queue_org_grouping[next_organization_id]

    return ret_queue, ret_batch_queue


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


def delete_queue(conn, queue_row: dict, batch_queue_rows: list[dict] | None):
    """queueのレコード削除 / Delete queue record

    Args:
        conn (_type_): db connection
        queue_row (dict): 削除対象 / Target for deletion
        batch_queue_rows (list[dict] | None) 削除対象 / Target for deletion
    """
    with conn.cursor() as cursor:
        cursor.execute(queries_process_queue.SQL_QUERY_PROCESS_DELETE, {"process_id": queue_row["PROCESS_ID"]})
        if batch_queue_rows is not None:
            for batch_queue_row in batch_queue_rows:
                cursor.execute(queries_process_queue.SQL_QUERY_PROCESS_DELETE, {"process_id": batch_queue_row["PROCESS_ID"]})


def lock_queue_batch_group(conn, queue_row: dict):
    """queueのbatch_groupのロックする

    Args:
        conn (_type_): db connection
        queue_row (dict): ロック対象
    """
    sql_parameter = {
        "process_kind": queue_row["PROCESS_KIND"],
        "organization_id": queue_row["ORGANIZATION_ID"],
        "workspace_id": queue_row["WORKSPACE_ID"],
        "group_key": queue_row["BATCH_GROUP_KEY"],
        "batch_period_seconds": queue_row["BATCH_PERIOD_SECONDS"]
    }

    with conn.cursor() as cursor:
        cursor.execute(queries_process_queue.SQL_UPDATE_PROCESS_QUEUE_LOCK, sql_parameter)
        if cursor.rowcount == 0:
            # updateの結果が0件だったらINSERTを試みる
            try:
                cursor.execute(queries_process_queue.SQL_INSERT_PROCESS_QUEUE_LOCK, sql_parameter)
            except pymysql.err.IntegrityError:
                # INSERTした際に偶然ダブって一意誓約違反なら、レコードはもうあるはずなので更新する
                cursor.execute(queries_process_queue.SQL_UPDATE_PROCESS_QUEUE_LOCK, sql_parameter)


def job_manager_process_sigterm_handler(signum, frame):
    """processへの終了指示（SIGTERMシグナル受信） / Termination instruction to process (sigterm signal reception)

    Args:
        signum (_type_): signal handler parameter
        frame (_type_): signal handler parameter
    """
    global process_terminate
    global process_sigterm
    process_terminate = True
    process_sigterm = True
    globals.logger.info('Receved signal : SIGTERM')


def job_manager_process_sigint_handler(signum, frame):
    """processへの終了指示（SIGINTシグナル受信） / Termination instruction to process (sigint signal reception)

    Args:
        signum (_type_): signal handler parameter
        frame (_type_): signal handler parameter
    """
    global process_terminate
    global process_sigint
    process_terminate = True
    process_sigint = True
    globals.logger.info('Receved signal : SIGINT')


if __name__ == '__main__':
    # main processメイン処理
    job_manager_main_process()
