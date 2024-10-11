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
import os
import ctypes
import datetime
import multiprocessing
import threading
import random

import job_manager_config
import globals
from jobs.BaseJobExecutor import BaseJobExecutor
from contextlib import closing
from common_library.common.db import DBconnector
from common_library.common import bl_common_service

class Job():
    """job管理class / job management class
    """
    def __init__(self, queue: dict, thread: threading.Thread, job_executor: BaseJobExecutor):
        """constructor

        Args:
            queue (dict): queue record
            thread (threading.Thread): job実行thread / job execution thread
            job_executor (BaseJobExecutor): job実行class instance / job execution class instance
        """
        # queue record
        self.queue = queue
        # job実行class instance / job execution class instance
        self.job_executor = job_executor
        # job実行thread / job execution thread
        self.thread = thread
        # job実行timeout時刻 / job execution timeout time
        self.timeout = datetime.datetime.now() + datetime.timedelta(seconds=job_manager_config.JOBS[queue['PROCESS_KIND']]['timeout_seconds'])
        # job cancel thread
        self.cancel_thread = None
        # job cancel timeout時刻 / job cancel timeout time
        self.cancel_timeout = None

    def __eq__(self, other):
        """jobの等価比較 / Equality comparison of jobs

        Args:
            other (Job): 比較対象 / targets for comparison

        Returns:
            bool: 比較結果 / Comparison result
        """
        return self.queue == other.queue


