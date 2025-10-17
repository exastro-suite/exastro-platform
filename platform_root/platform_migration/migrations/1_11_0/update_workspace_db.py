#   Copyright 2025 NEC Corporation
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
import inspect
import traceback
from contextlib import closing

import globals
from common_library.common.db import DBconnector
from common_library.common import common
from common_library.common import multi_lang

import migration_common
from .libs import queries_db_workspace


class update_workspace_db:

    failed_count = 0
    complete = 0
    skip_count = 0
    ignore_count = 0
    ok_count = 0

    organization_count = 0
    step_count = 0
    step_max = 0

    def __init__(self):
        """初期化処理 initialize setting

        """

    def start(self):
        """マイグレーション処理 migration start processing

        """
        globals.logger.info('workspace database update start')

        try:
            self.step_count = 1
            self.step_max = 2

            # オーガナイゼーションDB情報取得
            # Get organization_db rows
            organization_db_rows = self.__organization_db_get()
            self.step_count += 1

            # ワークスペースDataBase作成
            # workspace database create
            for row in organization_db_rows:
                organization_id = row.get("ORGANIZATION_ID")

                # ワークスペース情報取得
                # Get workspace rows
                workspace_rows = self.__workspace_get(organization_id)

                for ws_row in workspace_rows:
                    workspace_id = ws_row.get("WORKSPACE_ID")

                    # Workspace DBの更新
                    self.__update_workspace_db(organization_id, workspace_id)

            self.step_count += 1

            last_message = "workspace database update successful !!"

        except (common.BadRequestException,
                common.AuthException,
                common.NotAllowedException,
                common.InternalErrorException,
                common.OtherException) as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]\n message:[{err.message}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "workspace database update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "workspace database update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"workspace database update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

    def __organization_db_get(self):
        """get organization db

        Raises:
            common.InternalErrorException: _description_

        Returns:
            row: organization_db data rows
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        # データベース接続
        # connection database
        db = DBconnector()
        with closing(db.connect_platformdb()) as conn:
            with conn.cursor() as cursor:

                try:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - get organization_db:")
                    cursor.execute(queries_db_workspace.SQL_SELECT_ORGANIZATION_DB)

                    result = cursor.fetchall()

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get organization_db:")
                    self.ok_count += 1

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get organization_db:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-90006"
                    message = multi_lang.get_text(message_id, "get organization_db failed.")
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __workspace_get(self, organization_id):
        """get workspace

        Args:
            organization_id (str): organization id

        Raises:
            common.InternalErrorException: _description_

        Returns:
            row: workspace data row
        """

        # データベース接続
        # connection database
        db = DBconnector()
        with closing(db.connect_orgdb(organization_id)) as conn:
            with conn.cursor() as cursor:

                try:
                    # workspace 情報取得
                    # get workspace info
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - get workspace:")
                    cursor.execute(queries_db_workspace.SQL_SELECT_WORKSPACE)

                    result = cursor.fetchall()

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: get workspace:")
                    self.ok_count += 1

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: get workspace:")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-90008"
                    message = multi_lang.get_text(
                        message_id,
                        "get workspace failed. organization_id:[{0}]",
                        organization_id)
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __update_workspace_db(self, organization_id, workspace_id):
        """update workspace db
        Args:
            organization_id (str): organization id
            workspace_id (str): workspace id
        """

        globals.logger.info(f" -- func :{inspect.currentframe().f_code.co_name} {organization_id=}:{workspace_id=}")

        db = DBconnector()
        with closing(db.connect_workspacedb(organization_id, workspace_id)) as conn:
            for sql_alter_table in queries_db_workspace.SQL_ALTER_TABLES:
                if not migration_common.exists_table_column(conn, sql_alter_table['COLUMN_TO_ADD']['TABLE_NAME'], sql_alter_table['COLUMN_TO_ADD']['COLUMN_NAME']):
                    # 項目追加されていない場合は、Alter tableを実行しcolumnを追加する
                    globals.logger.info(f"SQL EXECUUTE:{sql_alter_table['ALTER_TABLE_DDL']}")
                    with conn.cursor() as cur:
                        cur.execute(sql_alter_table['ALTER_TABLE_DDL'])
                    self.ok_count += 1
                else:
                    # 項目追加済みの場合はSkipする
                    globals.logger.info(f"SKIP ALTER TABLE : {sql_alter_table['COLUMN_TO_ADD']['TABLE_NAME']}")
                    self.skip_count += 1
            
            # 通知設定の追加(新規イベント（受信時）・新規イベント（統合時）)
            # Add notification settings (new event (received), new event (consolidated))
            sql_update_table = queries_db_workspace.SQL_UPDATE_M_NOTIFICATION_DESTINATION
            globals.logger.info(f"SQL EXECUUTE:{sql_update_table}")
            with conn.cursor() as cur:
                cur.execute(sql_update_table)
            self.ok_count += 1
