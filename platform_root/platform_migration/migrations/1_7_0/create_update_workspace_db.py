#   Copyright 2023 NEC Corporation
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
from common_library.common.db_init import DBinit
from common_library.common import common
from common_library.common import multi_lang
from .libs import queries_db_workspace

MSG_FUNCTION_ID = "90"


class create_update_workspace_db:

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
        globals.logger.info('workspace database create and update start')

        try:
            self.step_count = 1
            self.step_max = 3

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
                    create_user = ws_row.get("CREATE_USER")

                    # ワークスペースDataBase作成
                    # workspace database create
                    self.__workspace_database_create(organization_id, workspace_id, create_user)

            self.step_count += 1

            last_message = "workspace database create and update successful !!"

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
            last_message = "workspace database create and update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "workspace database create and update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"workspace database create and update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
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
                    message_id = f"500-{MSG_FUNCTION_ID}006"
                    message = multi_lang.get_text(message_id,
                                                  "get organization_db failed.")
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

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

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
                    message_id = f"500-{MSG_FUNCTION_ID}008"
                    message = multi_lang.get_text(message_id,
                                                  "get workspace failed. organization_id:[{0}]",
                                                  organization_id)
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return result

    def __workspace_database_create(self, organization_id, workspace_id, create_user):
        """get workspace

        Args:
            organization_id (str): organization id
            workspace_id (str): workspace id
            create_user (str): create user

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        # DBが存在する場合は、処理しない
        # If DB exists, do not process
        if workspace_db_exsits_check(organization_id, workspace_id):
            return

        dbinit = DBinit()
        ws_dbinfo = dbinit.generate_dbinfo(dbinit.prefix_workspace_db)

        try:
            # workspace database 作成
            # create workspace database
            dbinit.create_database(ws_dbinfo)

            # Table 作成
            # create table in workspace database
            dbinit.create_table_workspacedb(ws_dbinfo)

            # workspace database 接続情報登録
            # workspace database connect infomation registration
            dbinit.insert_workspace_dbinfo(ws_dbinfo, organization_id, workspace_id, create_user)

        except Exception as e:
            globals.logger.error(f"create workspace database error:{str(e)}")

            dbinit.drop_database(ws_dbinfo)

            message_id = f"500-{MSG_FUNCTION_ID}009"
            message = multi_lang.get_text(
                message_id,
                "Workspace Database 作成に失敗しました(organization id:{0} workspace id:{1} database:{2})",
                organization_id,
                workspace_id,
                ws_dbinfo.db_database,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return


def workspace_db_exsits_check(organization_id, workspace_id):
    """worskspace database exists check

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Boolean: True:Exists false:Not Exists
    """

    try:
        # Database存在チェック
        # database exists check
        with closing(DBconnector().connect_workspacedb(organization_id, workspace_id)):
            # 存在するためチェック終了
            return True
    except Exception:
        return False