class SubProcessManager():
    """sub process管理class / sub process management class
        SubProcessParameter.genarate_sub_process_managerメソッドでinstanceを生成すること
        Generate an instance using the SubProcessParameter.genarate_sub_process_manager method
    """
    def __init__(
        self,
        array_index,
        sub_processes_ids,
        sub_termination_req_flags,
        sub_terminated_flags,
        interval_job_kinds,
        interval_job_exec_pids,
        interval_job_exec_times,
        ):
        """constructor

        Args:
            array_index (int): 共有メモリ配列の当該processのindex / index of the process in the shared memory array
            sub_processes_ids (_type_): sub processのprocess id / process id of sub process
            sub_termination_req_flags (_type_): sub processへの終了要求のフラグ / Flag for termination request to sub process
            sub_terminated_flags (_type_): sub process終了済みのフラグ / Sub process completed flag
            force_upd_sts_exec_pid (_type_): force status updateを行うsub processのprocess id / process id of sub process that performs force status update
            force_upd_sts_exec_time (_type_): force update statusを行う時間 / Time to force update status
        """
        self.__arr_idx = array_index
        self.__sub_processes_ids = sub_processes_ids
        self.__sub_termination_req_flags = sub_termination_req_flags
        self.__sub_terminated_flags = sub_terminated_flags
        self.__sub_processes_ids[self.__arr_idx] = os.getpid()

        self.__interval_job_kinds = interval_job_kinds
        self.__interval_job_exec_pids = interval_job_exec_pids
        self.__interval_job_exec_times = interval_job_exec_times

        self.__jobs: list[Job] = []
        self.__cancel_timeout_jobs: list[Job] = []
        self.interval_db_reconect = IntervalTiming(job_manager_config.SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS)
        self.interval_db_health_check = IntervalTiming(job_manager_config.SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS)

    def is_sheard_variables_normal(self):
        """共有メモリの正常性確認 / Checking the health of shared memory
            共有メモリが他のsub processで上書きされていないかチェックする
            Check if shared memory is not overwritten by other sub processes

        Returns:
            bool: True: normal
        """
        return self.__sub_processes_ids[self.__arr_idx] == os.getpid()

    def is_process_continue(self):
        """processを継続するかの判定 / Determining whether to continue the process

        Returns:
            bool: True : continue
        """
        return self.__sub_termination_req_flags[self.__arr_idx] == 0 or len(self.__jobs) > 0

    def refresh_job_status(self):
        """jobの状態で管理情報を更新する / Update management information in job status
        """
        # 配列を後ろから処理（deleteするため) / Process the array from behind (to delete)
        for i in range(len(self.__jobs) - 1, -1, -1):
            if self.__jobs[i].thread.is_alive():
                # jobが実行中の場合は何もしない / Do nothing if job is running
                continue

            if self.__jobs[i].cancel_thread is not None and self.__jobs[i].cancel_thread.is_alive():
                # job cancelが実行中の場合は何もしない / Do nothing if job cancel is running
                continue

            # jobがexecuteもcancel実行中でない場合は削除する / Delete if job is not executing or canceling
            del self.__jobs[i]

    def can_launch_job(self):
        """jobが起動可能か判定する / Determine if job can be started

        Returns:
            bool: True : 起動可能 / can launch
        """
        if len(self.__jobs) >= job_manager_config.SUB_PROCESS_MAX_JOBS:
            # processのjob数が上限値に達している場合、起動不可
            # If the number of jobs in the process reaches the upper limit, it cannot be started.
            return False

        return True

    def get_running_job_queue(self):
        """実行中jobのqueue情報を返す / Returns queue information of the running job

        Returns:
            list: list of queue
        """
        return [job.queue for job in self.__jobs]

    def append_job(self, queue: dict, thread: threading.Thread, job_executor: BaseJobExecutor):
        """Jobを追加する / Add a job

        Args:
            queue (dict): queue record
            thread (threading.Thread): job実行thread / job execution thread
            job_executor (BaseJobExecutor): job実行class instance / job execution class instance
        """
        self.__jobs.append(Job(queue, thread, job_executor))

    def get_timeout_jobs(self):
        """timeout時間になったjobを取得する / Get the job whose timeout time has reached

        Returns:
            list: timeout job list
        """
        return [job for job in self.__jobs if datetime.datetime.now() >= job.timeout]

    def get_all_jobs(self):
        """全てのjobを取得する

        Returns:
            list: job list
        """
        return self.__jobs

    def get_cancel_timeout_jobs(self):
        """cancel timeout時間になっているjobを取得する / Get the job whose cancel timeout has expired

        Returns:
            list: cancel timeout job list
        """
        return [job for job in self.__jobs if job.cancel_timeout is not None and datetime.datetime.now() >= job.cancel_timeout]

    def transfer_cancel_timeout(self, cancel_timeout_job: Job):
        """指定jobをjob管理対象から除外する / Exclude the specified job from job management

        Args:
            cancel_timeout_job (Job): 対象job / Target job
        """
        job_index = [i for i, job in enumerate(self.__jobs) if job == cancel_timeout_job]
        if len(job_index) > 0:
            self.__cancel_timeout_jobs.append(self.__jobs[job_index[0]])
            del self.__jobs[job_index[0]]

    def count_cancel_timeout(self):
        """cancel timeoutで管理対象外に置いた件数を取得する / Get the number of items left unmanaged by cancel timeout

        Returns:
            int : 件数 / number
        """
        return len(self.__cancel_timeout_jobs)

    def set_terminating(self):
        """sub processを終了要求状態にする / Put sub process in termination request state
        """
        globals.logger.info('Termination request sub process')
        self.__sub_termination_req_flags[self.__arr_idx] = 1

    def set_terminated_flag(self):
        """sub processが終了したフラグを設定 / Set flag that sub process has finished
        """
        self.__sub_terminated_flags[self.__arr_idx] = 1

    def get_timing_of_interval_job_start(self):
        """起動するタイミングのjob kind取得 / Get job kind at start time

        Returns:
            list: job kinds
        """
        # jobの開始予定時間の早い順に返す
        return [job_kind_info['job_kind'] for job_kind_info in sorted(
            [{
                "job_kind": job_kind,
                "start_time": self.get_next_interval_job_start_time(job_kind),
            } for job_kind in self.__interval_job_kinds if self.is_timing_of_interval_job_start(job_kind)],
            key=lambda x: x['start_time'])]

    def is_timing_of_interval_job_start(self, job_kind):
        """Jobを起動するタイミングか判定する / Determine when it is time to start a job

        Args:
            job_kind (str): job kind

        Returns:
            bool: True : 実行するタイミングである / It's time to execute
        """
        job_index = self.__interval_job_kinds.index(job_kind)
        if self.__interval_job_exec_pids[job_index] != os.getpid():
            return False
        if self.__interval_job_exec_times[job_index] <= datetime.datetime.timestamp(datetime.datetime.now()):
            return True
        else:
            return False

    def get_next_interval_job_start_time(self, job_kind):
        """Jobを起動する時間 / Time to start the Job

        Args:
            job_kind (str): job kind

        Returns:
            datetime.datetime: Time to start the Job
        """
        job_index = self.__interval_job_kinds.index(job_kind)
        return  datetime.datetime.fromtimestamp(self.__interval_job_exec_times[job_index])

    def set_next_interval_job_start_time(self, job_kind):
        """interval jobが次に開始する時間を設定する / interval Set the next time the job starts

        Args:
            job_kind (str): job kind
        """
        job_index = self.__interval_job_kinds.index(job_kind)
        # job_triggerがinterval_timerの場合
        if job_manager_config.JOBS[job_kind]['job_trigger'] == "interval_timer":
            self.__interval_job_exec_times[job_index] = datetime.datetime.timestamp(
                datetime.datetime.now() + datetime.timedelta(seconds=job_manager_config.JOBS[job_kind]['job_interval']))

        # job_triggerがdailyの場合
        if job_manager_config.JOBS[job_kind]['job_trigger'] == "daily":
            # M_SYSTEM_CONFIGから実行時間を取得
            with closing(DBconnector().connect_platformdb()) as conn:
                data = bl_common_service.settings_system_config_list(conn, job_manager_config.JOBS[job_kind]['job_exec_time_key'])
                exec_time = data["value"]

            str_exec_date = datetime.datetime.now().strftime('%Y-%m-%d') + " " + exec_time
            exec_date = datetime.datetime.strptime(str_exec_date, '%Y-%m-%d %H:%M')

            # 実施日時が現在時刻よりも過去である場合、翌日の日時にする
            if exec_date <= datetime.datetime.now():
                exec_date = exec_date + datetime.timedelta(days=1)

            self.__interval_job_exec_times[job_index] = datetime.datetime.timestamp(exec_date)

