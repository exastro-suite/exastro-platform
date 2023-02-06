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
from flask import Flask
import os
from contextlib import closing
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID
import traceback
from jinja2 import Template
from packaging import version
from importlib import import_module

import globals
# import const
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING

import migration_common
from initialize_db import queries

# load environ variables
load_dotenv(override=True)

# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

globals.logger.setLevel(os.getenv('LOG_LEVEL', 'INFO'))
RequestID(app)

MIGRATIONS_DIR_NAME = "migrations"


def __main():
    """platform maigration main

    Returns:
        int: result(0=succeed / other=failed)
    """
    try:
        globals.logger.info('START : platform maigration_main')

        # get database data version
        with closing(migration_common.connect_platform_db()) as conn:
            db_data_version = migration_common.get_db_data_version(conn)

        # Exit if migration is not needed compared to system version
        # システムのバージョンと比較してマイグレーションの必要が無いときは終了する
        with open(os.path.join(os.path.dirname(__file__), "version"), 'r') as f:
            system_version = f.readline().strip()

        if system_version == db_data_version:
            globals.logger.info(f'SKIP : platform maigration_main : Data and System versions match : {system_version}')
            return 0

        # wait until keycloak to start
        # Keycloakの起動を待つ
        migration_common.wait_until_keycloak_to_start()

        # get migrations directry name
        # migrationsのディレクトリ名を取得する
        migrations_path = os.path.join(os.path.dirname(__file__), MIGRATIONS_DIR_NAME)
        migrations = [os.path.basename(f).replace('_', '.') for f in os.listdir(migrations_path) if os.path.isdir(os.path.join(migrations_path, f))]

        for migration in sorted(migrations, key=version.parse):
            with closing(migration_common.connect_platform_db()) as conn:

                db_data_version = migration_common.get_db_data_version(conn, lock=True)

                if version.parse(migration) > version.parse(db_data_version) \
                        and version.parse(migration) <= version.parse(system_version):

                    try:
                        globals.logger.info(f'* migration({migration}) START')
                        migration_module = import_module(f"{MIGRATIONS_DIR_NAME}.{migration.replace('.', '_')}.migration")
                        result = migration_module.main()

                        if result != 0:
                            conn.rollback()
                            globals.logger.error(f'* migration({migration}): Error return:{result}')
                            return result

                        migration_common.update_db_data_version(conn, migration)
                        conn.commit()

                        globals.logger.info(f'* migration({migration}): Succeed')
                    except Exception as e:
                        globals.logger.error(f'* migration({migration}): Failed')
                        conn.rollback()
                        raise e
                else:
                    globals.logger.info(f'* migration({migration}): Skip')

        # If all migrations are successful, the database version is match system version
        # 全てのmigrationが成功したらdatabaseのversionをシステムのversionに合わせる
        with closing(migration_common.connect_platform_db()) as conn:
            db_data_version = migration_common.get_db_data_version(conn, lock=True)
            migration_common.update_db_data_version(conn, system_version)
            conn.commit()

        globals.logger.info('SUCCEED : platform maigration_main')
        return 0

    except Exception as err:
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        return -1


if __name__ == '__main__':
    ret = __main()
    exit(ret)
