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
import json
from ulid import ULID
import pymysql


from common_library.common import const

from tests.common import request_parameters
from tests import test_organization_service_controller
from tests import test_workspace_service_controller


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


def create_organization(connexion_client):
    """テスト用オーガナイゼーション作成

    Args:
        connexion_client (obj): connexion_client

    Returns:
        dict: created organization info
    """
    organization_id = (f"unittest-{str(ULID()).lower()}")[0:const.length_organization_id]
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
        "user_id": json.loads(resp_get_users.text)['data'][0]['id']
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