class SubProcessParameter():
    """sub process起動パラメータclass / sub process startup parameters class
        SubProcessesManager.generate_sub_process_parameterメソッドでinstanceを生成すること
        Generate an instance using the SubProcessesManager.generate_sub_process_parameter method
    """
    def __init__(
            self,
            array_index,
            sub_processes_ids,
            sub_termination_req_flags,
            sub_terminated_flags,
            interval_job_kinds,
            interval_job_exec_pids,
            interval_job_exec_times,
            ):
        """constructor

        Args:
            array_index (int): 共有メモリ配列の当該processのindex / index of the process in the shared memory array
            sub_processes_ids (_type_): sub processのprocess id / process id of sub process
            sub_termination_req_flags (_type_): sub processへの終了要求のフラグ / Flag for termination request to sub process
            sub_terminated_flags (_type_): sub process終了済みのフラグ / Sub process completed flag
            interval_job_kinds (list): interval実行のjob kind / job kind of interval execution
            interval_job_exec_pids (_type_): interval実行のjobを実行するprocess id / process id to run job for interval execution
            interval_job_exec_times (_type_): interval実行のjobを実行する時間 / Time to run job for interval execution
        """
        self.__arr_idx = array_index
        self.__sub_processes_ids = sub_processes_ids
        self.__sub_termination_req_flags = sub_termination_req_flags
        self.__sub_terminated_flags = sub_terminated_flags
        self.__interval_job_kinds = interval_job_kinds
        self.__interval_job_exec_pids = interval_job_exec_pids
        self.__interval_job_exec_times = interval_job_exec_times

    def get_array_index(self):
        """共有メモリの使用indexを返す / Return shared memory usage index

        Returns:
            int: index
        """
        return self.__arr_idx

    def genarate_sub_process_manager(self):
        """sub process管理class instance生成 / sub process management class instance generation

        Returns:
            SubProcessManager: sub process管理class instance / sub process management class instance
        """
        return SubProcessManager(
            self.__arr_idx,
            self.__sub_processes_ids,
            self.__sub_termination_req_flags,
            self.__sub_terminated_flags,
            self.__interval_job_kinds,
            self.__interval_job_exec_pids,
            self.__interval_job_exec_times
        )

    def set_interval_job_exec_times(self, interval_job_exec_times, target_job_kind):
        """internal_job_exec_timesを設定する(pytest用) / set internal_job_exec_times(for pytest)
        """
        for i, job_kind in enumerate(self.__interval_job_kinds):
            if target_job_kind == job_kind:
                self.__interval_job_exec_times[i] = interval_job_exec_times

