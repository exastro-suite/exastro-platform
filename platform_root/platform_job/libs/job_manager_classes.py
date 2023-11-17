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

import job_manager_config
import globals
from jobs.BaseJobExecutor import BaseJobExecutor


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
    def __init__(self, array_index, sub_processes_ids, sub_termination_req_flags, sub_running_job_counts, force_upd_sts_exec_pid):
        """constructor 

        Args:
            array_index (int): 共有メモリ配列の当該processのindex / index of the process in the shared memory array
            sub_processes_ids (_type_): sub processのprocess id / process id of sub process
            sub_termination_req_flags (_type_): sub processへの終了要求のフラグ / Flag for termination request to sub process
            sub_running_job_counts (_type_): sub process実行job数 / Number of sub process execution jobs
            force_upd_sts_exec_pid (_type_): force status updateを行うsub processのprocess id / process id of sub process that performs force status update
        """
        self.__arr_idx = array_index
        self.__sub_processes_ids = sub_processes_ids
        self.__sub_termination_req_flags = sub_termination_req_flags
        self.__sub_running_job_counts = sub_running_job_counts
        self.__sub_processes_ids[self.__arr_idx] = os.getpid()
        self.__jobs: list[Job] = []
        self.__cancel_timeout_jobs: list[Job] = []
        self.interval_db_reconect = IntervalTiming(job_manager_config.SUB_PROCESS_DB_RECONNECT_INTERVAL_SECONDS)
        self.interval_db_health_check = IntervalTiming(job_manager_config.SUB_PROCESS_DB_HEALTH_CHECK_INTERVAL_SECONDS)
        self.__force_upd_sts_exec_pid = force_upd_sts_exec_pid
        self.__interval_force_upd_sts = IntervalTiming(job_manager_config.FORCE_UPDATE_STATUS_INTERVAL_SECONDS)


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

        # 実行中のjob数を共有メモリに書き込む / Write the number of running jobs to shared memory
        self.__sub_running_job_counts[self.__arr_idx] = len(self.__jobs)

    def can_launch_job(self):
        """jobが起動可能か判定する / Determine if job can be started

        Returns:
            bool: True : 起動可能 / can launch
        """
        if self.__sub_running_job_counts[self.__arr_idx] >= job_manager_config.SUB_PROCESS_MAX_JOBS:
            # processのjob数が上限値に達している場合、起動不可
            # If the number of jobs in the process reaches the upper limit, it cannot be started.
            return False

        if sum(self.__sub_running_job_counts) >= (job_manager_config.SUB_PROCESS_MAX_JOBS * job_manager_config.SUB_PROCESS_ACCEPTABLE):
            # sub process全体のタスク数が上限値に達している場合、起動不可
            # If the number of jobs in the entire sub process has reached the upper limit, it cannot be started.
            return False

        return True

    def get_running_job_queue(self):
        """実行中jobのqueue情報を返す / Returns queue information of the running job

        Returns:
            list: list of queue
        """
        return [job.queue for job in self.__jobs]

    def countup_job_count(self):
        """実行中のjob数をcount upする / Count up the number of running jobs

        Returns:
            bool: True: 成功 / succeed
        """
        if self.__sub_running_job_counts[self.__arr_idx] >= job_manager_config.SUB_PROCESS_MAX_JOBS:
            # processのjob数が上限値に達しているため失敗
            # Failed because the number of jobs in process has reached the upper limit.
            return False

        # 全sub processのカウンターをロックする / Lock counters of all sub processes
        with self.__sub_running_job_counts.get_lock():
            if sum(self.__sub_running_job_counts) >= (job_manager_config.SUB_PROCESS_MAX_JOBS * job_manager_config.SUB_PROCESS_ACCEPTABLE):
                # 全processのjob数合計が上限値に達しているため失敗 / Failed because the total number of jobs for all processes has reached the upper limit.
                return False

            self.__sub_running_job_counts[self.__arr_idx] += 1
            return True

    def countdown_job_count(self):
        """実行中のjob数をcount downする / Count down the number of running jobs
        """
        self.__sub_running_job_counts[self.__arr_idx] -= 1

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
        self.__sub_termination_req_flags[self.__arr_idx] = 1

    def is_timing_of_force_update_status(self):
        """強制ステータス更新処理を起動するタイミングか判定する / Determine when it is time to start forced status update processing

        Returns:
            bool: True : 実行するタイミングである / It's time to execute
        """
        if self.__interval_force_upd_sts.is_passed():
            # 強制ステータス更新処理は複数のプロセスで動かす必要は無いので、指定されたプロセスの場合のみTrueを返す
            # Forced status update processing does not need to run in multiple processes, so it returns True only for the specified process.
            if os.getpid() == self.__force_upd_sts_exec_pid.value:
                return True
            else:
                return False


