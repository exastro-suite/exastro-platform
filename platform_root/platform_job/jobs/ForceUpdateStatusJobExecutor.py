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
import globals
from importlib import import_module
import traceback

from contextlib import closing
from importlib import import_module

from common_library.common.db import DBconnector
import job_manager_config
import job_manager_const

from jobs.BaseJobExecutor import BaseJobExecutor

from libs import queries_process_queue
class ForceUpdateStatusJobExecutor(BaseJobExecutor):
    """強制ステータス更新
            何らかの要因でステータスが更新できなかったデータをエラーにする処理
        Force status update
            Processing that makes data whose status could not be updated for some reason an error.
    Args:
        BaseJobExecutor (_type_): _description_
    """
    def __init__(self, queue: dict, batch_queue: list[dict] | None = None):
        """constructor

        Args:
            queue (dict): _description_
        """
        super().__init__(queue, batch_queue)

    def execute(self):
        """job実行
        """
        
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                try:
                    # 時間経過で不要なデータは削除する
                    cursor.execute(queries_process_queue.SQL_DELETE_PROCESS_QUEUE_LOCK, {"delete_days_ago": os.environ.get('PROCESS_QUEUE_LOCK_DELETE_DAYS_AGO',3)})
                    conn.commit()
                except Exception as err:
                    # エラーだけ出力して継続
                    globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')

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
