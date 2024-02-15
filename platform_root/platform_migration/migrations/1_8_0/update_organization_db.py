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
from common_library.common import common
from common_library.common import multi_lang
from .libs import queries_db_organization

MSG_FUNCTION_ID = "90"


class update_organization_db:

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
        globals.logger.info('organization database update start')

        try:
            self.step_count = 1
            self.step_max = 2

            # オーガナイゼーションDB情報取得
            # Get organization_db rows
            organization_db_rows = self.__organization_db_get()
            self.step_count += 1

            # オーガナイゼーションDataBase更新
            # organization database update
            self.__organization_db_update(organization_db_rows)
            self.step_count += 1

            last_message = "organization database update successful !!"

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
            last_message = "organization database update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "organization database update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"organization database update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
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
                    cursor.execute(queries_db_organization.SQL_SELECT_ORGANIZATION_DB)

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

    def __organization_db_update(self, organization_db_rows):
        """Organization database create tables and create workspace database

        Args:
            organization_db_rows (dic): organization_db data rows

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        for row in organization_db_rows:

            organization_id = row.get("ORGANIZATION_ID")
            # organization database 接続
            # organization database connection
            db = DBconnector()
            with closing(db.connect_orgdb(organization_id)) as conn:
                with conn.cursor() as cursor:

                    try:
                        globals.logger.info(f"[{self.step_count}/{self.step_max}] - create table: organization_id:[{organization_id}]")
                        for query in queries_db_organization.CREATE_TABLES:
                            globals.logger.debug(f'EXECUTE SQL:{query}')
                            cursor.execute(query)

                        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: create table: organization_id:[{organization_id}")

                        self.ok_count += 1

                        conn.commit()

                    except Exception as e:
                        globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: create table: organization_id:[{organization_id}")
                        globals.logger.error(f"exception:{e.args}")
                        message_id = f"500-{MSG_FUNCTION_ID}007"
                        message = multi_lang.get_text(message_id,
                                                      "organization_db create table setting failed. organization_id:[{0}]",
                                                      organization_id)
                        raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
