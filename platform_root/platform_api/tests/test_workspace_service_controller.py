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
import copy

import requests_mock
from tests.common import request_parameters, test_common


def test_workspace_api(connexion_client):
    """workspace service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)

        # get workspaces
        # ワークスペース一覧が0件であることを確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces",
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200, "get workspaces response code"
        assert len(response.json["data"]) == 0, "get workspaces count"

        # create workspace
        # ワークスペースを作成する
        json_create_01 = sample_data_workspace('workspace-01', organization['user_id'])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_create_01)

        assert response.status_code == 200, "create workspace response code"

        # workspace role setting
        ws_role = [f"_{json_create_01['id']}-admin"]
        # workspace get情報(作成したworkspaceをgetした時の情報)
        json_created_01 = copy.deepcopy(json_create_01)
        test_common.delete_dict_item(json_created_01["informations"], "workspace_administrators")

        # get workspace
        # 作成したワークスペースを取得する
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 200, "get organization response code"

        # created value check
        # 作成したワークスペースのパラメータと、取得したワークスペースが同じかチェックする
        response_data = copy.deepcopy(response.json['data'])
        test_common.delete_dict_item_written_info(response_data)
        assert response_data == json_created_01, "created value check"

        # get workspaces
        # ワークスペース一覧を取得し１件出来上がっているかチェックする
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 200, "get workspaces response code"
        assert len(response.json["data"]) == 1, "get workspaces count"

        response_data = copy.deepcopy(response.json['data'][0])
        test_common.delete_dict_item_written_info(response_data)
        assert response_data == json_created_01, "created value check"

        # get workspace member
        # 作成したワークスペースのメンバー一覧を取得する
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}/members",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 200, "get workspace members response code"
        assert len(response.json["data"]) == 1, "get workspace member count"

        # update workspace
        # ワークスペースを更新する
        json_update_01 = copy.deepcopy(json_create_01)
        json_update_01 = dict(
            json_update_01,
            **{
                "name": "name of workspace - updated",
                "informations": {
                    "description": "description of workspace - updated",
                    "environments": [
                        {"name": "staging - updated"},
                        {"name": "production - updated"},
                        {"name": "test"},
                    ]
                }
            })
        del json_update_01['id']
        json_updated_01 = dict(json_update_01, **{"id": json_create_01['id']})

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_update_01)

        assert response.status_code == 200, "update workspace response code"

        # get workspace
        # 更新したワークスペースを取得する
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 200, "get organization response code"

        # updated value check
        # 更新したワークスペースのパラメータと、取得したワークスペースが同じかチェックする
        response_data = copy.deepcopy(response.json['data'])
        test_common.delete_dict_item_written_info(response_data)
        assert response_data == json_updated_01, "updated value check"

        # delete workspace
        # 更新したワークスペースを削除する
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 200, "delete organization response code"

        # get workspace
        # 削除したワークスペースを取得する
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 404, "get organization response code"


def sample_data_workspace(id, admin_user_id, update={}):
    """create workspace parameter

    Args:
        id (str): workspace id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: create workspace parameter
    """
    return dict({
        "id": id,
        "name": "name of workspace",
        "informations": {
            "description": "description of workspace",
            "environments": [
                {"name": "staging"},
                {"name": "production"},
            ],
            "workspace_administrators": [
                {"id": admin_user_id}
            ]
        }
    }, **update)
