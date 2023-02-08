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
import time
import datetime
import pymysql
import os
import json
from jinja2 import Template
from contextlib import closing
# import traceback

import globals
from libs import queries_common

from common_library.common import api_keycloak_server, api_keycloak_tokens

WAIT_INTERVAL = 5


def wait_until_connect_to_db(host, user, password, database):
    """wait until connect to db

    Args:
        host (str): database host
        user (str): database user
        password (str): database password
        database (str): database name

    Returns:
        Connection: Database Connection
    """
    start_time = datetime.datetime.now()
    timeout_seconds_connect_db = int(os.environ.get("TIMEOUT_SECONDS_CONNECT_DB", "-1"))

    globals.logger.info(f'WAIT UNTIL CONNECT DATABASE({user}@{host}/{database})...')

    while True:
        try:
            conn = pymysql.connect(
                host=host,
                database=database,
                user=user,
                password=password,
                port=3306,
                cursorclass=pymysql.cursors.DictCursor,
            )
            break
        except Exception:
            if timeout_seconds_connect_db != -1 and datetime.datetime.now() > start_time + datetime.timedelta(seconds=timeout_seconds_connect_db):
                raise Exception(f"Connection to database timed out : {timeout_seconds_connect_db}s")

            time.sleep(WAIT_INTERVAL)

    return conn


def get_db_data_version(conn, lock=False):
    """ Get Database data version

    Args:
        conn (Connection): Database Connection
        lock (bool, optional): version record lock. Defaults to False.

    Returns:
        str: Database data version
    """
    with conn.cursor() as cursor:

        # Check Exists Version Table Exists
        globals.logger.debug('Check Exists Version Table')
        template = Template(source=queries_common.EXISTS_VERSION_TABLE)
        query = template.render(os.environ)
        globals.logger.debug(f'EXECUTE SQL:{query}')

        cursor.execute(query)
        result = cursor.fetchone()

        if result is None:
            # Not Exists Version Table
            globals.logger.debug('Not Exists Version Table')
            return None

        # Select version table
        globals.logger.debug('Get Version Table')
        if lock:
            template = Template(source=queries_common.SELECT_VERSION_TABLE_LOCK)
        else:
            template = Template(source=queries_common.SELECT_VERSION_TABLE)

        query = template.render(os.environ)
        globals.logger.debug(f'EXECUTE SQL:{query}')

        cursor.execute(query)
        result = cursor.fetchone()

        if result is None:
            # Not Exists Version Table
            globals.logger.debug('Not Exists Version Table Record')
            return None

        return result.get("VERSION")


def update_db_data_version(conn, version, update_user='system'):
    """Update Database data version

    Args:
        conn (Connection): Database Connection
        version (str): version
    """
    with conn.cursor() as cursor:
        globals.logger.info(f'UPDATE DATABASE VERSION : {version}')
        cursor.execute(queries_common.UPDATE_VERSION_TABLE, {"version": version, "last_update_user": update_user})


def insert_migration_history(version, result, message=None, create_user='system'):
    """Insert migration history

    Args:
        version (str): version
        result (str): "START" or "SUCCEED" or "FAILED"
        message (str): Error Message
        create_user (str, optional): user. Defaults to 'system'.
    """
    message_substr = message[:4095] if message is not None else None

    with closing(connect_platform_db()) as conn:
        with conn.cursor() as cursor:
            cursor.execute(
                queries_common.INSERT_MIGRATION_HISTORY,
                {
                    "version": version,
                    "result": result,
                    "message": message_substr,
                    "create_user": create_user,
                    "last_update_user": create_user
                }
            )
            conn.commit()


def wait_until_keycloak_to_start():
    """wait until keycloak to start
    """
    globals.logger.info('WAIT UNTIL KEYCLOAK TO START ...')

    start_time = datetime.datetime.now()
    timeout_seconds_keycloak_start = int(os.environ.get("TIMEOUT_SECONDS_KEYCLOAK_START", "-1"))

    with closing(connect_platform_db()) as conn:
        informations = __get_platform_informations(conn)

    while True:
        if timeout_seconds_keycloak_start != -1 and datetime.datetime.now() > start_time + datetime.timedelta(seconds=timeout_seconds_keycloak_start):
            raise Exception(f"keycloak start timed out : {timeout_seconds_keycloak_start}s")

        try:
            health_response = api_keycloak_server.health()
            if health_response.status_code != 200:
                time.sleep(WAIT_INTERVAL)
                continue

            if informations.get("TOKEN_CHECK_CLIENT_CLIENTID") is not None \
                    and informations.get("TOKEN_CHECK_CLIENT_SECRET") is not None:

                token_response = api_keycloak_tokens.service_account_get_token(
                    'master',
                    informations.get("TOKEN_CHECK_CLIENT_CLIENTID"),
                    informations.get("TOKEN_CHECK_CLIENT_SECRET"))
            else:
                token_response = api_keycloak_tokens.client_user_get_token(
                    'master',
                    'admin-cli',
                    None,
                    os.environ.get('KEYCLOAK_USER'),
                    os.environ.get('KEYCLOAK_PASSWORD'))

            if token_response.status_code != 200:
                time.sleep(WAIT_INTERVAL)
                continue

            token = json.loads(token_response.text)["access_token"]

            serverinfo_response = api_keycloak_server.serverinfo(token)
            if serverinfo_response.status_code != 200:
                time.sleep(WAIT_INTERVAL)
                continue

            serverinfo = json.loads(serverinfo_response.text)

            # Match minor version
            if ".".join(serverinfo["systemInfo"]["version"].split(".")[:2]) == os.environ.get("KEYCLOAK_VERSION"):
                break

            time.sleep(WAIT_INTERVAL)

        # except Exception as err:
        #     globals.logger.debug(''.join(list(traceback.TracebackException.from_exception(err).format())))
        except Exception:
            time.sleep(WAIT_INTERVAL)
            continue

    globals.logger.info('KEYCLOAK STARTED')
    return


def connect_platform_db():
    conn = pymysql.connect(
        host=os.environ.get('DB_HOST'),
        database=os.environ.get('DB_DATABASE'),
        user=os.environ.get('DB_USER'),
        password=os.environ.get('DB_PASSWORD'),
        port=3306,
        cursorclass=pymysql.cursors.DictCursor,
    )
    return conn


def __get_platform_informations(conn):

    with conn.cursor() as cursor:

        # Select version table
        globals.logger.debug('Get Platform Informatios Table')
        template = Template(source=queries_common.SELECT_PLATFORM_PRIVATE)

        query = template.render(os.environ)
        globals.logger.debug(f'EXECUTE SQL:{query}')

        cursor.execute(query)
        result = cursor.fetchone()

        if result is None:
            return {}

        return json.loads(result.get("INFORMATIONS", {}))
