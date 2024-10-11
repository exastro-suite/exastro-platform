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
import inspect
import traceback
from contextlib import closing

import globals
from common_library.common import const as common_const
from common_library.common.db import DBconnector
from common_library.common import common
from common_library.common import multi_lang
from common_library.common import bl_common_service

MSG_FUNCTION_ID = "90"


class system_config_update:

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
        globals.logger.info('system config update start')

        try:
            self.step_count = 1
            self.step_max = 1

            # system config 更新
            # system config update
            self.__system_config_update()
            self.step_count += 1

            last_message = "system config update successful !!"

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
            last_message = "system config update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "system config update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"system config update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

    def __system_config_update(self):
        """system config update

        Raises:
            common.InternalErrorException: _description_
        """

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Start func:{inspect.currentframe().f_code.co_name}")

        config_key = None

        system_configs = [
            {
                "key": common_const.CONFIG_KEY_USER_EXPORT_IMPORT_EXP_DAYS,
                "value": 7,
                "description": "User export and bulk import expiration days",
            },
            {
                "key": common_const.CONFIG_KEY_USER_EXPORT_IMPORT_CLEANUP_TIME,
                "value": "04:01",
                "description": "User export and bulk import cleanup time",
            }
        ]

        with closing(DBconnector().connect_platformdb()) as conn:
            try:
                for conf in system_configs:
                    config_key = conf.get("key")
                    globals.logger.info(f"[{self.step_count}/{self.step_max}] - insert table: config_key:[{config_key}]")

                    data = bl_common_service.settings_system_config_list(conn, config_key=config_key)
                    if data is None:
                        bl_common_service.settings_system_config_create(conn, user_id="dummy", body=conf)
                    else:
                        self.skip_count += 1

                    globals.logger.info(f"[{self.step_count}/{self.step_max}] -- OK: insert table: config_key:[{config_key}")

                    self.ok_count += 1

                conn.commit()

            except Exception as e:
                globals.logger.info(f"[{self.step_count}/{self.step_max}] -- NG: insert table: config_key:[{config_key}")
                globals.logger.error(f"exception:{e.args}")
                message_id = f"500-{MSG_FUNCTION_ID}012"
                message = multi_lang.get_text(
                    message_id,
                    "system config table setting failed. config_key:[{0}]",
                    config_key)
                raise common.InternalErrorException(message_id=message_id, message=message)

        globals.logger.info(f"[{self.step_count}/{self.step_max}] ### Succeed func:{inspect.currentframe().f_code.co_name}")

        return
