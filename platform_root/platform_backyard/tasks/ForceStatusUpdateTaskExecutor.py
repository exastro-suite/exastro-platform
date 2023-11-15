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
import globals
from importlib import import_module
import traceback

import backyard_config
import backyard_const

from tasks.BaseTaskExecutor import BaseTaskExecutor


class TaskExecuter(BaseTaskExecutor):
    """強制ステータス更新
            何らかの要因でステータスが更新できなかったデータをエラーにする処理
        Force status update
            Processing that makes data whose status could not be updated for some reason an error.
    Args:
        BaseTaskExecutor (_type_): _description_
    """
    def __init__(self, queue: dict):
        """constructor

        Args:
            queue (dict): _description_
        """
        self.__queue = queue

    def execute(self):
        """task実行
        """
        globals.logger.info("START TASK FORCE UPDATE STATUS")

        for process_kind, config in backyard_config.TASKS.items():
            # 全てのprocess kindのforce_update_status_failedメソッドを呼び出す
            # Call force_update_status_failed method of all process kind

            if process_kind == backyard_const.PROCESS_KIND_FORCE_STATUS_UPDATE:
                continue

            try:
                module = import_module(config["module"])
                module.TaskExecuter.force_update_status_failed()
            except Exception as err:
                globals.logger.error(f"FAILD TASK FORCE UPDATE STATUS: {err}")
                globals.logger.error(f'stack trace\n{traceback.format_exc()}')

        globals.logger.info("FINISH TASK FORCE UPDATE STATUS")

    def cancel(self):
        pass

    @classmethod
    def force_update_status_failed(cls):
        pass
