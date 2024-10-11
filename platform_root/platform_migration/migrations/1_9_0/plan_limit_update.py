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
from .libs import queries_db_plan_limit


class plan_limit_update:

    failed_count = 0
    complete = 0
    skip_count = 0
    ignore_count = 0
    ok_count = 0

    step_count = 0
    step_max = 0

    def __init__(self):
        """初期化処理 initialize setting

        """

    def start(self):
        """マイグレーション処理 migration start processing

        """
        globals.logger.info(f"{inspect.currentframe().f_code.co_name} start")

        try:
            self.step_count = 1
            self.step_max = 1

            # plan limit 更新
            # plan limit update
            self.__plan_limit_update()
            self.step_count += 1

            last_message = f"{inspect.currentframe().f_code.co_name} successful !!"

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
            last_message = f"{inspect.currentframe().f_code.co_name} failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = f"{inspect.currentframe().f_code.co_name} failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"{inspect.currentframe().f_code.co_name} status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

    def __plan_limit_update(self):
        """plam limitg update

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                try:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - change columns")
                    cursor.execute(queries_db_plan_limit.SQL_CHANGE_COLUMN_PLAN_LIMIT)

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: change columns")

                    self.ok_count += 1

                    conn.commit()

                except Exception as e:
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: change columns")
                    globals.logger.error(f"exception:{e.args}")
                    message_id = "500-90013"
                    message = multi_lang.get_text(
                        message_id,
                        "change columns failed. table:[{0}]",
                        "T_PLAN_LIMIT")
                    raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
