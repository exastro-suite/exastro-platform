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
from common_library.common import bl_agent_user

from common_library.common.db import DBconnector

from tests.test_user_service_controller import sample_data_user
from tests.test_user_service_controller import sample_data_put_user


def test_agent_user_service_api(connexion_client):
    """agent user service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():

        # 0件のget確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

        # agent userの追加
        agent_user1_data = sample_data_agent_user('ansible-agent-1', const.AGENT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=agent_user1_data
        )

        assert response.status_code == 200

        # 作成したagent userの確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        assert response.json["data"][0]["username"] == agent_user1_data["username"]
        assert response.json["data"][0]["agent_user_type"] == agent_user1_data["agent_user_type"]
        assert response.json["data"][0]["description"] == agent_user1_data["description"]

        # agent userの追加
        agent_user2_data = sample_data_agent_user('oase-agent-1', const.AGENT_USER_TYPE_OASE)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=agent_user2_data
        )

        assert response.status_code == 200

        # 作成したagent userの確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2
        response_user1_row = [row for row in response.json["data"] if row["username"] == agent_user1_data["username"]]
        response_user2_row = [row for row in response.json["data"] if row["username"] == agent_user2_data["username"]]
        assert response_user1_row[0]["agent_user_type"] == agent_user1_data["agent_user_type"]
        assert response_user1_row[0]["description"] == agent_user1_data["description"]
        assert response_user2_row[0]["agent_user_type"] == agent_user2_data["agent_user_type"]
        assert response_user2_row[0]["description"] == agent_user2_data["description"]

        # user1でtokenを発行する
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{response_user1_row[0]['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {}).get("refresh_token", "")
        assert refresh_token != ""
        # jwt decode可能でユーザーが正しいこと
        assert jwt.decode(refresh_token, options={"verify_signature": False})["sub"] == response_user1_row[0]['id']


def test_agent_user_service_validate():
    """agent user service api validate

    Args:
        connexion_client (_type_): _description_
    """
    #
    # test validate_agent_user_type
    #
    validate = validation.validate_agent_user_type("")
    assert not validate.ok

    validate = validation.validate_agent_user_type("error-value")
    assert not validate.ok

    validate = validation.validate_agent_user_type(const.AGENT_USER_TYPE_ANSIBLE)
    assert validate.ok

    validate = validation.validate_agent_user_type(const.AGENT_USER_TYPE_OASE)
    assert validate.ok


def test_agent_user_create(connexion_client):
    """agent user create api test

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
        normally_test_username = 'agent-user-ansible-normally'
        normally_test_json = sample_data_agent_user(normally_test_username, const.AGENT_USER_TYPE_ANSIBLE)

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=normally_test_json
        )
        assert response.status_code == 200
        # ユーザーが作成されていること / 作成されたユーザーの情報が正しいこと
        create_users = __get_user(organization['organization_id'], 'agent-user-ansible-normally', token)
        assert len(create_users) == 1
        assert create_users[0]["username"] == normally_test_json["username"]
        assert create_users[0]["attributes"]["agent_user_type"][0] == normally_test_json["agent_user_type"]
        assert create_users[0]["attributes"]["description"][0] == normally_test_json["description"]

        # 作成したユーザにagentロールが付与されていること
        resp_get_user_role = api_keycloak_roles.user_role_get(realm_name=organization['organization_id'], user_id=create_users[0]["id"], client_id=private.user_token_client_id, token=token)
        assert resp_get_user_role.status_code == 200
        resp_get_user_role_json = json.loads(resp_get_user_role.text)
        assert len(resp_get_user_role_json) == 1
        assert resp_get_user_role_json[0]["name"] == bl_agent_user.agent_user_role_name(workspace['workspace_id'], normally_test_json["agent_user_type"])

    with test_common.requsts_mocker_default():
        #
        # validate error route
        #
        agent_user_data_validate_error = sample_data_agent_user('validation-error', const.AGENT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json={**agent_user_data_validate_error, **{"username": "_error-id"}}
        )
        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json={**agent_user_data_validate_error, **{"agent_user_type": "dummy"}}
        )
        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json={**agent_user_data_validate_error, **{"description": "t".ljust(const.length_user_description + 1, "_")}}
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('get-token-error', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 401
        assert not __exists_user(organization['organization_id'], 'get-token-error', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # Exists user
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('exists_user01', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 200
        assert __exists_user(organization['organization_id'], 'exists_user01', token)

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('exists_user01', const.AGENT_USER_TYPE_ANSIBLE)
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('create_user_error_400', const.AGENT_USER_TYPE_ANSIBLE)
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('create_user_error_500', const.AGENT_USER_TYPE_ANSIBLE)
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('get_user_error_500', const.AGENT_USER_TYPE_ANSIBLE)
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('create_user_not_found', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        # create成功 → get失敗なので、消込のIDがわからず、削除できないため、ここだけは失敗だけどuserが残る
        # assert not __exists_user(organization['organization_id'], 'get_user_error_500', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # agent role not found
        #
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/][^/]*/roles/'),
            status_code=404,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('agent_role_not_found', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'agent_role_not_found', token)

    with test_common.requsts_mocker_default() as requests_mocker:
        #
        # agent role mapping error
        #
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/[^/][^/]*/role-mappings/clients/'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=sample_data_agent_user('agent_role_mapping_error', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'agent_role_mapping_error', token)


def test_agent_user_get(connexion_client):
    """agent user get api test

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
        post_agent_user = sample_data_agent_user("test-user1", const.AGENT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_agent_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_agent_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_agent_user = response.json["data"][0]
        
        # 登録データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        posted_agent_user = response.json["data"]
        assert posted_agent_user["username"] == post_agent_user["username"]
        assert posted_agent_user["agent_user_type"] == post_agent_user["agent_user_type"]
        assert posted_agent_user["description"] == post_agent_user["description"]

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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 401

    #
    # case : not exists agent user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400


def test_agent_user_update(connexion_client):
    """agent user update api test

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
        post_agent_user = sample_data_agent_user("test-user1", const.AGENT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_agent_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_agent_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_agent_user = response.json["data"][0]
        
        # 登録データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        posted_agent_user = response.json["data"]

        # 更新データ
        put_agent_user = sample_data_put_agent_user(post_agent_user)

        # Userデータの更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_agent_user
        )
        
        assert response.status_code == 200
        
        # 更新データの取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        assert response.status_code == 200
        updated_agent_user = response.json["data"]
        posted_agent_user = response.json["data"]
        assert updated_agent_user["description"] == put_agent_user["description"]

    #
    # case : not json body
    #
    with test_common.requsts_mocker_default():
        # JSONでないbodyで更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json={**put_agent_user, **{"description": "t".ljust(const.length_user_description + 1, "_")}}
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_agent_user
        )
        
        assert response.status_code == 401

    #
    # case : not exists agent user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 404

    #
    # case : get agent user failed
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))

        assert response.status_code == 500

    #
    # case : not updatable agent user
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user2")
        
        # User登録（エージェントユーザーでない）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_user = response.json["data"][0]
        
        # Userデータの更新
        put_user = sample_data_put_user(post_user)

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_user['id']}",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_agent_user
        )

        assert response.status_code == 500

    #
    # case : not exist agent user in the target workspace
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 対象のworkspaceのagent userでない
        # ユーザー登録
        # 登録データ
        workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])
        post_agent_user2 = sample_data_agent_user("test-agent-user2", const.AGENT_USER_TYPE_ANSIBLE)
        
        # User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace2['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_agent_user2
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_agent_user2['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_agent_user2 = response.json["data"][0]

        # Userデータの更新
        put_user2 = sample_data_put_agent_user(post_agent_user2)

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user2['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_user2
        )
        
        assert response.status_code == 400

    #
    # case : update not exists agent user
    #
    with test_common.requsts_mocker_default():
        # 存在しないユーザーを更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=put_agent_user
        )

        assert response.status_code == 404

    #
    # case : update agent user failed(404)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(404)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=404,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_agent_user
        )
        
        assert response.status_code == 404

    #
    # case : update agent user failed(400)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(400)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=400,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_agent_user
        )
        
        assert response.status_code == 400

    #
    # case : update agent user failed(500)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー更新失敗(500)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=500,
            json={}
        )
        
        # ユーザーの更新
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=put_agent_user
        )
        
        assert response.status_code == 500


