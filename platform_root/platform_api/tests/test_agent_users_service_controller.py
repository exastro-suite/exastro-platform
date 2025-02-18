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

import copy
import re
import requests_mock
import json

from tests.common import request_parameters, test_common
from common_library.common import const, validation
from common_library.common import api_keycloak_users, api_keycloak_tokens, api_keycloak_roles
from common_library.common import bl_agent_user

from common_library.common.db import DBconnector

def test_agent_user_service_api(connexion_client):
    """agent user service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():

        # 0件のget確認
        # response = connexion_client.get(
        #     f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
        #     headers=request_parameters.request_headers(organization['user_id']))

        # assert response.status_code == 200
        # assert len(response.json["data"]) == 0

        # agent userの追加
        agent_user1_data = __post_sample_data('ansible-agent-1', const.AGENT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=agent_user1_data
        )

        assert response.status_code == 200

        # 作成したagent userの確認
        # response = connexion_client.get(
        #     f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
        #     headers=request_parameters.request_headers(organization['user_id']))

        # assert response.status_code == 200
        # assert len(response.json["data"]) == 1
        # assert response.json["data"][0]["username"] == agent_user1_data["username"]
        # assert response.json["data"][0]["agent_user_type"] == agent_user1_data["agent_user_type"]
        # assert response.json["data"][0]["description"] == agent_user1_data["description"]

        # agent userの追加
        agent_user2_data = __post_sample_data('oase-agent-1', const.AGENT_USER_TYPE_OASE)
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=agent_user2_data
        )

        assert response.status_code == 200

        # 作成したagent userの確認
        # response = connexion_client.get(
        #     f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
        #     headers=request_parameters.request_headers(organization['user_id']))

        # assert response.status_code == 200
        # assert len(response.json["data"]) == 2
        # response_user1_row = [row for row in response.json["data"] if row["username"] == agent_user1_data["username"]]
        # response_user2_row = [row for row in response.json["data"] if row["username"] == agent_user2_data["username"]]
        # assert response_user1_row[0]["agent_user_type"] == agent_user1_data["agent_user_type"]
        # assert response_user1_row[0]["description"] == agent_user1_data["description"]
        # assert response_user2_row[0]["agent_user_type"] == agent_user2_data["agent_user_type"]
        # assert response_user2_row[0]["description"] == agent_user2_data["description"]


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
        normally_test_json = __post_sample_data(normally_test_username, const.AGENT_USER_TYPE_ANSIBLE)

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
        agent_user_data_validate_error = __post_sample_data('validation-error', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('get-token-error', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('exists_user01', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 200
        assert __exists_user(organization['organization_id'], 'exists_user01', token)

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/agent-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=__post_sample_data('exists_user01', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('create_user_error_400', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('create_user_error_500', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('get_user_error_500', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('create_user_not_found', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('agent_role_not_found', const.AGENT_USER_TYPE_ANSIBLE)
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
            json=__post_sample_data('agent_role_mapping_error', const.AGENT_USER_TYPE_ANSIBLE)
        )
        assert response.status_code == 500
        assert not __exists_user(organization['organization_id'], 'agent_role_mapping_error', token)


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


def __post_sample_data(username, agent_user_type):
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
