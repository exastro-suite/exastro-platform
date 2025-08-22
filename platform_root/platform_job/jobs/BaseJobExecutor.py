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
import abc
import threading
import ctypes
import globals
import datetime
from libs.exceptions import JobTimeoutException
import job_manager_config


class BaseJobExecutor(metaclass=abc.ABCMeta):
    """job実行classの基底class / Base class of job execution class

    Args:
        metaclass (_type_, optional): _description_. Defaults to abc.ABCMeta.
    """
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        """constructor
        """
        self.queue = queue
        self.batch_queue = batch_queue
        self.job_config = job_manager_config.JOBS[self.queue.get('PROCESS_KIND')]
        self.__job_info = self.__format_job_info(queue)

        if self.batch_queue is not None:
            self.batch_results = [None] * len(batch_queue)
        else:
            self.batch_results = [None]

        # スレッドidの初期化 / Initializing thread id
        self.__thread_id = None
        self.__cancel_thread_id = None

    def execute_base(self):
        """job実行 / job execution
        """
        globals.logger.info(f"START Job - {self.__job_info}")
        if self.batch_queue is not None:
            globals.logger.info(f"batch count: {len(self.batch_queue)} / exec_id: [{','.join([queue.get('PROCESS_EXEC_ID') for queue in self.batch_queue])}]")

        start_time = datetime.datetime.now()
        try:
            self.__thread_id = ctypes.c_long(threading.get_ident())
            result = self.execute()

            if self.batch_queue is not None:
                # BATCHの個別結果の出力
                self.__output_batch_result_log()

            if result:
                globals.logger.info(f"SUCCEED Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            else:
                globals.logger.warning(f"FAILED Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            return result
        except Exception:
            globals.logger.error(f"FAILED Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            return False
            
    def cancel_base(self):
        """job cancel実行 / job cancel execution
        """
        globals.logger.info(f"START Cancel Job - {self.__job_info}")
        start_time = datetime.datetime.now()
        try:
            self.__cancel_thread_id = ctypes.c_long(threading.get_ident())
            result = self.cancel()

            if self.batch_queue is not None:
                # BATCHの個別結果の出力
                self.__output_batch_result_log()

            if result:
                globals.logger.info(f"SUCCEED Cancel Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            else:
                globals.logger.warning(f"FAILED Cancel Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            return result
        except Exception:
            globals.logger.error(f"FAILED Cancel Job - {self.__job_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            return False

    def set_batch_result(self, index: int, result: bool):
        """BATCH処理の個別結果の格納

        Args:
            index (int): batch_queueのindex
            result (bool): 処理結果
        """
        self.batch_results[index] = result

    def raise_timeout_exception(self):
        """job実行の中止(例外発行)
            Canceling job execution (raise exception)

        Returns:
            bool: True: success
        """
        rlt = ctypes.pythonapi.PyThreadState_SetAsyncExc(
            self.__thread_id,
            ctypes.py_object(JobTimeoutException))
        globals.logger.debug(f"Raise JobTimeoutException execute_thread id:[{self.__thread_id}] result:[{rlt}]")
        return rlt == 1

    def raise_cancel_timeout_exception(self):
        """job cancel実行の中止(例外発行)
            job cancel Canceling execution (raise exception)

        Returns:
            bool: True: success
        """
        rlt = ctypes.pythonapi.PyThreadState_SetAsyncExc(
            self.__cancel_thread_id,
            ctypes.py_object(JobTimeoutException))
        globals.logger.debug(f"Raise JobTimeoutException cancel_thread id:[{self.__cancel_thread_id}] result:[{rlt}]")
        return rlt == 1

    def __output_batch_result_log(self):
        """batchの個別の成否を出力
        """
        for index, queue in enumerate(self.batch_queue):
            if self.batch_results[index] is None:
                result = "Unknown"
            elif self.batch_results[index]:
                result = "Succeed"
            else:
                result = "Failed"

            job_info = self.__format_job_info(queue)
            globals.logger.info(f"batch item result({index}): {result} - {job_info}")

    def __format_job_info(self, queue):
        return (
            f"kind:[{queue.get('PROCESS_KIND')}] / exec_id:[{queue.get('PROCESS_EXEC_ID')}] / " +
            f"organization_id:[{queue.get('ORGANIZATION_ID')}] / workspace_id:[{queue.get('WORKSPACE_ID')}] / " +
            f"timestamp:[{queue.get('LAST_UPDATE_TIMESTAMP')}]")

    @abc.abstractmethod
    def execute(self):
        """job実行(継承先classでoverrideすること)
            Execute job (override with inherited class)

        Raises:
            NotImplementedError: _description_
        """
        raise NotImplementedError()

    @abc.abstractmethod
    def cancel(self):
        """job cancel実行(継承先classでoverrideすること)
            Execute cancel job (override with inherited class)

        Raises:
            NotImplementedError: _description_
        """
        raise NotImplementedError()

    @classmethod
    @abc.abstractmethod
    def force_update_status(cls):
        """強制ステータス更新(継承先classでoverrideすること)
            Forced status update (override in inherited class)

        Raises:
            NotImplementedError: _description_
        """
        raise NotImplementedError()
