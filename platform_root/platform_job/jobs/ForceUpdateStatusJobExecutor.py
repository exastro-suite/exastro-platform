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

import job_manager_config
import job_manager_const

from jobs.BaseJobExecutor import BaseJobExecutor


class ForceUpdateStatusJobExecutor(BaseJobExecutor):
    """強制ステータス更新
            何らかの要因でステータスが更新できなかったデータをエラーにする処理
        Force status update
            Processing that makes data whose status could not be updated for some reason an error.
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
        """job実行
        """
        
        for process_kind, config in job_manager_config.JOBS.items():
            # 全てのprocess kindのforce_update_statusメソッドを呼び出す
            # Call force_update_status_failed method of all process kind

            if process_kind == job_manager_const.PROCESS_KIND_FORCE_UPDATE_STATUS:
                continue

            try:
                globals.logger.info(f"START {config['class']}.force_update_status")
                module = import_module(config["module"])
                eval(f"module.{config['class']}.force_update_status()")
            except Exception as err:
                globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            finally:
                globals.logger.info(f"FINISH {config['class']}.force_update_status")
        return True

    def cancel(self):
        pass

    @classmethod
    def force_update_status(cls):
        pass
