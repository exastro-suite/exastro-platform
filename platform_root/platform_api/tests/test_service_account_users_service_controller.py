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

# import copy
import re
import requests_mock
import json
import jwt

from tests.common import request_parameters, test_common
from common_library.common import const, validation, common
from common_library.common import api_keycloak_users, api_keycloak_tokens, api_keycloak_roles, api_keycloak_realms
from common_library.common import bl_service_account_user

from common_library.common.db import DBconnector

from tests.test_user_service_controller import sample_data_user
from tests.test_user_service_controller import sample_data_put_user


def test_service_account_user_service_api(connexion_client):
    """service account user service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():

        # 0件のget確認
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

        # service account userの追加
        service_account_user1_data = sample_data_service_account_user('ansible-service-account-user-1', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=service_account_user1_data
        )

        assert response.status_code == 200

        # 作成したservice account userの確認
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        assert response.json["data"][0]["username"] == service_account_user1_data["username"]
        assert response.json["data"][0]["service_account_user_type"] == service_account_user1_data["service_account_user_type"]
        assert response.json["data"][0]["description"] == service_account_user1_data["description"]

        # service account userの追加
        service_account_user2_data = sample_data_service_account_user('oase-service-account-1', const.SERVICE_ACCOUNT_USER_TYPE_OASE)
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=service_account_user2_data
        )

        assert response.status_code == 200

        # 作成したservice account userの確認(list)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2
        response_user1_row = [row for row in response.json["data"] if row["username"] == service_account_user1_data["username"]]
        response_user2_row = [row for row in response.json["data"] if row["username"] == service_account_user2_data["username"]]
        assert response_user1_row[0]["service_account_user_type"] == service_account_user1_data["service_account_user_type"]
        assert response_user1_row[0]["description"] == service_account_user1_data["description"]
        assert response_user2_row[0]["service_account_user_type"] == service_account_user2_data["service_account_user_type"]
        assert response_user2_row[0]["description"] == service_account_user2_data["description"]

        #
        # service account user2の取得(get)
        #
        # service account user2データの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={service_account_user2_data["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user2 = response.json["data"][0]

        # 登録データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        posted_service_account_user2 = response.json["data"]
        assert posted_service_account_user2["username"] == service_account_user2_data["username"]
        assert posted_service_account_user2["service_account_user_type"] == service_account_user2_data["service_account_user_type"]
        assert posted_service_account_user2["description"] == service_account_user2_data["description"]
        
        # service account user2の更新
        # 更新データ
        put_service_account_user2 = sample_data_put_service_account_user(service_account_user2_data)

        # Userデータの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_service_account_user2
        )
        
        assert response.status_code == 200
        
        # 更新の確認
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        updated_service_account_user2 = response.json["data"]
        posted_service_account_user2 = response.json["data"]
        assert updated_service_account_user2["description"] == put_service_account_user2["description"]

        # service account userの削除(user2)
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"])
        )

        assert response.status_code == 200
        
        # 1件のget確認
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        
        # user1でtokenを発行する
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{response_user1_row[0]["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {}).get("refresh_token", "")
        assert refresh_token != ""
        # jwt decode可能でユーザーが正しいこと
        assert jwt.decode(refresh_token, options={"verify_signature": False})["sub"] == response_user1_row[0]['id']
        
        # token削除
        # token削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{response_user1_row[0]["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {})
        assert refresh_token is None


def test_service_account_user_service_validate():
    """service account user service api validate

    Args:
        connexion_client (_type_): _description_
    """
    #
    # test validate_service_account_user_type
    #
    validate = validation.validate_service_account_user_type("")
    assert not validate.ok

    validate = validation.validate_service_account_user_type("error-value")
    assert not validate.ok

    validate = validation.validate_service_account_user_type(const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
    assert validate.ok

    validate = validation.validate_service_account_user_type(const.SERVICE_ACCOUNT_USER_TYPE_OASE)
    assert validate.ok


def test_service_account_user_create(connexion_client):
    """service account user create api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # token発行
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    #
    # tests
    #
    with test_common.requsts_mocker_default():
        #
        # normally
        #
        normally_test_username = 'service-account-user-ansible-normally'
        normally_test_json = sample_data_service_account_user(normally_test_username, const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=normally_test_json
        )
        assert response.status_code == 200
        # ユーザーが作成されていること / 作成されたユーザーの情報が正しいこと
        create_users = __get_user(organization['organization_id'], 'service-account-user-ansible-normally', token)
        assert len(create_users) == 1
        assert create_users[0]["username"] == normally_test_json["username"]
        assert create_users[0]["attributes"]["service_account_user_type"][0] == normally_test_json["service_account_user_type"]
        assert create_users[0]["attributes"]["description"][0] == normally_test_json["description"]

        # 作成したユーザにservice accountロールが付与されていること
        resp_get_user_role = api_keycloak_roles.user_role_get(realm_name=organization['organization_id'], user_id=create_users[0]["id"], client_id=private.user_token_client_id, token=token)
        assert resp_get_user_role.status_code == 200
        resp_get_user_role_json = json.loads(resp_get_user_role.text)
        assert len(resp_get_user_role_json) == 1
        assert resp_get_user_role_json[0]["name"] == bl_service_account_user.service_account_user_role_name(workspace['workspace_id'], normally_test_json["service_account_user_type"])

    with test_common.requsts_mocker_default():
        #
        # validate error route
        #
        service_account_user_data_validate_error = sample_data_service_account_user('validation-error', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**service_account_user_data_validate_error, **{"username": "_error-id"}}
        )
        assert response.status_code == 400

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**service_account_user_data_validate_error, **{"service_account_user_type": "dummy"}}
        )
        assert response.status_code == 400

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**service_account_user_data_validate_error, **{"description": "t".ljust(const.length_user_description + 1, "_")}}
        )
        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # Get a service account token error
        #
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('get-token-error', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 401
        assert not __exists_user(organization['organization_id'], 'get-token-error', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # Exists user
        #
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('exists_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 200
        assert __exists_user(organization['organization_id'], 'exists_user01', token)

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('exists_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 400
        assert __exists_user(organization['organization_id'], 'exists_user01', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # User Create Error(HTTP 400)
        #
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=400,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('create_user_error_400', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 400
        assert not __exists_user(organization['organization_id'], 'create_user_error_400', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # User Create Error(HTTP 500)
        #
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('create_user_error_500', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'create_user_error_500', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # Get User Error(HTTP 500)
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('get_user_error_500', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        # create成功 → get失敗なので、消込のIDがわからず、削除できないため、ここだけは失敗だけどuserが残る
        # assert not __exists_user(organization['organization_id'], 'get_user_error_500', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # Get User not found
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=200,
            json=[])

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('create_user_not_found', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        # create成功 → get失敗なので、消込のIDがわからず、削除できないため、ここだけは失敗だけどuserが残る
        # assert not __exists_user(organization['organization_id'], 'get_user_error_500', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # service account role not found
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/][^/]*/roles/'),
            status_code=404,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('service_account_role_not_found', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'service_account_role_not_found', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # service account role mapping error
        #
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/[^/][^/]*/role-mappings/clients/'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_service_account_user('service_account_role_mapping_error', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'service_account_role_mapping_error', token)


def test_service_account_user_get(connexion_client):
    """service account user get api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    
    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        # 登録データ
        post_service_account_user = sample_data_service_account_user("test-user1", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_service_account_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_service_account_user["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user = response.json["data"][0]
        
        # 登録データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        posted_service_account_user = response.json["data"]
        assert posted_service_account_user["username"] == post_service_account_user["username"]
        assert posted_service_account_user["service_account_user_type"] == post_service_account_user["service_account_user_type"]
        assert posted_service_account_user["description"] == post_service_account_user["description"]

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # token取得失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})
        
        # 登録データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 401

    #
    # case : not exists service account user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 404

    #
    # case : get user failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # user取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*'),
            status_code=500,
            json={})

        # データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500

    #
    # case : get realm info failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400


def test_service_account_user_update(connexion_client):
    """service account user update api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        # 登録データ
        post_service_account_user = sample_data_service_account_user("test-user1", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_service_account_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_service_account_user["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user = response.json["data"][0]
        
        # 登録データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        posted_service_account_user = response.json["data"]

        # 更新データ
        put_service_account_user = sample_data_put_service_account_user(post_service_account_user)

        # Userデータの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_service_account_user
        )
        
        assert response.status_code == 200
        
        # 更新データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        updated_service_account_user = response.json["data"]
        posted_service_account_user = response.json["data"]
        assert updated_service_account_user["description"] == put_service_account_user["description"]

    #
    # case : not json body
    #
    with test_common.requsts_mocker_default():
        # JSONでないbodyで更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            # content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            data="dummy-data"
        )

        # connexionでhttp-415応答
        assert response.status_code >= 400 or response.status_code <= 490

    #
    # case : Validation Error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # description
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_service_account_user, **{"description": "t".ljust(const.length_user_description + 1, "_")}}
        )

        assert response.status_code == 400

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # token取得失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})
        
        # Userデータの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_service_account_user
        )
        
        assert response.status_code == 401

    #
    # case : not exists service account user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 404

    #
    # case : get service account user failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # user取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*'),
            status_code=500,
            json={})
        
        # データの取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500

    #
    # case : not updatable service account user
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user2")
        
        # User登録（サービスアカウントユーザーでない）
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/users',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_user["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_user = response.json["data"][0]
        
        # Userデータの更新
        put_user = sample_data_put_user(post_user)

        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_user
        )
        
        assert response.status_code == 400

    #
    # case : get user role failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # role取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/role-mappings'),
            status_code=500,
            json={})

        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_service_account_user
        )

        assert response.status_code == 500

    #
    # case : not exist service account user in the target workspace
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 対象のworkspaceのservice account userでない
        # ユーザー登録
        # 登録データ
        workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])
        post_service_account_user2 = sample_data_service_account_user("test-service-account-user2", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace2["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_service_account_user2
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_service_account_user2["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user2 = response.json["data"][0]

        # Userデータの更新
        put_user2 = sample_data_put_service_account_user(post_service_account_user2)

        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_user2
        )
        
        assert response.status_code == 400

    #
    # case : update not exists service account user
    #
    with test_common.requsts_mocker_default():
        # 存在しないユーザーを更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_service_account_user
        )

        assert response.status_code == 404

    #
    # case : update service account user failed(404)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(404)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=404,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_service_account_user
        )
        
        assert response.status_code == 404

    #
    # case : update service account user failed(400)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(400)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=400,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_service_account_user
        )
        
        assert response.status_code == 400

    #
    # case : update service account user failed(500)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(500)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=500,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_service_account_user
        )
        
        assert response.status_code == 500


