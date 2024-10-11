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
import re
# from unittest import mock
from contextlib import closing
import jwt
import requests_mock

from common_library.common.db import DBconnector
from libs import queries_token

from tests.common import test_common, request_parameters
from tests import test_organization_service_controller


def test_token_api_system_manager(connexion_client):
    """test token service

    Args:
        organization_id (str): organization id

    Returns:
        _type_: _description_
    """
    with test_common.requsts_mocker_default():
        #
        # token取得失敗
        #
        response = connexion_client.post(
            "/auth/realms/master/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": "_platform-api",
                "grant_type": "password",
                "username": "admin",
                "password": "ng-password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 401

        #
        # token取得成功
        #
        response = connexion_client.post(
            "/auth/realms/master/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": "_platform-api",
                "grant_type": "password",
                "username": "admin",
                "password": "password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 200
        assert response.json['access_token'] is not None
        assert response.json['refresh_token'] is not None

        user_id = jwt.decode(response.json['access_token'], options={"verify_signature": False}).get("sub")

        # DBにデータができているか
        with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
            cursor.execute("SELECT * FROM T_REFRESH_TOKEN WHERE USER_ID = %(USER_ID)s", {"USER_ID": user_id})
            t_refresh_token = cursor.fetchall()

            assert t_refresh_token is not None
            assert len(t_refresh_token) == 1
            assert t_refresh_token[0]['EXPIRE_TIMESTAMP'] is not None

        #
        # refresh tokenの一覧取得
        #
        response = connexion_client.get(
            "/api/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200
        assert len(response.json['data']) == 1

        #
        # DBにダミーのデータ登録（削除範囲とならないことの確認のため）
        #
        with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
            cursor.execute(
                "INSERT INTO T_REFRESH_TOKEN (USER_ID, SESSION_ID) VALUES (%(USER_ID)s, %(SESEION_ID)s)",
                {
                    "USER_ID": "dummy_user_id",
                    "SESEION_ID": "dummy_session_id",
                })
            conn.commit()

        #
        # token削除
        #
        response = connexion_client.delete(
            "/api/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200

        with closing(DBconnector().connect_platformdb()) as conn, conn.cursor() as cursor:
            # 自分のID分が消えているか
            cursor.execute("SELECT COUNT(*) as COUNT_ROWS FROM T_REFRESH_TOKEN WHERE USER_ID = %(USER_ID)s", {"USER_ID": user_id})
            t_refresh_token = cursor.fetchone()

            assert t_refresh_token is not None
            assert t_refresh_token["COUNT_ROWS"] == 0

            # 他人のID分が消えていないか
            cursor.execute("SELECT COUNT(*) as COUNT_ROWS FROM T_REFRESH_TOKEN")
            t_refresh_token = cursor.fetchone()
            assert t_refresh_token is not None
            assert t_refresh_token["COUNT_ROWS"] == 1

        #
        # refresh tokenの一覧取得
        #
        response = connexion_client.get(
            "/api/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200
        assert len(response.json['data']) == 0


def test_token_api_organization_user(connexion_client):
    """test create token

    Args:
        organization_id (str): organization id

    Returns:
        _type_: _description_
    """
    organization = test_common.create_organization(connexion_client)
    organization_info = test_organization_service_controller.sample_data_organization(organization['organization_id'])

    with test_common.requsts_mocker_default():
        #
        # token取得失敗
        #
        response = connexion_client.post(
            f"/auth/realms/{organization['organization_id']}/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": f"_{organization['organization_id']}-api",
                "grant_type": "password",
                "username": organization_info["organization_managers"][0]["username"],
                "password": "ng-password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 401

        #
        # token取得成功
        #
        response = connexion_client.post(
            f"/auth/realms/{organization['organization_id']}/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": f"_{organization['organization_id']}-api",
                "grant_type": "password",
                "username": organization_info["organization_managers"][0]["username"],
                "password": organization_info["organization_managers"][0]["credentials"][0]["value"],
                "scope": "openid offline_access",
            })

        assert response.status_code == 200
        assert response.json['access_token'] is not None
        assert response.json['refresh_token'] is not None

        user_id = jwt.decode(response.json['access_token'], options={"verify_signature": False}).get("sub")

        # DBにデータができているか
        with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn, conn.cursor() as cursor:
            cursor.execute("SELECT * FROM T_REFRESH_TOKEN WHERE USER_ID = %(USER_ID)s", {"USER_ID": user_id})
            t_refresh_token = cursor.fetchall()

            assert t_refresh_token is not None
            assert len(t_refresh_token) == 1
            assert t_refresh_token[0]['EXPIRE_TIMESTAMP'] is not None

        #
        # refresh tokenの一覧取得
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200
        assert len(response.json['data']) == 1

        #
        # DBにダミーのデータ登録（削除範囲とならないことの確認のため）
        #
        with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn, conn.cursor() as cursor:
            cursor.execute(
                "INSERT INTO T_REFRESH_TOKEN (USER_ID, SESSION_ID) VALUES (%(USER_ID)s, %(SESEION_ID)s)",
                {
                    "USER_ID": "dummy_user_id",
                    "SESEION_ID": "dummy_session_id",
                })
            conn.commit()

        #
        # token削除
        #
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200

        with closing(DBconnector().connect_orgdb(organization['organization_id'])) as conn, conn.cursor() as cursor:
            # 自分のID分が消えているか
            cursor.execute("SELECT COUNT(*) as COUNT_ROWS FROM T_REFRESH_TOKEN WHERE USER_ID = %(USER_ID)s", {"USER_ID": user_id})
            t_refresh_token = cursor.fetchone()

            assert t_refresh_token is not None
            assert t_refresh_token["COUNT_ROWS"] == 0

            # 他人のID分が消えていないか
            cursor.execute("SELECT COUNT(*) as COUNT_ROWS FROM T_REFRESH_TOKEN")
            t_refresh_token = cursor.fetchone()
            assert t_refresh_token is not None
            assert t_refresh_token["COUNT_ROWS"] == 1

        #
        # refresh tokenの一覧取得
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers={"User-Id": user_id})

        assert response.status_code == 200
        assert len(response.json['data']) == 0


def test_token_create(connexion_client):
    """test token_create

    Args:
        connexion_client (_type_): _description_
    """
    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_token.SQL_INSERT_REFRESH_TOKEN, Exception("DB Error Test")):
        #
        # DB登録失敗
        #
        response = connexion_client.post(
            "/auth/realms/master/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": "_platform-api",
                "grant_type": "password",
                "username": "admin",
                "password": "password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 500


def test_refresh_token_delete(connexion_client):
    """test refresh_token_delete

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # faild keycloak api offline_sessions_delete
        #
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/consents/.*'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500
        assert response.json["result"] == '500-30001'


def test_refresh_token_delete_for_mng(connexion_client):
    """test refresh_token_delete

    Args:
        connexion_client (_type_): _description_
    """
    with test_common.requsts_mocker_default() as requests_mocker:
        # (事前処理) token取得してuser_idを取得する
        response = connexion_client.post(
            "/auth/realms/master/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": "_platform-api",
                "grant_type": "password",
                "username": "admin",
                "password": "password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 200
        assert response.json['access_token'] is not None
        assert response.json['refresh_token'] is not None

        user_id = jwt.decode(response.json['access_token'], options={"verify_signature": False}).get("sub")

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # faild keycloak api offline_sessions_delete
        #
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/master/users/.*/consents/.*'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            "/api/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(user_id))

        assert response.status_code == 500
        assert response.json["result"] == '500-30001'


def test_refresh_token_list(connexion_client):
    """test refresh_token_list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-404 keycloak api offline_sessions_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/offline-sessions/.*'),
            status_code=404,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json['data']) == 0

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-500 keycloak api offline_sessions_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/offline-sessions/.*'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 400
        assert response.json['result'] == '400-30001'

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-500 keycloak api realm_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}$'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 400
        assert response.json['result'] == '400-30002'


def test_refresh_token_list_for_mng(connexion_client):
    """test refresh_token_list_for_mng

    Args:
        connexion_client (_type_): _description_
    """
    with test_common.requsts_mocker_default() as requests_mocker:
        # (事前処理) token取得してuser_idを取得する
        response = connexion_client.post(
            "/auth/realms/master/protocol/openid-connect/token",
            content_type='application/x-www-form-urlencoded',
            headers={"User-Id": "-"},
            data={
                "client_id": "_platform-api",
                "grant_type": "password",
                "username": "admin",
                "password": "password",
                "scope": "openid offline_access",
            })

        assert response.status_code == 200
        assert response.json['access_token'] is not None
        assert response.json['refresh_token'] is not None

        user_id = jwt.decode(response.json['access_token'], options={"verify_signature": False}).get("sub")

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-404 keycloak api offline_sessions_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/master/users/.*/offline-sessions/.*'),
            status_code=404,
            json={})

        response = connexion_client.get(
            "/api/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(user_id))

        assert response.status_code == 200
        assert len(response.json['data']) == 0

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-500 keycloak api offline_sessions_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/master/users/.*/offline-sessions/.*'),
            status_code=500,
            json={})

        response = connexion_client.get(
            "/api/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(user_id))

        assert response.status_code == 400
        assert response.json['result'] == '400-30001'

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # http-500 keycloak api realm_get
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/master$'),
            status_code=500,
            json={})

        response = connexion_client.get(
            "/api/platform/users/_current/refresh_tokens",
            headers=request_parameters.request_headers(user_id))

        assert response.status_code == 400
        assert response.json['result'] == '400-30002'
