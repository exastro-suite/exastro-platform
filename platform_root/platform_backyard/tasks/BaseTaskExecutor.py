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
from libs.exceptions import TaskTimeoutException


class BaseTaskExecutor(metaclass=abc.ABCMeta):
    """task実行classの基底class / Base class of task execution class

    Args:
        metaclass (_type_, optional): _description_. Defaults to abc.ABCMeta.
    """
    def __init__(self, queue: dict):
        """constructor
        """
        self.queue = queue
        self.__task_info = (
            f"kind:[{self.queue['PROCESS_KIND']}] / exec_id:[{self.queue['PROCESS_EXEC_ID']}] / " +
            f"organization_id:[{self.queue['ORGANIZATION_ID']}] / workspace_id:[{self.queue['WORKSPACE_ID']}] / " +
            f"timestamp:[{self.queue['LAST_UPDATE_TIMESTAMP']}]")

        # スレッドidの初期化 / Initializing thread id
        self.__thread_id = None
        self.__cancel_thread_id = None

    def execute_base(self):
        """task実行 / task execution
        """
        globals.logger.info(f"START Task - {self.__task_info}")
        start_time = datetime.datetime.now()
        try:
            self.__thread_id = ctypes.c_long(threading.get_ident())
            result = self.execute()
            
            if result:
                globals.logger.info(f"SUCCEED Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            else:
                globals.logger.warning(f"FAILED Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
        except Exception as err:
            globals.logger.error(f"FAILED Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            
    def cancel_base(self):
        """task cancel実行 / task cancel execution
        """
        globals.logger.info(f"START Cancel Task - {self.__task_info}")
        start_time = datetime.datetime.now()
        try:
            self.__cancel_thread_id = ctypes.c_long(threading.get_ident())
            result = self.cancel()
            if result:
                globals.logger.info(f"SUCCEED Cancel Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
            else:
                globals.logger.warning(f"FAILED Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")
        except Exception:
            globals.logger.error(f"FAILED Task - {self.__task_info} / elapsed:[{(datetime.datetime.now() - start_time).total_seconds()}]")

    def raise_timeout_exception(self):
        """task実行の中止(例外発行)
            Canceling task execution (raise exception)

        Returns:
            bool: True: success
        """
        rlt = ctypes.pythonapi.PyThreadState_SetAsyncExc(
            self.__thread_id,
            ctypes.py_object(TaskTimeoutException))
        return rlt == 1

    def raise_cancel_timeout_exception(self):
        """task cancel実行の中止(例外発行)
            task cancel Canceling execution (raise exception)

        Returns:
            bool: True: success
        """
        rlt = ctypes.pythonapi.PyThreadState_SetAsyncExc(
            self.__cancel_thread_id,
            ctypes.py_object(TaskTimeoutException))
        return rlt == 1

    @abc.abstractmethod
    def execute(self):
        """task実行(継承先classでoverrideすること)
            Execute task (override with inherited class)

        Raises:
            NotImplementedError: _description_
        """
        raise NotImplementedError()

    @abc.abstractmethod
    def cancel(self):
        """task cancel実行(継承先classでoverrideすること)
            Execute cancel task (override with inherited class)

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
