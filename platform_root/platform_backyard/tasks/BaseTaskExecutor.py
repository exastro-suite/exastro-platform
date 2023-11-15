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

from libs.exceptions import TaskTimeoutException


class BaseTaskExecutor(metaclass=abc.ABCMeta):
    """task実行classの基底class / Base class of task execution class

    Args:
        metaclass (_type_, optional): _description_. Defaults to abc.ABCMeta.
    """
    def __init__(self):
        """constructor
        """
        # スレッドidの初期化 / Initializing thread id
        self.__thread_id = None
        self.__cancel_thread_id = None

    def execute_base(self):
        """task実行 / task execution
        """
        self.__thread_id = ctypes.c_long(threading.get_ident())
        self.execute()

    def cancel_base(self):
        """task cancel実行 / task cancel execution
        """
        self.__cancel_thread_id = ctypes.c_long(threading.get_ident())
        self.cancel()

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
    def force_update_status_failed(cls):
        """強制ステータス更新(継承先classでoverrideすること)
            Forced status update (override in inherited class)

        Raises:
            NotImplementedError: _description_
        """
        raise NotImplementedError()
