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
from unittest import mock
from tests.common import request_parameters, test_common
import ulid
import requests_mock
from unittest import mock

from common_library.common import const, validation
from libs import queries_notification
from common_library.common.libs import queries_bl_notification
from common_library.common import api_ita_admin_call

import logging

from common_library.common import bl_plan_service

logger = logging.getLogger(__name__)


def test_user_api(connexion_client):
    """user service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        # 登録データ
        post_user = sample_data_user("test-user1")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 200

        # Userデータの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2
        posted_user = [item for item in response.json["data"] if item["preferred_username"] == post_user["username"]][0]
        assert posted_user["firstName"] == post_user["firstName"]
        assert posted_user["lastName"] == post_user["lastName"]
        assert posted_user["email"] == post_user["email"]
        assert posted_user["affiliation"] == post_user["affiliation"]
        assert posted_user["service_account_user_type"] is None
        assert posted_user["description"] == post_user["description"]
        assert posted_user["enabled"] == post_user["enabled"]

        # Userデータの取得(1件)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        posted_user = response.json["data"]
        assert posted_user["firstName"] == post_user["firstName"]
        assert posted_user["lastName"] == post_user["lastName"]
        assert posted_user["email"] == post_user["email"]
        assert posted_user["affiliation"] == post_user["affiliation"]
        assert posted_user["service_account_user_type"] is None
        assert posted_user["description"] == post_user["description"]
        assert posted_user["enabled"] == post_user["enabled"]

        # Userデータの更新
        put_user = sample_data_put_user(post_user)

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 200

        # Userデータの取得(1件)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        puted_user = response.json["data"]
        assert puted_user["firstName"] == put_user["firstName"]
        assert puted_user["lastName"] == put_user["lastName"]
        assert puted_user["email"] == put_user["email"]
        assert puted_user["affiliation"] == put_user["affiliation"]
        assert posted_user["service_account_user_type"] is None
        assert puted_user["description"] == put_user["description"]
        assert puted_user["enabled"] == put_user["enabled"]

        # Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200

        # Userデータの取得(1件)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 404


def test_user_validation(connexion_client):
    """test user validation

    Args:
        connexion_client (_type_): _description_
    """
    validate = validation.validate_user_name(None)
    assert not validate.ok

    validate = validation.validate_user_name("t".ljust(const.length_user_name, "_"))
    assert validate.ok

    validate = validation.validate_user_name("t".ljust(const.length_user_name + 1, "_"))
    assert not validate.ok

    validate = validation.validate_user_name('!')
    assert not validate.ok

    validate = validation.validate_user_name('a_')
    assert validate.ok

    validate = validation.validate_user_name('_a')
    assert not validate.ok

    validate = validation.validate_user_email(None)
    assert validate.ok

    validate = validation.validate_user_email("".ljust(const.length_destination_email + 1, "_"))
    assert not validate.ok

    validate = validation.validate_user_email("test")
    assert not validate.ok

    validate = validation.validate_user_email("test@example.com")
    assert validate.ok

    validate = validation.validate_user_firstName(None)
    assert validate.ok

    validate = validation.validate_user_firstName("t".ljust(const.length_user_firstName, "_"))
    assert validate.ok

    validate = validation.validate_user_firstName("t".ljust(const.length_user_firstName + 1, "_"))
    assert not validate.ok

    validate = validation.validate_user_lastName(None)
    assert validate.ok

    validate = validation.validate_user_lastName("t".ljust(const.length_user_lastName, "_"))
    assert validate.ok

    validate = validation.validate_user_lastName("t".ljust(const.length_user_lastName + 1, "_"))
    assert not validate.ok

    validate = validation.validate_password(None)
    assert not validate.ok

    validate = validation.validate_password("t".ljust(const.length_user_password, "_"))
    assert validate.ok

    validate = validation.validate_password("t".ljust(const.length_user_password + 1, "_"))
    assert not validate.ok

    validate = validation.validate_password_temporary(True)
    assert validate.ok

    validate = validation.validate_password_temporary('false')
    assert validate.ok

    validate = validation.validate_password_temporary(None)
    assert not validate.ok

    # validate = validation.validate_user_affiliation(None)
    # assert validate.ok

    validate = validation.validate_user_affiliation("t".ljust(const.length_user_affiliation, "_"))
    assert validate.ok

    validate = validation.validate_user_affiliation("t".ljust(const.length_user_affiliation + 1, "_"))
    assert not validate.ok

    # validate = validation.validate_user_description(None)
    # assert validate.ok

    validate = validation.validate_user_description("t".ljust(const.length_user_description, "_"))
    assert validate.ok

    validate = validation.validate_user_description("t".ljust(const.length_user_description + 1, "_"))
    assert not validate.ok

    validate = validation.validate_user_enabled('True')
    assert validate.ok

    validate = validation.validate_user_enabled(False)
    assert validate.ok

    validate = validation.validate_user_enabled(None)
    assert not validate.ok


def test_user_list(connexion_client):
    """test user_list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500


