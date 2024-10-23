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
import logging

import re
import os
import json
import ulid
import pymysql

from common_library.common import const

from tests.common import request_parameters
from tests import test_organization_service_controller
from tests import test_workspace_service_controller
from tests import test_notification_service_controller


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

    return requests_mocker


def pymysql_execute_data_mocker(sqlstmt, data=None):
    """data none 発行mocker

    Args:
        sqlstmt (stmt): SQL that causes an exception
        data (row): SQL return row

    Returns:
        _type_: _description_
    """
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
        return pymysql_connection_mocked_data(conn, sqlstmt, data)

    return mock.patch.object(pymysql, 'connect', side_effect=mocked_function)


class pymysql_connection_mocked_data():
    """pymysqlのconnectインスタンス（モック時）
    """
    def __init__(self, conn, sqlstmt, data):
        self.sqlstmt = sqlstmt
        self.conn = conn
        self.data = data

    def begin(self):
        return self.conn.begin()

    def close(self):
        return self.conn.close()

    def commit(self):
        return self.conn.commit()

    def cursor(self):
        cursor = self.conn.cursor()
        return pymysql_cursor_mocked_data(cursor, self.sqlstmt, self.data)

    def rollback(self):
        return self.conn.rollback()


class pymysql_cursor_mocked_data():
    """pymysqlのcursorインスタンス（モック時）
    """
    def __init__(self, cursor, sqlstmt, data):
        self.cursor = cursor
        self.sqlstmt = sqlstmt
        self.data = data
        self.match_sql = False

    def __enter__(self):
        return self

    def __exit__(self, exc_type, exc_val, exc_tb):
        self.cursor.close()

    def close(self):
        self.cursor.close()

    def execute(self, query, args=None):
        if query == self.sqlstmt:
            self.match_sql = True

        return self.cursor.execute(query, args)

    def fetchall(self):
        if self.match_sql:
            return self.data
        else:
            return self.cursor.fetchall()

    def fetchone(self):
        if self.match_sql:
            return self.data
        else:
            return self.cursor.fetchone()


def pymysql_execute_raise_exception_mocker(sqlstmt, exception):
    """DB Exception発行mocker

    Args:
        sqlstmt (stmt): SQL that causes an exception
        exception (Exception): exception to raise

    Returns:
        _type_: _description_
    """
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
        if query == self.sqlstmt:
            raise self.exception

        return self.cursor.execute(query, args)

    def fetchall(self):
        return self.cursor.fetchall()

    def fetchone(self):
        return self.cursor.fetchone()


def create_organization(connexion_client):
    """テスト用オーガナイゼーション作成

    Args:
        connexion_client (obj): connexion_client

    Returns:
        dict: created organization info
    """
    organization_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_organization_id]
    json_parameter = test_organization_service_controller.sample_data_organization(organization_id)

    with requsts_mocker_default():
        resp_post_org = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_parameter)

        if resp_post_org.status_code != 200:
            raise Exception('FAILED : create organization')

        resp_get_users = connexion_client.get(
            f"/api/{organization_id}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers())

        if resp_get_users.status_code != 200:
            raise Exception('FAILED : get users')

    return {
        "organization_id": organization_id,
        "user_id": json.loads(resp_get_users.text)['data'][0]['id'],
        "preferred_username": json.loads(resp_get_users.text)['data'][0]['preferred_username']
    }


def create_workspace(connexion_client, organization_id, workspace_id, workspace_admin_user_id):
    """テスト用ワークスペース作成

    Args:
        connexion_client (obj): connexion_client
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        workspace_admin_user_id (str): workspace administrator user id

    Raises:
        Exception: _description_
    """
    with requsts_mocker_default():
        json_create_workspace = test_workspace_service_controller.sample_data_workspace(workspace_id, workspace_admin_user_id)

        resp_post_ws = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=workspace_admin_user_id),
            json=json_create_workspace)

        if resp_post_ws.status_code != 200:
            raise Exception('FAILED : create workspace')

    return {
        "workspace_id": workspace_id
    }


def delete_dict_item_written_info(target_vars):
    """delete written infomation item
        target_vars配下の作成日時・作成者・最終更新日時・最終更新者の情報を削除します
        ※target_varsの内容を書き換えますので注意

    Args:
        target_vars (_type_): _description_
    """
    delete_dict_item(
        target_vars,
        [
            'create_timestamp',
            'create_user',
            'last_update_timestamp',
            'last_update_user'
        ]
    )


def delete_dict_item(target_vars, delete_item_keys):
    """delete item
        target_vars配下の指定キーの情報を削除します
        ※target_varsの内容を書き換えますので注意

    Args:
        target_vars (_type_): _description_
        delete_item_keys (_type_): _description_
    """
    for target_var in (target_vars if type(target_vars) is list else [target_vars]):
        for delete_item_key in (delete_item_keys if type(delete_item_keys) is list else [delete_item_keys]):
            if delete_item_key in target_var:
                del target_var[delete_item_key]


def create_setting_notifications(connexion_client, organization_id, workspace_id, user_id):
    """テスト用通知先情報作成 / Creating test notification information

    Args:
        connexion_client (obj): connexion_client
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        workspace_admin_user_id (str): workspace administrator user id

    Raises:
        Exception: _description_
    """
    rows = []
    with requsts_mocker_default():

        rows.append(test_notification_service_controller.sample_data_mail('mix-mail-01'))
        rows.append(test_notification_service_controller.sample_data_teams_wf('mix-teams_wf-01'))
        rows.append(test_notification_service_controller.sample_data_webhook('mix-webhook-01'))

    logger = logging.getLogger("TEST")

    logger.info(f"json:{rows}")

    with requsts_mocker_default():
        resp_post = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/settings/notifications",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=user_id),
            json=rows)

        logger.info("test log")
        logger.info(resp_post.text)

        if resp_post.status_code != 200:
            raise Exception(f'FAILED : create_setting_notifications status:{resp_post.status_code}')

    return rows
