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
import traceback
import time
from contextlib import closing

from common_library.common import const, bl_common_service
from common_library.common.db import DBconnector
from jobs import jobs_common
from jobs.BaseJobExecutor import BaseJobExecutor
from libs import queries_auditlog
from libs.exceptions import JobTimeoutException

sleep_time = 0.1

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
        # M_SYSTEM_CONFIGから実行時間を取得
        with closing(DBconnector().connect_platformdb()) as conn:
            retention_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_AUDIT_LOG_RETENTION_DAYS)["value"]
            download_exp_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_AUDIT_LOG_DOWNLOAD_EXP_DAYS)["value"]

        # 全オーガナイゼーションを処理対象とする / Target all organizations
        organizations = jobs_common.get_organizations()
        for organization in organizations:
            # 連続でconnectするとpymysql.err.OperationalError: (1040, 'Too many connections')が発生することがあるので、sleepする
            # If you connect continuously, pymysql.err.OperationalError: (1040, 'Too many connections') may occur, so sleep
            time.sleep(sleep_time)
            globals.logger.info(f"Start audit log cleanup : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

            try:
                with closing(DBconnector().connect_orgdb(organization['ORGANIZATION_ID'])) as conn, conn.cursor() as cursor:
                    # T_AUDIT_LOGテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_auditlog.SQL_DELETE_AUDIT_LOG,{"retention_days": retention_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_AUDIT_LOG: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_AUDIT_LOGテーブルからダウンロード期限外のレコードを削除
                    count = cursor.execute(queries_auditlog.SQL_DELETE_JOBS_AUDIT_LOG,{"download_exp_days": download_exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_AUDIT_LOG: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_AUDIT_LOG_FILEテーブルからダウンロード期限外のレコードを削除
                    count = cursor.execute(queries_auditlog.SQL_DELETE_JOBS_AUDIT_LOG_FILE,{"download_exp_days": download_exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_AUDIT_LOG_FILE: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    conn.commit()

            except JobTimeoutException as err:
                raise err # TimeoutException時は即終了する
            except Exception as err:
                globals.logger.debug(f'Failed audit log cleanup')
                globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            finally:
                globals.logger.info(f"End audit log cleanup : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

        return True

    def cancel(self):
        """job cancel (timeout)
        """
        globals.logger.error(f'Cancel audit log cleanup (timeout)')
        pass

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        pass
