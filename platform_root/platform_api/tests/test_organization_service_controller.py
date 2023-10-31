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
from tests.common import request_parameters, test_common


def test_organization_scenario(connexion_client):
    """organization service scenario test

    Args:
        connexion_client (_type_): _description_
    """
    with requests_mock.Mocker() as requests_mocker:
        test_common.requsts_mocker_setting(requests_mocker)

        # get organizations
        # オーガナイゼーション一覧が0件であることを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organizations response code"
        assert len(response.json["data"]) == 0, "get organizations count"

        # create organization
        # オーガナイゼーションを作成する
        json_create_01 = sample_data_organization('organization-01')

        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_create_01)

        assert response.status_code == 200, "create organization response code"

        # get organization
        # 作成したオーガナイゼーションを取得する
        response = connexion_client.get(
            f"/api/platform/organizations/{json_create_01['id']}",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organization response code"

        # created value check
        # 作成したオーガナイゼーションのパラメータと、取得したオーガナイゼーションが同じかチェックする
        assert response.json["data"]["id"] == json_create_01["id"], "created value check : id"
        assert response.json["data"]["name"] == json_create_01["name"], "created value check : name"
        assert response.json["data"]["enabled"] is True, "created value check : enabled"

        # get organizations
        # オーガナイゼーション一覧を取得し１件出来上がっているかチェックする
        response = connexion_client.get(
            "/api/platform/organizations",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organizations response code"
        assert len(response.json["data"]) == 1, "get organizations count"
        assert response.json["data"][0]["id"] == json_create_01['id'], "get organizations id"

        # get organization setting
        # オーガナイゼーション設定を取得する
        response = connexion_client.get(
            f"/api/{json_create_01['id']}/platform/setting",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organization setting response code"

        # update organization setting
        # オーガナイゼーション設定を更新する
        json_update_setting = {
            "token": {
                "refresh_token_max_lifespan_enabled": True,
                "refresh_token_max_lifespan_days": 100,
                "access_token_lifespan_minutes": 200
            }
        }
        response = connexion_client.patch(
            f"/api/{json_create_01['id']}/platform/setting",
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_update_setting)

        assert response.status_code == 200, "put organization setting response code"

        # get organization setting
        # オーガナイゼーション設定を取得し、更新されているかチェックする
        response = connexion_client.get(
            f"/api/{json_create_01['id']}/platform/setting",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organization setting response code"
        
        # updated value check
        assert response.json["data"]["token"]["refresh_token_max_lifespan_enabled"] \
            == json_update_setting["token"]["refresh_token_max_lifespan_enabled"], "updated value check : refresh_token_max_lifespan_enabled"
        assert response.json["data"]["token"]["refresh_token_max_lifespan_days"] \
            == json_update_setting["token"]["refresh_token_max_lifespan_days"], "updated value check : refresh_token_max_lifespan_days"
        assert response.json["data"]["token"]["access_token_lifespan_minutes"] \
            == json_update_setting["token"]["access_token_lifespan_minutes"], "updated value check : access_token_lifespan_minutes"

        # update organization
        # オーガナイゼーションを更新する
        json_update_01 = {"name": "update", "enabled": False}
        response = connexion_client.put(
            f"/api/platform/organizations/{json_create_01['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_update_01)

        assert response.status_code == 200, "put organization response code"

        # get organization
        # オーガナイゼーションを取得し、更新されているかチェックする
        response = connexion_client.get(
            f"/api/platform/organizations/{json_create_01['id']}",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "get organization response code"

        # updated value check
        assert response.json["data"]["name"] == json_update_01["name"], "updated value check : name"
        assert response.json["data"]["enabled"] == json_update_01["enabled"], "updated value check : enabled"

        # delete organization
        # オーガナイゼーションを削除する
        response = connexion_client.delete(
            f"/api/platform/organizations/{json_create_01['id']}",
            headers=request_parameters.request_headers())

        assert response.status_code == 200, "delete organization response code"

        # get organization
        # オーガナイゼーションが削除されているかチェックする
        response = connexion_client.get(
            f"/api/platform/organizations/{json_create_01['id']}",
            headers=request_parameters.request_headers())

        assert response.status_code == 500, "get organization response code"


def sample_data_organization(id, update={}):
    """create organization parameter

    Args:
        id (str): organization id
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: create organization parameter
    """
    return dict({
        "id": id,
        "name": "name of organization",
        "organization_managers": [
            {
                "username": "admin",
                "email": "admin@example.com",
                "firstName": "admin",
                "lastName": "admin",
                "credentials": [
                    {
                        "type": "password",
                        "value": "password",
                        "temporary": False
                    }
                ],
                "requiredActions": [
                    "UPDATE_PROFILE"
                ],
                "enabled": True
            }
        ],
        "options": {},
        "optionsIta": {}
    }, **update)
