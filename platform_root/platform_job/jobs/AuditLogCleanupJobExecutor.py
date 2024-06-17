#   Copyright 2024 NEC Corporation
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
import globals
from importlib import import_module
import traceback

import job_manager_config
import job_manager_const

from jobs.BaseJobExecutor import BaseJobExecutor


class AuditLogCleanupJobExecutor(BaseJobExecutor):
    """監査ログ削除Job / Audit log cleanup

    Args:
        BaseJobExecutor (_type_): _description_
    """
    def __init__(self, queue: dict):
        """constructor

        Args:
            queue (dict): _description_
        """
        super().__init__(queue)

    def execute(self):
        """監査ログ削除(DB) / Audit log cleanup

        Raises:
            Exception: _description_
            Exception: _description_
        """

        return True

    def cancel(self):
        pass

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        pass