class SubProcessesManager():
    """全sub process管理class / All sub process management classes
    """
    def __init__(self):
        """constructor
        """
        self.__sub_process_seq = 0
        # sub process variables
        #  ※エリアを2倍用意しているのは、sub processの切り替え(終了指示～終了)タイミングで一時的に超えるため
        #    The reason why the area is twice as large is because it is temporarily exceeded when the sub process is switched (from the end instruction to the end).

        #   process class instance
        self.__sub_processes: list[multiprocessing.Process] = [None] * (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2)
        #   sub process pid
        self.__sub_processe_ids = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))
        #   sub process terminate request time
        self.__sub_termination_req_times: list[datetime.datetime] = [None] * (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2)
        #   sub process terminate request flag : 0:not request/ 1:request
        self.__sub_termination_req_flags = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))
        #   sub process terminated
        self.__sub_terminated_flags = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))

        # interval_timer job variables
        self.__interval_job_kinds = [
            job_kind for job_kind, job_config in job_manager_config.JOBS.items() if job_config['job_trigger'] == "interval_timer" or job_config['job_trigger'] == "daily"]
        #   jobを実行するprocess id / process id to run the job
        self.__interval_job_exec_pids = multiprocessing.Array(ctypes.c_int, len(self.__interval_job_kinds))
        #   jobを実行する時間 / time to run job
        self.__interval_job_exec_times = multiprocessing.Array(ctypes.c_double, len(self.__interval_job_kinds))
        #   initialize interval_timer job variables
        for i, job_kind in enumerate(self.__interval_job_kinds):
            self.__interval_job_exec_pids[i] = -1

            # job_triggerがinterval_timerの場合
            if job_manager_config.JOBS[job_kind]['job_trigger'] == "interval_timer":
                self.__interval_job_exec_times[i] = (datetime.datetime.timestamp(
                    datetime.datetime.now() + datetime.timedelta(seconds=job_manager_config.JOBS[job_kind]['job_interval'])
                ))

            # job_triggerがdailyの場合
            if job_manager_config.JOBS[job_kind]['job_trigger'] == "daily":
                # M_SYSTEM_CONFIGから実行時間を取得
                with closing(DBconnector().connect_platformdb()) as conn:
                    data = bl_common_service.settings_system_config_list(conn, job_manager_config.JOBS[job_kind]['job_exec_time_key'])
                    exec_time = data["value"]

                str_exec_date = datetime.datetime.now().strftime('%Y-%m-%d') + " " + exec_time
                exec_date = datetime.datetime.strptime(str_exec_date, '%Y-%m-%d %H:%M')

                # 実施日時が現在時刻よりも過去である場合、翌日の日時にする
                if exec_date <= datetime.datetime.now():
                    exec_date = exec_date + datetime.timedelta(days=1)

                self.__interval_job_exec_times[i] = datetime.datetime.timestamp(exec_date)

    def refresh_sub_process_status(self):
        """全sub processの状態を更新する / Update the status of all sub processes
        """
        # 全processを処理 / Process all processes
        for i, process in enumerate(self.__sub_processes):
            if process is not None:
                if self.__sub_terminated_flags[i] == 1 and process.exitcode is None:
                    globals.logger.info(f"Kill sub process: {process.pid:06d}")
                    # プログラムが終了しているのにprocessが終了しないケース（たまに発生する）
                    process.kill()

                if process.exitcode is not None:
                    # processが終了している場合 / If process has ended
                    globals.logger.info(f"EXITED sub process: {process.pid:06d} exitcode={process.exitcode}")

                    # 管理情報を初期化する / Initialize management information
                    self.__sub_processes[i] = None
                    self.__sub_termination_req_times[i] = None
                    self.__sub_termination_req_flags[i] = 0
                    self.__sub_terminated_flags[i] = 0

    def is_enough_sub_process(self):
        """sub processの数が足りているかを返す / Returns whether there are enough sub processes

        Returns:
            bool: True : 足りている / enough
        """
        #
        return (job_manager_config.SUB_PROCESS_ACCEPTABLE <=
                len([i for i, process in enumerate(self.__sub_processes) if process is not None and self.__sub_termination_req_flags[i] == 0]))

    def generate_sub_process_parameter(self):
        """sub processのパラメータを生成する / Generate parameters for sub process

        Returns:
            SubProcessParameter: SubProcessParameter instance
        """
        # 共有メモリで未使用なindexを取得 / Get unused index in shared memory
        unused_array_indexes = self.__unused_array_indexes()
        if len(unused_array_indexes) <= 0:
            # 未使用な共有メモリがない場合Noneを返す / Return None if there is no unused shared memory
            return None
        else:
            return SubProcessParameter(
                unused_array_indexes[0],
                self.__sub_processe_ids,
                self.__sub_termination_req_flags,
                self.__sub_terminated_flags,
                self.__interval_job_kinds,
                self.__interval_job_exec_pids,
                self.__interval_job_exec_times,
            )

    def append_new_process(self, parameter: SubProcessParameter, process: multiprocessing.Process):
        """sub processを追加する / Add sub process

        Args:
            parameter (SubProcessParameter): SubProcessParameter instance
            process (multiprocessing.Process): process

        Returns:
            bool: Trueのみ / True only
        """
        # SEQ番号をカウントアップ（再起動が始まる時間をずらす対策）
        # Count up the SEQ number (measure to shift the time when restart starts)
        self.__sub_process_seq += 1

        i = parameter.get_array_index()
        self.__sub_processes[i] = process
        # sub processの終了要求時間を設定 / Set sub process termination request time
        self.__sub_termination_req_times[i] = datetime.datetime.now() + self.__terminatiton_req_timedelta()
        self.__sub_termination_req_flags[i] = 0
        self.__sub_terminated_flags[i] = 0
        return True

    def set_interval_job_execute_process(self):
        """interval job 実行processの設定 / interval job Execution process settings
        """
        # Job開始可能なprocess id / Job startable process id
        startable_pids = [
            self.__sub_processe_ids[i]
            for i, process in enumerate(self.__sub_processes)
                if process is not None and self.__sub_termination_req_flags[i] == 0
        ]
        if len(startable_pids) == 0:
            globals.logger.debug("No process that can start the job")
        else:
            for i, job_kind in enumerate(self.__interval_job_kinds):
                # 開始可能でないprocessに割り当たっていた場合、プロセスを切り替える
                # Switch the process if it is assigned to a process that cannot be started
                if self.__interval_job_exec_pids[i] not in startable_pids:
                    self.__interval_job_exec_pids[i] = startable_pids[random.randrange(len(startable_pids))]
                    globals.logger.debug(f"Set process to run interval job : job_kind:[{job_kind}] pid:[{self.__interval_job_exec_pids[i]}]")

    def __unused_array_indexes(self):
        """使用していない共有メモリのindexを返す / Return unused shared memory indexes

        Returns:
            list: unused shared memory indexes
        """
        return [i for i, process in enumerate(self.__sub_processes) if process is None]

    def __terminatiton_req_timedelta(self):
        """sub processの終了要求を行うまでのtimedeltaを返す
            Returns the timedelta until the sub process termination request is made

        Returns:
            datetime.timedelta: timedelta
        """
        #
        # 初回のsub process切り替えタイミングを平準化する時間を返す
        # Returns the time to level the initial sub process switching timing
        #
        if self.__sub_process_seq >= job_manager_config.SUB_PROCESS_ACCEPTABLE:
            # sub processがMAX数まで上がりきった後は、configで指定した間隔を返す
            # After the sub process reaches the MAX number, returns the interval specified in config.
            return datetime.timedelta(seconds=job_manager_config.SUB_PROCESS_TERMINATE_REQUEST_SECONDS)
        else:
            # sub processがMAX数まで上がりきるまでは、次の起動タイミングがずれるように時間をずらす
            # Until the number of sub processes reaches the maximum number, the next startup timing is shifted.
            return datetime.timedelta(
                seconds=self.__sub_process_seq * job_manager_config.SUB_PROCESS_TERMINATE_REQUEST_SECONDS / job_manager_config.SUB_PROCESS_ACCEPTABLE)

    def set_sub_process_termination_request(self, force: bool):
        """sub processに終了指示を行う / Instruct sub process to terminate

        Args:
            force (bool): True: all processes / False: time passed processes only
        """
        for i, termination_req_time in enumerate(self.__sub_termination_req_times):
            if not force:
                if termination_req_time is not None and datetime.datetime.now() >= termination_req_time:
                    globals.logger.info(f'Termination request sub process:{self.__sub_processes[i].pid:06d}')
                    self.__sub_termination_req_flags[i] = 1
            else:
                if termination_req_time is not None:
                    self.__sub_termination_req_flags[i] = 1

    def get_sub_processes(self):
        """sub processのリストを返す / return list of sub processes

        Returns:
            list: sub processes
        """
        return [process for process in self.__sub_processes if process is not None]

    def kill_oldest_sub_process(self):
        """一番古いsub processをkillする / kill the oldest sub process
        """
        sub_process_idx = self.__sub_termination_req_times.index(min(self.__sub_termination_req_times))
        self.__sub_processes[sub_process_idx].kill()


class IntervalTiming():
    """時間経過を管理するclass / A class that manages the passage of time
    """
    def __init__(self, interval_sec: int):
        """constructor

        Args:
            interval_sec (int): _description_
        """
        self.__interval_sec = interval_sec
        self.__set_next_time()

    def __set_next_time(self):
        """次の時間を設定する / Set next time
        """
        self.__next_time = datetime.datetime.now() + datetime.timedelta(seconds=self.__interval_sec)

    def is_passed(self):
        """時間が経過したか判定する / Determine if time has passed

        Returns:
            bool: True: time has passed
        """
        if datetime.datetime.now() >= self.__next_time:
            self.__set_next_time()
            return True
        else:
            return False