class SubProcessParameter():
    """sub process起動パラメータclass / sub process startup parameters class
        SubProcessesManager.generate_sub_process_parameterメソッドでinstanceを生成すること
        Generate an instance using the SubProcessesManager.generate_sub_process_parameter method
    """
    def __init__(self, array_index, sub_processes_ids, sub_termination_req_flags, sub_running_job_counts, force_upd_sts_exec_pid):
        """constructor

        Args:
            array_index (int): 共有メモリ配列の当該processのindex / index of the process in the shared memory array
            sub_processes_ids (_type_): sub processのprocess id / process id of sub process
            sub_termination_req_flags (_type_): sub processへの終了要求のフラグ / Flag for termination request to sub process
            sub_running_job_counts (_type_): sub process実行job数 / Number of sub process execution jobs
            force_upd_sts_exec_pid (_type_): force update statusを行うsub processのprocess id / process id of sub process that performs force update status
        """
        self.__arr_idx = array_index
        self.__sub_processes_ids = sub_processes_ids
        self.__sub_termination_req_flags = sub_termination_req_flags
        self.__sub_running_job_counts = sub_running_job_counts
        self.__force_upd_sts_exec_pid = force_upd_sts_exec_pid

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
            self.__sub_running_job_counts,
            self.__force_upd_sts_exec_pid
        )


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
        self.__sub_processes: list[multiprocessing.Process] = [None] * (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2)
        self.__sub_processe_ids = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))
        self.__sub_termination_req_times: list[datetime.datetime] = [None] * (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2)
        self.__sub_termination_req_flags = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))
        self.__sub_running_job_counts = multiprocessing.Array(ctypes.c_int, (job_manager_config.SUB_PROCESS_ACCEPTABLE * 2))
        self.__force_upd_sts_exec_pid = multiprocessing.Value(ctypes.c_int)
        self.__force_upd_sts_exec_pid.value = -1

    def refresh_sub_process_status(self):
        """全sub processの状態を更新する / Update the status of all sub processes
        """
        # 強制ステータス更新を実行するprocessの変更用の変数 / Variable for changing process that executes forced status update
        take_turns_force_upd_sts = self.__force_upd_sts_exec_pid.value == -1
        take_turns_force_upd_sts_pid = -1

        # 全processを処理 / Process all processes
        for i, process in enumerate(self.__sub_processes):
            if process is not None:
                if process.exitcode is not None:
                    # processが終了している場合 / If process has ended
                    globals.logger.info(f"EXITED sub process: {process.pid:05x} exitcode={process.exitcode}")

                    # 強制ステータス更新を実行するprocessが終了した場合、他のprocessに引き継ぐ必要がある
                    # If the process that executes the forced status update ends, it must be taken over by another process.
                    if process.pid == self.__force_upd_sts_exec_pid.value:
                        take_turns_force_upd_sts = True

                    # 管理情報を初期化する / Initialize management information
                    self.__sub_processes[i] = None
                    self.__sub_termination_req_times[i] = None
                    self.__sub_termination_req_flags[i] = 0
                    self.__sub_running_job_counts[i] = 0
                else:
                    # 実行中のprocessを強制ステータス更新を実行するprocessの候補として保持する
                    # Keep the running process as a candidate for executing forced status update
                    take_turns_force_upd_sts_pid = process.pid

        if take_turns_force_upd_sts:
            # 強制ステータス更新を実行するprocessを引き継がなければいけない場合、候補としていたprocessに書き換える
            # If it is necessary to take over the process that executes the forced status update, rewrite it to the candidate process.
            self.__force_upd_sts_exec_pid.value = take_turns_force_upd_sts_pid
            globals.logger.info(f"Take Turns force_upd_sts_exec_pid: {self.__force_upd_sts_exec_pid.value:05x}")


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
                self.__sub_running_job_counts,
                self.__force_upd_sts_exec_pid,
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
        self.__sub_running_job_counts[i] = 0
        return True

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
                    globals.logger.debug(f'TERMINATION REQUEST sub process:{self.__sub_processes[i].pid:05x}')
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
