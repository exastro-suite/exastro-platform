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
import requests_mock
from unittest import mock

import re
import os
import datetime
import time
import psutil
from contextlib import closing
import pymysql

from common_library.common.db import DBconnector


TEST_HTTPCODE200_ORIGIN="http://mocked.httpcode200.test"
TEST_HTTPCODE500_ORIGIN="http://mocked.httpcode500.test"


def keycloak_origin():
    """keycloak url origin

    Returns:
        str: keycloak url origin
    """
    return f'{os.environ["API_KEYCLOAK_PROTOCOL"]}://{os.environ["API_KEYCLOAK_HOST"]}:{os.environ["API_KEYCLOAK_PORT"]}'


def ita_api_admin_origin():
    """it automation admin url origin

    Returns:
        str: it automation admin url origin
    """
    return f'{os.environ["ITA_API_ADMIN_PROTOCOL"]}://{os.environ["ITA_API_ADMIN_HOST"]}:{os.environ["ITA_API_ADMIN_PORT"]}'


def check_state(timeout: float, conditions, conditions_value=True):
    """一定時間内に条件が成立するか判定する
        Determine if the condition is met within a certain amount of time

    Args:
        timeout (float): timeout seconds
        conditions (_type_): 条件関数 / condition function

    Returns:
        bool: True : 成立 / Established
    """
    timeout_time = datetime.datetime.now() + datetime.timedelta(seconds=timeout)
    while datetime.datetime.now() < timeout_time:
        result = conditions()
        if result == conditions_value:
            return True
        time.sleep(0.1)
    print(f"** check_state Last Value:{result}")
    return False


def insert_queue(queue: list):
    """insert to queue table

    Args:
        queue (list): rows

    """
    with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
        conn.begin()
        for row in queue:
            cursor.execute("""
                INSERT INTO T_PROCESS_QUEUE
                (
                    PROCESS_ID,
                    PROCESS_KIND,
                    PROCESS_EXEC_ID,
                    ORGANIZATION_ID,
                    WORKSPACE_ID,
                    LAST_UPDATE_USER
                ) VALUES (
                    %(PROCESS_ID)s,
                    %(PROCESS_KIND)s,
                    %(PROCESS_EXEC_ID)s,
                    %(ORGANIZATION_ID)s,
                    %(WORKSPACE_ID)s,
                    %(LAST_UPDATE_USER)s
                )
            """, row)
        conn.commit()


def equal_queue(queue1: dict, queue2: dict):
    """queueの内容が一致するか判定する
        Determine whether the contents of the queue match

    Args:
        queue1 (dict): queue
        queue2 (dict): queue

    Returns:
        bool: True: equal
    """
    # 更新情報を取り除いて比較する / Compare by removing updated information
    cp_queue1 = dict(queue1)
    if "LAST_UPDATE_USER" in cp_queue1:
        del cp_queue1["LAST_UPDATE_USER"]
    if "LAST_UPDATE_TIMESTAMP" in cp_queue1:
        del cp_queue1["LAST_UPDATE_TIMESTAMP"]

    cp_queue2 = dict(queue2)
    if "LAST_UPDATE_USER" in cp_queue2:
        del cp_queue2["LAST_UPDATE_USER"]
    if "LAST_UPDATE_TIMESTAMP" in cp_queue2:
        del cp_queue2["LAST_UPDATE_TIMESTAMP"]

    return cp_queue1 == cp_queue2


class get_main_process(psutil.Process):
    """process class

    Args:
        psutil (_type_): 継承元class / Inherited from class
    """
    # psutil.Processとmultiprocessing.Processの違いと吸収するためのclass
    # Difference between psutil.Process and multiprocessing.Process and class to absorb
    def __init__(self, pid):
        super().__init__(pid)
        self.exitcode = None


def requsts_mocker_default():
    """requstsのデフォルトmocker

    Returns:
        _type_: _description_
    """
    requests_mocker = requests_mock.Mocker()

    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{ita_api_admin_origin()}/'),
        status_code=200,
        json={"result": "000-00000", "message": ""})

    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{keycloak_origin()}/'),
        real_http=True)

    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{TEST_HTTPCODE200_ORIGIN}/'),
        status_code=200,
        json={})

    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{TEST_HTTPCODE500_ORIGIN}/'),
        status_code=500,
        json={})

    return requests_mocker


def pymysql_execute_raise_exception_mocker(sqlstmt, exception):
    """DB Exception発行mocker

    Args:
        sqlstmt (stmt): SQL that causes an exception
        exception (Exception): exception to raise

    Returns:
        _type_: _description_
    """
    pymysql_execute_raise_exception_state.initialize()

    # オリジナルのpymysql.connectメソッドを退避
    pymysql_connect = pymysql.connect

    def mocked_function(host, database, user, password, port, charset, collation, cursorclass, max_allowed_packet=None):
        conn = pymysql_connect(
            host=host,
            database=database,
            user=user,
            password=password,
            port=port,
            charset=charset,
            collation=collation,
            cursorclass=cursorclass,
            max_allowed_packet=max_allowed_packet
        )
        # pymysql.connectで返す内容をpymysql_connection_mocked instanceにする
        return pymysql_connection_mocked(conn, sqlstmt, exception)

    return mock.patch.object(pymysql, 'connect', side_effect=mocked_function)


class pymysql_connection_mocked():
    """pymysqlのconnectインスタンス（モック時）
    """
    def __init__(self, conn, sqlstmt, exception):
        self.sqlstmt = sqlstmt
        self.exception = exception
        self.conn = conn

    def begin(self):
        return self.conn.begin()

    def close(self):
        return self.conn.close()

    def commit(self):
        return self.conn.commit()

    def cursor(self):
        cursor = self.conn.cursor()
        return pymysql_cursor_mocked(cursor, self.sqlstmt, self.exception)

    def rollback(self):
        return self.conn.rollback()


class pymysql_cursor_mocked():
    """pymysqlのcursorインスタンス（モック時）
    """
    def __init__(self, cursor, sqlstmt, exception):
        self.cursor = cursor
        self.sqlstmt = sqlstmt
        self.exception = exception

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.cursor.close()

    def close(self):
        self.cursor.close()

    def execute(self, query, args=None):
        pymysql_execute_raise_exception_state.call(query)
        if query == self.sqlstmt:
            raise self.exception

        return self.cursor.execute(query, args)

    def fetchall(self):
        return self.cursor.fetchall()

    def fetchone(self):
        return self.cursor.fetchone()


class pymysql_execute_raise_exception_state():
    """pymysql SQL called count
    """
    count = {}
    @classmethod
    def initialize(cls):
        cls.count = {}

    @classmethod
    def call(cls, stmt):
        if stmt in cls.count:
            cls.count[stmt] += 1
        else:
            cls.count[stmt] = 1

    @classmethod
    def call_count(cls, stmt):
        return cls.count.get(stmt, 0)