def test_agent_user_delete(connexion_client):
    """agent user delete api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    
    #
    # Agent User登録
    #
    with test_common.requsts_mocker_default():
        # 登録データ
        post_agent_user = sample_data_agent_user("test-user1", const.AGENT_USER_TYPE_ANSIBLE)
        
        # Agent User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_agent_user
        )
        assert response.status_code == 200
        
        # Agent Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_agent_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_agent_user = response.json["data"][0]

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
        
        # Agent Agent Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_agent_user
        )

        assert response.status_code == 401

    #
    # case : not exists agent user
    #
    with test_common.requsts_mocker_default():
        # Agent Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 404

    #
    # case : get user failed
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Agent user取得失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*'),
            status_code=500,
            json={})
        
        # Agent Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json=posted_agent_user
        )

        assert response.status_code == 500

    #
    # case : not updatable agent user
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 登録データ
        post_user = sample_data_user("test-user2")
        
        # User登録（エージェントユーザーでない）
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_user
        )
        assert response.status_code == 200
        
        # Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_user = response.json["data"][0]
        
        # Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_user['id']}",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_agent_user
        )

        assert response.status_code == 500

    #
    # case : not exist agent user in the target workspace
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 対象のworkspaceのagent userでない
        # ユーザー登録
        # 登録データ
        workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])
        post_agent_user2 = sample_data_agent_user("test-agent-user2", const.AGENT_USER_TYPE_ANSIBLE)
        
        # Agent User登録
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace2['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=post_agent_user2
        )
        assert response.status_code == 200
        
        # Agent Userデータの取得(idの取得)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/users?search={post_agent_user2['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]))
        
        posted_agent_user2 = response.json["data"][0]

        # Agent Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user2['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=posted_agent_user2
        )
        
        assert response.status_code == 400

    #
    # case : delete not exists agent user
    #
    with test_common.requsts_mocker_default():
        # 存在しないユーザーを削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/xxxx",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_agent_user
        )

        assert response.status_code == 404

    #
    # case : update agent user failed(404)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(404)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=404,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_agent_user
        )
        
        assert response.status_code == 404

    #
    # case : update agent user failed(400)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(400)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=400,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_agent_user
        )
        
        assert response.status_code == 400

    #
    # case : delete agent user failed(500)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # ユーザー削除失敗(500)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{posted_agent_user["id"]}'),
            status_code=500,
            json={}
        )
        
        # ユーザーの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=posted_agent_user
        )
        
        assert response.status_code == 500

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        # Userデータの削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{posted_agent_user['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"])
        )

        assert response.status_code == 200


def test_agent_user_token_create(connexion_client):
    """test agent_user_token_create

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

    agent_user01 = __make_sample_agent_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_agent_user('test_user01', const.AGENT_USER_TYPE_ANSIBLE))

    agent_user_ws2 = __make_sample_agent_user(
        connexion_client,
        organization['organization_id'],
        workspace2['workspace_id'],
        organization['user_id'],
        token,
        sample_data_agent_user('test_user_ws2', const.AGENT_USER_TYPE_OASE))

    non_agent_user = __make_sample_non_agent_user(
        connexion_client,
        organization['organization_id'],
        organization['user_id'],
        token,
        "non_agent_user")

    #
    # case : normal
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {}).get("refresh_token", "")
        assert refresh_token != ""
        # jwt decode可能でユーザーが正しいこと
        assert jwt.decode(refresh_token, options={"verify_signature": False})["sub"] == agent_user01['id']

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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 401

    #
    # case : not exists agent user
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/not-exists-user-id/refresh_tokens",
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
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{agent_user01['id']}$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 500

    #
    # case : agent userでないユーザーに対するtokenの発行
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{non_agent_user["id"]}/refresh_tokens",
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
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{agent_user01['id']}/role-mappings$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 500

    #
    # case : 別のworkspaceのagent userに対するtokenの発行
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user_ws2['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/{agent_user01['id']}/reset-password$'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
        )
        assert response.status_code == 400

    #
    # case : agent user token発行エラー
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # Get a agent user account token error
        def additional_matcher(request):
            return f'username={agent_user01["username"]}' in request.text

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={},
            additional_matcher=additional_matcher)

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=[common.get_ws_admin_authname(workspace['workspace_id'])]),
            json={}
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

    agent_user01 = __make_sample_agent_user(
        connexion_client,
        organization['organization_id'],
        workspace['workspace_id'],
        organization['user_id'],
        token,
        sample_data_agent_user('test_user01', const.AGENT_USER_TYPE_ANSIBLE))

    #
    # case: upperCase length 60
    #
    resp_upd = api_keycloak_realms.realm_update(organization['organization_id'], {"passwordPolicy": "upperCase(60)"}, token)
    assert resp_upd.status_code in [200, 204]

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users/{agent_user01['id']}/refresh_tokens",
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


def __make_sample_agent_user(connexion_client, organization_id, workspace_id, user_id, token, agent_user_json):
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces/{workspace_id}/agent-users",
            headers=request_parameters.request_headers(user_id),
            json=agent_user_json
        )
        assert response.status_code == 200

        return __get_user(organization_id, agent_user_json["username"], token)[0]


def __make_sample_non_agent_user(connexion_client, organization_id, user_id, token, username):

    with test_common.requsts_mocker_default():
        # 登録データ
        post_user = sample_data_user(username)

        # User登録
        response = connexion_client.post(
            f"/api/{organization_id}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id),
            json=post_user)

        assert response.status_code == 200

        return __get_user(organization_id, username, token)[0]


def sample_data_agent_user(username, agent_user_type):
    """agent user create sample data (body json)

    Args:
        username (str): _description_
        agent_user_type (str): _description_

    Returns:
        dict: agent user create body json
    """
    return {
        "username": username,
        "agent_user_type": agent_user_type,
        "description": f"description {username}"
    }


def sample_data_put_agent_user(post_user):
    return {
        "description": f'{post_user["description"]} upd',
    }