def test_service_account_user_delete(connexion_client):
    """service account user delete api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    
    #
    # Service Account User登録
    #
    with test_common.requsts_mocker_default():
        # 登録データ
        post_service_account_user = sample_data_service_account_user("test-user1", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        
        # Service Account User登録
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_service_account_user
        )
        assert response.status_code == 200
        
        # Service Account Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_service_account_user["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user = response.json["data"][0]

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # token取得失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})
        
        # Service Account Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_service_account_user
        )

        assert response.status_code == 401

    #
    # case : not exists service account user
    #
    with test_common.requsts_mocker_default():
        # Service Account Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 404

    #
    # case : get user failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Service Account user取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*'),
            status_code=500,
            json={})
        
        # Service Account Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=posted_service_account_user
        )

        assert response.status_code == 500

    #
    # case : not updatable service account user
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user2")
        
        # User登録（サービスアカウントユーザーでない）
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/users',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_user["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_user = response.json["data"][0]
        
        # Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_user
        )
        
        assert response.status_code == 400

    #
    # case : get user role failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # role取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/role-mappings'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_service_account_user
        )

        assert response.status_code == 500

    #
    # case : not exist service account user in the target workspace
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 対象のworkspaceのservice account userでない
        # ユーザー登録
        # 登録データ
        workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])
        post_service_account_user2 = sample_data_service_account_user("test-service-account-user2", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        
        # Service Account User登録
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace2["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_service_account_user2
        )
        assert response.status_code == 200
        
        # Service Account Userデータの取得(idの取得)
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/users?search={post_service_account_user2["username"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_service_account_user2 = response.json["data"][0]

        # Service Account Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user2["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_service_account_user2
        )
        
        assert response.status_code == 400

    #
    # case : delete not exists service account user
    #
    with test_common.requsts_mocker_default():
        # 存在しないユーザーを削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/xxxx',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_service_account_user
        )

        assert response.status_code == 404

    #
    # case : update service account user failed(404)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(404)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=404,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_service_account_user
        )
        
        assert response.status_code == 404

    #
    # case : update service account user failed(400)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(400)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=400,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_service_account_user
        )
        
        assert response.status_code == 400

    #
    # case : delete service account user failed(500)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(500)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_service_account_user["id"]}'),
            status_code=500,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_service_account_user
        )
        
        assert response.status_code == 500

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        # Userデータの削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{posted_service_account_user["id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"])
        )

        assert response.status_code == 200


def test_service_account_user_token_create(connexion_client):
    """test service_account_user_token_create

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    #
    # token発行
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    service_account_user01 = __make_sample_service_account_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_service_account_user('test_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE))

    service_account_user_ws2 = __make_sample_service_account_user(
        connexion_client,
        organization['organization_id'],
        workspace2['workspace_id'],
        organization['user_id'],
        token,
        sample_data_service_account_user('test_user_ws2', const.SERVICE_ACCOUNT_USER_TYPE_OASE))

    non_service_account_user = __make_sample_non_service_account_user(
        connexion_client,
        organization['organization_id'],
        organization['user_id'],
        token,
        "non_service_account_user")

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {}).get("refresh_token", "")
        assert refresh_token != ""
        # jwt decode可能でユーザーが正しいこと
        assert jwt.decode(refresh_token, options={"verify_signature": False})["sub"] == service_account_user01['id']

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Get a service account token error
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 401

    #
    # case : not exists service account user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/not-exists-user-id/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : get user failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # get user error
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{service_account_user01["id"]}$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 500

    #
    # case : service account userでないユーザーに対するtokenの発行
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{non_service_account_user["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : role取得失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{service_account_user01["id"]}/role-mappings$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 500

    #
    # case : 別のworkspaceのservice account userに対するtokenの発行
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user_ws2["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : realm情報取得失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : パスワード再設定失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{service_account_user01["id"]}/reset-password$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : service account user token発行エラー
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Get a service account user account token error
        def additional_matcher(request):
            return f'username={service_account_user01["username"]}' in request.text

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={},
            additional_matcher=additional_matcher)

        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 500


def test_service_account_user_token_list(connexion_client):
    """test service_account_user_token_list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # token発行
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]
    
    service_account_user01 = __make_sample_service_account_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_service_account_user('test_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE))
    
    # token作成
    for i in range(2):
        # 2件作成
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
    # 2件目のみチェック
    assert response.status_code == 200
    refresh_token = response.json.get("data", {}).get("refresh_token", "")
    assert refresh_token != ""

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        # token取得
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
    assert response.status_code == 200
    refresh_token = response.json.get("data", {})
    assert len(refresh_token) == 2

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Get a service account token error
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
    assert response.status_code == 401

    #
    # case : offline sessionの取得に失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # faild keycloak api offline_sessions_delete
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{service_account_user01["id"]}/offline-sessions/'),
            status_code=500,
            json={})
        
        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
        
    assert response.status_code == 400
    
    #
    # case : realmの取得に失敗 - get realm info failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}$'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
    assert response.status_code == 400


def test_service_account_user_token_delete(connexion_client):
    """test service_account_user_token_delete

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # token発行
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]
    
    service_account_user01 = __make_sample_service_account_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_service_account_user('test_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE))
    # token作成
    response = connexion_client.post(
        f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
        headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
        json={}
    )
    assert response.status_code == 200
    refresh_token = response.json.get("data", {}).get("refresh_token", "")
    assert refresh_token != ""

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():

        # token削除
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {})
        assert refresh_token is None

    #
    # case : get token error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Get a service account token error
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
        assert response.status_code == 401

    #
    # case : offline sessionの削除に失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # faild keycloak api offline_sessions_delete
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/consents/.*'),
            status_code=500,
            json={})
        
        response = connexion_client.delete(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])])
        )
        
        assert response.status_code == 500


