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
from libs import queries_user_export, queries_user_import
from libs.exceptions import JobTimeoutException

sleep_time = 0.1

class UserExportImportCleanupJobExecutor(BaseJobExecutor):
    """ユーザーエクスポート・インポート削除Job / User export and bulk import cleanup

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
        """ユーザーエクスポート・インポート削除(DB) / User export and bulk import cleanup

        Raises:
            Exception: _description_
            Exception: _description_
        """
        # M_SYSTEM_CONFIGから実行時間を取得
        with closing(DBconnector().connect_platformdb()) as conn:
            exp_days = bl_common_service.settings_system_config_list(conn,const.CONFIG_KEY_USER_EXPORT_IMPORT_EXP_DAYS)["value"]

        # 全オーガナイゼーションを処理対象とする / Target all organizations
        organizations = jobs_common.get_organizations()
        for organization in organizations:
            # 連続でconnectするとpymysql.err.OperationalError: (1040, 'Too many connections')が発生することがあるので、sleepする
            # If you connect continuously, pymysql.err.OperationalError: (1040, 'Too many connections') may occur, so sleep
            time.sleep(sleep_time)
            globals.logger.info(f"Start user export and bulk import cleanup : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

            try:
                with closing(DBconnector().connect_orgdb(organization['ORGANIZATION_ID'])) as conn, conn.cursor() as cursor:
                    # T_JOBS_USER_EXPORTテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_user_export.SQL_DELETE_JOBS_USER_EXPORT,{"exp_days": exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_USER_EXPORT: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_USER_FILE_EXPORTテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_user_export.SQL_DELETE_JOBS_USER_FILE_EXPORT,{"exp_days": exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_USER_FILE_EXPORT: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_USERテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_user_import.SQL_DELETE_JOBS_USER,{"exp_days": exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_USER: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_USER_FILEテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_user_import.SQL_DELETE_JOBS_USER_FILE,{"exp_days": exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_USER_FILE: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    # T_JOBS_USER_RESULTテーブルから保持期間外のレコードを削除
                    count = cursor.execute(queries_user_import.SQL_DELETE_JOBS_USER_RESULT,{"exp_days": exp_days})
                    if 0 < int(count):
                        globals.logger.debug(f" {count} records have been deleted in T_JOBS_USER_RESULT: ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

                    conn.commit()

            except JobTimeoutException as err:
                raise err # TimeoutException時は即終了する
            except Exception as err:
                globals.logger.debug(f'Failed user export and bulk import cleanup')
                globals.logger.error(f'{err}\n-- stack trace --\n{traceback.format_exc()}')
            finally:
                globals.logger.info(f"End user export and bulk import cleanup : ORGANIZATION_ID:[{organization['ORGANIZATION_ID']}]")

        return True

    def cancel(self):
        """job cancel (timeout)
        """
        globals.logger.error(f'Cancel user export and bulk import cleanup (timeout)')
        pass

    @classmethod
    def force_update_status(cls):
        """強制ステータス更新 / Force status update
        """
        pass
