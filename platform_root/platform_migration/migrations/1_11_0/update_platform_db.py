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
from common_library.common.db_init import DBinit
from common_library.common import common
from common_library.common import multi_lang

import migration_common
from .libs import queries_db_platform

class update_platform_db:

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
        globals.logger.info('platform database update start')

        try:
            self.step_count = 1
            self.step_max = 2

            with closing(migration_common.connect_platform_db()) as conn:

                if not migration_common.exists_table_column(conn, 'T_PROCESS_QUEUE', 'ENABLE_BATCH'):
                    # 項目が無い場合は、項目追加を行う
                    globals.logger.info(f'EXECUTE SQL:{queries_db_platform.ALTER_T_PROCESS_QUEUE}')
                    with conn.cursor() as cur:
                        cur.execute(queries_db_platform.ALTER_T_PROCESS_QUEUE)
                    self.ok_count += 1
                else:
                    # 項目が既にある場合は、SKIPする
                    globals.logger.info('SKIP ALTER TABLE T_PROCESS_QUEUE')
                    self.skip_count += 1

                self.step_count += 1

            last_message = "platform database update successful !!"

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
            last_message = "platform database update failed..."

        except Exception as err:
            self.failed_count += 1
            globals.logger.info("=" * 50)
            globals.logger.error(f'exception:\n args:[{err.args}]')
            globals.logger.info("-" * 50)
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
            last_message = "platform database update failed..."

        globals.logger.info("-" * 50)
        globals.logger.info(f"platform database update status: [OK:{self.ok_count}] [SKIP:{self.skip_count}] [IGNORE:{self.ignore_count}] [NG:{self.failed_count}]")     # noqa: E501
        globals.logger.info("-" * 50)
        globals.logger.info(last_message)

        if self.failed_count > 0:
            return -1
        else:
            return 0

