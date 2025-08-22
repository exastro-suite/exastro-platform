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
import globals
from jobs.BaseJobExecutor import BaseJobExecutor


class TestExecuteStocker():
    executed_queue = []
    executed_batch_queue = []
    canceled_queue = []
    cancel_exited_queue = []
    call_force_update_status_count = 0

    @classmethod
    def initalize(cls):
        cls.executed_queue = []
        cls.executed_batch_queue = []
        cls.canceled_queue = []
        cls.cancel_exited_queue = []
        cls.call_force_update_status_count = 0

    @classmethod
    def append_executed_queue(cls, queue, batch_queue):
        cls.executed_queue.append(queue)
        cls.executed_batch_queue.append(batch_queue)

    @classmethod
    def append_canceled_queue(cls, queue):
        cls.canceled_queue.append(queue)

    @classmethod
    def append_cancel_exited_queue(cls, queue):
        cls.cancel_exited_queue.append(queue)

    @classmethod
    def call_force_update_status(cls):
        cls.call_force_update_status_count += 1


class TestNormalJobExecutor(BaseJobExecutor):
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        super().__init__(queue, batch_queue)

    def execute(self):
        globals.logger.debug("TestNormalJobExecutor.execute")
        TestExecuteStocker.append_executed_queue(self.queue, self.batch_queue)
        time.sleep(1.0)
        return True

    def cancel(self):
        try:
            globals.logger.debug("TestNormalJobExecutor.cancel")
            TestExecuteStocker.append_canceled_queue(self.queue)
            time.sleep(1.0)
            return True
        finally:
            TestExecuteStocker.append_cancel_exited_queue(self.queue)

    @classmethod
    def force_update_status(cls):
        TestExecuteStocker.call_force_update_status()


class TestTimeoutJobExecutor(BaseJobExecutor):
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        super().__init__(queue, batch_queue)

    def execute(self):
        globals.logger.debug("TestTimeoutJobExecutor.execute")
        TestExecuteStocker.append_executed_queue(self.queue, self.batch_queue)
        for i in range(30):
            time.sleep(1.0)
        return True

    def cancel(self):
        try:
            globals.logger.debug("TestTimeoutJobExecutor.cancel")
            TestExecuteStocker.append_canceled_queue(self.queue)
            time.sleep(1.0)
            return True
        finally:
            TestExecuteStocker.append_cancel_exited_queue(self.queue)

    @classmethod
    def force_update_status(cls):
        TestExecuteStocker.call_force_update_status()


class TestCancelTimeoutJobExecutor(BaseJobExecutor):
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        super().__init__(queue, batch_queue)

    def execute(self):
        globals.logger.debug("TestCancelTimeoutJobExecutor.execute")
        TestExecuteStocker.append_executed_queue(self.queue, self.batch_queue)
        for i in range(30):
            time.sleep(1.0)
        return True

    def cancel(self):
        globals.logger.debug("TestCancelTimeoutJobExecutor.cancel")
        TestExecuteStocker.append_canceled_queue(self.queue)
        try:
            for i in range(30):
                time.sleep(1.0)
            return True
        finally:
            TestExecuteStocker.append_cancel_exited_queue(self.queue)

    @classmethod
    def force_update_status(cls):
        TestExecuteStocker.call_force_update_status()