def test_user_create(connexion_client):
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user1")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 200

    with test_common.requsts_mocker_default(), \
            mock.patch.object(bl_plan_service, 'organization_limits_get', return_value={const.RESOURCE_COUNT_USERS: 2}):

        # 登録データ
        post_user = sample_data_user("limit-over")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        # 登録データ
        post_user = sample_data_user("validate-error")

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"username": "_"}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"email": "_"}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"firstName": "t".ljust(const.length_user_firstName + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"lastName": "t".ljust(const.length_user_lastName + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"password_temporary": "_"}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"affiliation": "t".ljust(const.length_user_affiliation + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"description": "t".ljust(const.length_user_description + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**post_user, **{"enabled": "_"}})

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        # 登録データ
        post_user = sample_data_user("token-error")

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ(登録済みのデータ)
        post_user = sample_data_user("test-user1")

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("post-400")

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=400,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("post-501")

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=501,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 500


def test_user_get(connexion_client):
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user1")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 200

        # Userデータの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        posted_user = response.json["data"][0]

        # 登録データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        posted_user = response.json["data"]
        assert posted_user["firstName"] == post_user["firstName"]
        assert posted_user["lastName"] == post_user["lastName"]
        assert posted_user["email"] == post_user["email"]
        assert posted_user["affiliation"] == post_user["affiliation"]
        assert posted_user["service_account_user_type"] is None
        assert posted_user["description"] == post_user["description"]
        assert posted_user["enabled"] == post_user["enabled"]

    with test_common.requsts_mocker_default() as requests_mocker:
        # token取得失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        # 登録データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # 存在しないデータの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 404

    with test_common.requsts_mocker_default() as requests_mocker:
        # user取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*'),
            status_code=500,
            json={})

        # データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500


def test_user_update(connexion_client):
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user1")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 200

        # Userデータの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        posted_user = response.json["data"][0]

        # Userデータの更新
        put_user = sample_data_put_user(post_user)

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # JSONでないbody
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            # content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            data="dummy-data")

        # connexionでhttp-415応答
        assert response.status_code >= 400 or response.status_code <= 490

    with test_common.requsts_mocker_default() as requests_mocker:
        # Validation Error Route

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"email": "error"}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"firstName": "t".ljust(const.length_user_firstName + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"lastName": "t".ljust(const.length_user_lastName + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"password_temporary": "_"}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"affiliation": "t".ljust(const.length_user_affiliation + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"description": "t".ljust(const.length_user_description + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"enabled": "_"}})

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # token取得失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # role取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/.*/roles/.*/users'),
            status_code=500,
            json={})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # オーガナイゼーション管理者を無効化
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{organization['user_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_user, **{"enabled": False}})

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # 存在しないユーザーを更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 404

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=500,
            json={})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(404)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=404,
            json={})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 404

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(400)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=400,
            json={})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(500)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=500,
            json={"errorMessage": "error message"})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_user)

        assert response.status_code == 500


def test_user_delete(connexion_client):
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user1")

        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_user)

        assert response.status_code == 200

        # Userデータの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        posted_user = response.json["data"][0]

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # role取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/.*/roles/.*/users'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # オーガナイゼーション管理者削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{organization['user_id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # 存在しないユーザーの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(400)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=400,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(500)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_user["id"]}'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/users/{posted_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500


def sample_data_user(username, update={}):
    return {
        "username": username,
        "email": f'{username}@example.com',
        "firstName": f'first {username}',
        "lastName": f'last {username}',
        "password": "password",
        "password_temporary": False,
        "affiliation": f'affiliation {username}',
        "description": f'description {username}',
        "enabled": True
    }


def sample_data_put_user(post_user):
    return {
        "email": f'upd-{post_user["email"]}',
        "firstName": f'{post_user["firstName"]} upd',
        "lastName": f'{post_user["firstName"]} upd',
        "password": "password-upd",
        "password_temporary": True,
        "affiliation": f'{post_user["affiliation"]} upd',
        "description": f'{post_user["description"]} upd',
        "enabled": False
    }