def test_temporary_password(connexion_client):
    """一時パスワード生成のポリシー準拠テスト

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # token発行
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    service_account_user01 = __make_sample_service_account_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_service_account_user('test_user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE))

    #
    # case: upperCase length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "upperCase(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: lowerCase length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "lowerCase(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: digits length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "digits(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: specialChars length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "specialChars(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: maxLength length 100
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "maxLength(100)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: length length 5
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "length(5)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: length length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "length(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: 混合パターン１
    #
    resp_upd = api_keycloak_realms.realm_update(
        organization['organization_id'],
        {"passwordPolicy": "upperCase(1) and lowerCase(1) and digits(1) and specialChars(1) and length(8)"},
        token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: 混合パターン２
    #
    resp_upd = api_keycloak_realms.realm_update(
        organization['organization_id'],
        {"passwordPolicy": "upperCase(6) and lowerCase(6) and digits(6) and specialChars(6) and length(40)"},
        token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200

    #
    # case: 混合パターン３
    #
    resp_upd = api_keycloak_realms.realm_update(
        organization['organization_id'],
        {"passwordPolicy": "upperCase(2) and lowerCase(2) and digits(2) and specialChars(2) and length(10) and maxLength(60)"},
        token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200


def __exists_user(organization_id, username, token):
    """exist user

    Args:
        organization_id (str): organization id
        username (str): username
        token (str): token

    Raises:
        Exception: keycloak api response http error

    Returns:
        bool: True:Exists / False:Not exists
    """
    response = api_keycloak_users.user_get(
        realm_name=organization_id, user_name=username, token=token
    )
    if response.status_code == 200:
        return len(json.loads(response.text)) >= 1
    elif response.status_code == 404:
        return False
    else:
        raise Exception('Exception: api_keycloak_users.user_get')


def __get_user(organization_id, username, token):
    """exist user

    Args:
        organization_id (str): organization id
        username (str): username
        token (str): token

    Returns:
        list[dict]: 
    """
    response = api_keycloak_users.user_get(
        realm_name=organization_id, user_name=username, token=token
    )
    if response.status_code == 200:
        return json.loads(response.text)
    else:
        raise Exception('Exception: api_keycloak_users.user_get')


def __make_sample_service_account_user(connexion_client, organization_id, workspace_id, user_id, token, service_account_user_json):
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/api/{organization_id}/platform/workspaces/{workspace_id}/service-account-users',
            headers=request_parameters.request_headers(user_id),
            json=service_account_user_json
        )
        assert response.status_code == 200

        return __get_user(organization_id, service_account_user_json["username"], token)[0]


def __make_sample_non_service_account_user(connexion_client, organization_id, user_id, token, username):

    with test_common.requsts_mocker_default():
        # 登録データ
        post_user = sample_data_user(username)

        # User登録
        response = connexion_client.post(
            f'/api/{organization_id}/platform/users',
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=post_user)

        assert response.status_code == 200

        return __get_user(organization_id, username, token)[0]


def sample_data_service_account_user(username, service_account_user_type):
    """service account user create sample data (body json)

    Args:
        username (str): _description_
        service_account_user_type (str): _description_

    Returns:
        dict: service account user create body json
    """
    return {
        "username": username,
        "service_account_user_type": service_account_user_type,
        "description": f'description {username}'
    }


def sample_data_put_service_account_user(post_user):
    return {
        "description": f'{post_user["description"]} upd',
    }

