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
import re
import os
import json

from tests.common import request_parameters, test_common


def requsts_mocker_setting(requests_mocker):
    """setting default requests mocker

    Args:
        requests_mocker (obj): Return value of requests_mock.Mocker()
    """
    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{os.environ["ITA_API_ADMIN_PROTOCOL"]}://{os.environ["ITA_API_ADMIN_HOST"]}:{os.environ["ITA_API_ADMIN_PORT"]}/'),
        status_code=200,
        json={"result": "000-00000", "message": ""})
    requests_mocker.register_uri(
        requests_mock.ANY,
        re.compile(rf'^{os.environ["API_KEYCLOAK_PROTOCOL"]}://{os.environ["API_KEYCLOAK_HOST"]}:{os.environ["API_KEYCLOAK_PORT"]}/'),
        real_http=True)


def create_organization(connexion_client):
    """テスト用オーガナイゼーション作成

    Args:
        connexion_client (obj): connexion_client

    Returns:
        dict: created organization info
    """
    organization_parameter = request_parameters.create_organization()

    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)
        resp_post_org = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=organization_parameter)

        if resp_post_org.status_code != 200:
            raise Exception('FAILED : create organization')

        resp_get_users = connexion_client.get(
            f"/api/{organization_parameter['id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers())

        if resp_get_users.status_code != 200:
            raise Exception('FAILED : get users')

    return {
        "organization_id": organization_parameter['id'],
        "user_id": json.loads(resp_get_users.text)['data'][0]['id']
    }


def create_workspace(connexion_client, organization_id, workspace_id, workspace_admin_user_id, workspace_name=None):
    """テスト用ワークスペース作成

    Args:
        connexion_client (obj): connexion_client
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        workspace_admin_user_id (str): workspace administrator user id
        workspace_name (str, optional): workspace_name. Defaults to None.

    Raises:
        Exception: _description_
    """
    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)

        resp_post_ws = connexion_client.post(
            f"/api/{organization_id}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(user_id=workspace_admin_user_id),
            json=request_parameters.create_workspace(workspace_id, workspace_admin_user_id, workspace_name))

        if resp_post_ws.status_code != 200:
            raise Exception('FAILED : create workspace')

    return {
        "workspace_id": workspace_id
    }