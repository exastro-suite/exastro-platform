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


def __main():
    """platform initialize db main

    Returns:
        int: result(0=succeed / other=failed)
    """
    try:
        globals.logger.info('START : platform initialize_db_main')

        with closing(
                migration_common.wait_until_connect_to_db(
                    os.environ.get("DB_HOST"),
                    os.environ.get("DB_ADMIN_USER"),
                    os.environ.get("DB_ADMIN_PASSWORD"),
                    None)) as conn:

            db_data_version = migration_common.get_db_data_version(conn)
            if db_data_version is not None:
                globals.logger.info(f'SKIP : platform initialize_db_main : alredy initialized (db data version : {db_data_version})')
                return 0

            with conn.cursor() as cursor:

                for query_template in queries.INITIALIZE_QUERIES:
                    template = Template(source=query_template)
                    query = template.render(os.environ)
                    globals.logger.info(f'EXECUTE SQL:{query}')
                    cursor.execute(query)

            conn.commit()

        globals.logger.info('SUCCEED : platform initialize_db_main')
        return 0
    except Exception as err:
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        return -1


if __name__ == '__main__':
    ret = __main()
    exit(ret)
