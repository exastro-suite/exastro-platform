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

import json
import re
from contextlib import closing
from unittest import mock

import requests_mock
import ulid
from common_library.common import const, maintenancemode, validation
from common_library.common.db import DBconnector
from libs import queries_organizations
from tests.common import request_parameters, test_common


def test_organization_api(connexion_client):
    """organization service api test

    Args:
        connexion_client (_type_): _description_
    """
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/[^/][^/]*/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": {"optionsita": {"drivers": {}}}})

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

        # get organization managers
        # オーガナイゼーション管理者 取得
        response = connexion_client.get(
            f"/api/{json_create_01['id']}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers())

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        organization_manager_1st = json_create_01["organization_managers"][0]
        posted_user = [item for item in response.json["data"] if item["preferred_username"] == organization_manager_1st["username"]][0]
        assert posted_user["firstName"] == organization_manager_1st["firstName"]
        assert posted_user["lastName"] == organization_manager_1st["lastName"]
        assert posted_user["email"] == organization_manager_1st["email"]
        assert posted_user["enabled"] == organization_manager_1st["enabled"]

        # get organization role
        # オーガナイゼーションロール権限 取得
        response = connexion_client.get(
            f"/api/{json_create_01['id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(posted_user["id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        role_list = response.json["data"]
        role_list.sort(key=lambda x: x["name"])
        assert len(role_list) == 3
        i = 0
        assert role_list[i]["name"] == const.ORG_ROLE_ORG_MANAGER
        assert set([x["name"] for x in role_list[i]["authorities"]]) == set(const.ORG_PERMISSION_ORG_MANAGER)
        i += 1
        assert role_list[i]["name"] == const.ORG_ROLE_USER_MANAGER
        assert set([x["name"] for x in role_list[i]["authorities"]]) == set(const.ORG_PERMISSION_USER_MANAGER)
        i += 1
        assert role_list[i]["name"] == const.ORG_ROLE_USER_ROLE_MANAGER
        assert set([x["name"] for x in role_list[i]["authorities"]]) == set(const.ORG_PERMISSION_USER_ROLE_MANAGER)

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
        json_update_01 = sample_data_organization_update({"name": "update", "enabled": False})
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


def test_organization_validate(connexion_client):
    """test validate organization

    Args:
        connexion_client (_type_): _description_
    """
    #
    # validate : id
    #
    # validate : id = None
    validate = validation.validate_organization_id(None)
    assert not validate.ok, "organization_id : None"

    # validate : id maxlength
    validate = validation.validate_organization_id("a".ljust(const.length_destination_id, "_"))
    assert validate.ok, "organization_id = max length"

    # validate : id maxlength + 1
    validate = validation.validate_organization_id("a".ljust(const.length_destination_id + 1, "_"))
    assert not validate.ok, "organization_id = max length + 1"

    # validate : id invalid char
    validate = validation.validate_organization_id("a*")
    assert not validate.ok, "organization_id = invalid char"

    # validate : id upper char
    validate = validation.validate_organization_id("ABC")
    assert not validate.ok, "organization_id = upper char"

    # validate : id invalid first char
    validate = validation.validate_organization_id("_a")
    assert not validate.ok, "organization_id = invalid first char"

    # validate : id invalid first char
    validate = validation.validate_organization_id("master")
    assert not validate.ok, "organization_id = reseved word"

    #
    # validate : name
    #
    # validate : name = None
    validate = validation.validate_organization_name(None)
    assert not validate.ok, "organization_name : None"

    # validate : name maxlength
    validate = validation.validate_organization_name("a".ljust(const.length_destination_name, "_"))
    assert validate.ok, "organization_name = max length"

    # validate : name maxlength + 1
    validate = validation.validate_organization_name("a".ljust(const.length_destination_name + 1, "_"))
    assert not validate.ok, "organization_name = max length + 1"


def test_organization_create(connexion_client):
    """_summary_

    Args:
        connexion_client (_type_): _description_
        mocker (_type_): _description_
    """
    class MockResponse:
        def __init__(self, json_data, status_code):
            self.json_data = json_data
            self.status_code = status_code

        def json(self):
            return self.json_data

    #
    # maintenance mode
    #
    with test_common.requsts_mocker_default(), \
            mock.patch.object(maintenancemode, 'maintenace_mode_get', return_value='1'):

        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization('organization-01'))

        assert response.status_code == 498, "create organization response code = maintenancemode"

    #
    # validation error route
    #
    with test_common.requsts_mocker_default():
        # validate error id
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization('_'))

        assert response.status_code == 400, "create organization response code validate error"

        # validate error name
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization('organization-01', {"name": "".ljust(const.length_organization_name + 1, "_")}))

        assert response.status_code == 400, "create organization response code validate error"

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-01/ita/'),
            status_code=400,
            json={"result": "400-36003", "message": "Failed"})

        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization('organization-01'))

        assert response.status_code == 400, "ITA API Error"
        assert response.json["result"] == "400-36003", "ITA API Error"
        assert response.json["message"] == "Failed", "ITA API Error"


def test_organization_get(connexion_client):
    """test organization_get

    Args:
        connexion_client (_type_): _description_
    """
    #
    #   正常ルート確認
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        sample_data = sample_data_organization('organization-01')
        response_get_ita_data = {
            "optionsita": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": True,
                    "oase": False,
                },
                "services": {
                    "document_store": {
                        "name": "mongodb",
                        "owner": False,
                        "connection_string": "XXXXXXXXXXXXXXXX"
                    }
                }
            }
        }

        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/[^/][^/]*/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": response_get_ita_data})

        # テスト用にデータを作成
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data)

        assert response.status_code == 200, "create organization response code = 200"

        # 作成したデータを取得し正常かを確認
        response = connexion_client.get(
            f"/api/platform/organizations/{sample_data['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )
        assert response.status_code == 200, "get organization response code = 200"
        assert response.json['data']['id'] == sample_data['id']
        assert response.json['data']['name'] == sample_data['name']
        assert response.json['data']['optionsIta'] == response_get_ita_data['optionsita']

    #
    # keycloak realm情報の取得失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 存在しないrealmを指定
        response = connexion_client.get(
            "/api/platform/organizations/nothing",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 500, "get organization response code = 500"
        assert response.json['result'] == '500-23018'

    #
    # ITAの情報取得でエラー発生(jsonレスポンス)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/[^/][^/]*/ita/'),
            status_code=400,
            json={"result": "400-999999", "message": "ERROR"})

        response = connexion_client.get(
            f"/api/platform/organizations/{sample_data['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        # 正常応答は返す
        assert response.status_code == 200, "get organization response code = 200"
        # optionsItaがレスポンス値から除かれる
        assert 'optionsIta' not in response.json['data']

    #
    # ITAの情報取得でエラー発生(textレスポンス)
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/[^/][^/]*/ita/'),
            status_code=400,
            text="not json data")

        response = connexion_client.get(
            f"/api/platform/organizations/{sample_data['id']}",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 200, "get organization response code = 200"
        assert 'optionsIta' not in response.json['data']


def test_organization_update(connexion_client):
    """test organization update

    Args:
        connexion_client (_type_): _description_
    """

    organization = test_common.create_organization(connexion_client)

    #
    # maintenance mode
    #
    with test_common.requsts_mocker_default(), \
            mock.patch.object(maintenancemode, 'maintenace_mode_get', return_value='1'):

        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update())

        assert response.status_code == 498, "create organization response code = maintenancemode"

    #
    # validation error route
    #
    with test_common.requsts_mocker_default():
        # validate : name is None
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"name": None}))

        assert response.status_code == 400, "name is none"
        assert response.status == "400 BAD REQUEST", "name is none"

        # validate : name is not exist
        tmp = sample_data_organization_update()
        tmp.pop("name")
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=tmp)

        assert response.status_code == 400, "name is not exist"
        assert response.status == "400 BAD REQUEST", "name is not exist"

        # validate : name == ""
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"name": ""}))

        assert response.status_code == 400, "validation error"
        assert response.json["result"] == "400-00011", "validation error"

        # validate : name is max length
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"name": "".ljust(const.length_organization_name, "a")}))

        assert response.status_code == 200, "max length"

        # validate : name is max length + 1
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"name": "".ljust(const.length_organization_name + 1, "a")}))

        assert response.status_code == 400, "max length + 1"
        assert response.json["result"] == "400-00012", "max length + 1"

        # validate: optionsIta is not exist
        tmp = sample_data_organization_update()
        tmp.pop("optionsIta")
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=tmp)

        assert response.status_code == 400, "optionsIta is not exist"
        assert response.status == "400 BAD REQUEST", "optionsIta is not exist"

        # validate: optionsIta == {}
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": None}))

        assert response.status_code == 400, "optionsIta == {}"
        assert response.status == "400 BAD REQUEST", "optionsIta == {}"

        # validate: optionsIta == {}
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {}}))

        assert response.status_code == 400, "optionsIta == {}"
        assert response.status == "400 BAD REQUEST", "optionsIta == {}"

        # validate: drivers == {}
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {"drivers": {}}}))

        assert response.status_code == 400, "optionsIta == {}"
        assert response.status == "400 BAD REQUEST", "optionsIta == {}"

        # validate: terraform_cloud_ep is not exist
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cli": True,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cloud_ep is not exist"
        assert response.status == "400 BAD REQUEST", "terraform_cloud_ep is not exist"

        # validate: terraform_cli is not exist
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": False,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cli is not exist"
        assert response.status == "400 BAD REQUEST", "terraform_cli is not exist"

        # validate: ci_cd is not exist
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": False,
                    "terraform_cli": True,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "ci_cd is not exist"
        assert response.status == "400 BAD REQUEST", "ci_cd is not exist"

        # validate: oase is not exist
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": False,
                    "terraform_cli": True,
                    "ci_cd": False
                }
            }}))

        assert response.status_code == 400, "oase is not exist"
        assert response.status == "400 BAD REQUEST", "oase is not exist"

        # validate: terraform_cloud_ep is None
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": None,
                    "terraform_cli": True,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cloud_ep is None"
        assert response.status == "400 BAD REQUEST", "terraform_cloud_ep is None"

        # validate: terraform_cli is None
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": None,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cli is None"
        assert response.status == "400 BAD REQUEST", "terraform_cli is None"

        # validate: ci_cd is None
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": None,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "ci_cd is None"
        assert response.status == "400 BAD REQUEST", "ci_cd is None"

        # validate: oase is None
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": False,
                    "oase": None
                }
            }}))

        assert response.status_code == 400, "oase is None"
        assert response.status == "400 BAD REQUEST", "oase is None"

        # validate: terraform_cloud_ep is string
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": "True",
                    "terraform_cli": False,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cloud_ep is string"
        assert response.status == "400 BAD REQUEST", "terraform_cloud_ep is string"

        # validate: terraform_cli is string
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": "False",
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cli is string"
        assert response.status == "400 BAD REQUEST", "terraform_cli is string"

        # validate: ci_cd is string
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": "False",
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "ci_cd is string"
        assert response.status == "400 BAD REQUEST", "ci_cd is string"

        # validate: oase is string
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": False,
                    "oase": "False"
                }
            }}))

        assert response.status_code == 400, "oase is string"
        assert response.status == "400 BAD REQUEST", "oase is string"

        # validate: terraform_cloud_ep is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": 1,
                    "terraform_cli": False,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cloud_ep is integer"
        assert response.status == "400 BAD REQUEST", "terraform_cloud_ep is integer"

        # validate: terraform_cli is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": 0,
                    "ci_cd": False,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "terraform_cli is integer"
        assert response.status == "400 BAD REQUEST", "terraform_cli is integer"

        # validate: ci_cd is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": 0,
                    "oase": False
                }
            }}))

        assert response.status_code == 400, "ci_cd is integer"
        assert response.status == "400 BAD REQUEST", "ci_cd is integer"

        # validate: oase is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": False,
                    "oase": 0
                }
            }}))

        assert response.status_code == 400, "oase is integer"
        assert response.status == "400 BAD REQUEST", "oase is integer"

        # validate: services.document_store.name is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": True,
                    "ci_cd": True,
                    "oase": True,
                },
                "services": {
                    "document_store": {
                        "name": 1,
                        "owner": False,
                        "connection_string": "XXXXXXXXXXXXXXXX"
                    }
                }
            }}))

        assert response.status_code == 400, "services.document_store.name is integer"
        assert response.status == "400 BAD REQUEST", "services.document_store.name is integer"

        # validate: services.document_store.owner is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": True,
                    "ci_cd": True,
                    "oase": True,
                },
                "services": {
                    "document_store": {
                        "name": "mongodb",
                        "owner": 1,
                        "connection_string": "XXXXXXXXXXXXXXXX"
                    }
                }
            }}))

        assert response.status_code == 400, "services.document_store.owner is integer"
        assert response.status == "400 BAD REQUEST", "services.document_store.owner is integer"

        # validate: services.document_store.connection_string is integer
        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update({"optionsIta": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": True,
                    "ci_cd": True,
                    "oase": True,
                },
                "services": {
                    "document_store": {
                        "name": "mongodb",
                        "owner": False,
                        "connection_string": 1
                    }
                }
            }}))

        assert response.status_code == 400, "services.document_store.connection_string is integer"
        assert response.status == "400 BAD REQUEST", "services.document_store.connection_string is integer"

    #
    # DB Error
    #
    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_organizations.SQL_UPDATE_ORGANIZATION, Exception("DB Error Test")):

        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update())

        assert response.status_code == 500, "DB Error"
        assert response.json["result"] == "500-23024", "DB Error"

    #
    # ITA API Error
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.ANY,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/{organization["organization_id"]}/ita/'),
            status_code=400,
            json={"result": "400-36003", "message": "Failed"})

        response = connexion_client.put(
            f'/api/platform/organizations/{organization["organization_id"]}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data_organization_update())

        assert response.status_code == 400, "ITA API Error"
        assert response.json["result"] == "400-36003", "ITA API Error"
        assert response.json["message"] == "Failed", "ITA API Error"

    #
    # normal root
    #
    with test_common.requsts_mocker_default():

        organization_id = (f"unittest-{ulid.new().str.lower()}")[0:const.length_organization_id]
        json_parameter = sample_data_organization(
            organization_id,
            {
                "optionsIta": {
                    "drivers": {
                        "terraform_cloud_ep": False,
                        "terraform_cli": True,
                        "ci_cd": False,
                        "oase": True
                    },
                    "services": {
                        "document_store": {
                            "name": "mongodb",
                            "owner": False,
                            "connection_string": "XXXXXXXXXXXXXXXX"
                        }
                    }
                }
            }
        )

        resp_post_org = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=json_parameter)

        assert resp_post_org.status_code == 200, "Create organization"

        org_info = __fetch_organization_informations(organization_id)
        drivers = json.loads(org_info["INFORMATIONS"])["ext_options"]["options_ita"]["drivers"]
        assert drivers["terraform_cloud_ep"] is False, "create status"
        assert drivers["terraform_cli"] is True, "create status"
        assert drivers["ci_cd"] is False, "create status"
        assert drivers["oase"] is True, "create status"

        document_store = json.loads(org_info["INFORMATIONS"])["ext_options"]["options_ita"]["services"]["document_store"]
        assert document_store["name"] == "mongodb", "create status"
        assert document_store["owner"] is False, "create status"
        assert document_store["connection_string"] == "XXXXXXXXXXXXXXXX", "create status"

        # normal root
        tmp = sample_data_organization_update(
            {
                "optionsIta": {
                    "drivers": {
                        "terraform_cloud_ep": True,
                        "terraform_cli": True,
                        "ci_cd": True,
                        "oase": True
                    },
                    "services": {
                        "document_store": {
                            "name": "mongodb",
                            "owner": False,
                            "connection_string": "YYYYYYYYYYYYYYYY"
                        }
                    }
                }
            }
        )
        response = connexion_client.put(
            f'/api/platform/organizations/{organization_id}',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=tmp
        )

        assert response.status_code == 200, "normal root"

        updated_org_info = __fetch_organization_informations(organization_id)
        drivers = json.loads(updated_org_info["INFORMATIONS"])["ext_options"]["options_ita"]["drivers"]
        assert drivers["terraform_cloud_ep"] is True, "update status"
        assert drivers["terraform_cli"] is True, "update status"
        assert drivers["ci_cd"] is True, "update status"
        assert drivers["oase"] is True, "update status"

        document_store = json.loads(updated_org_info["INFORMATIONS"])["ext_options"]["options_ita"]["services"]["document_store"]
        assert document_store["name"] == "mongodb", "update status"
        assert document_store["owner"] is False, "update status"
        assert document_store["connection_string"] == "YYYYYYYYYYYYYYYY", "update status"


def test_organization_list(connexion_client):
    response_get_ita_data = {
        "organization-01": {
            "optionsita": {
                "drivers": {
                    "terraform_cloud_ep": True,
                    "terraform_cli": False,
                    "ci_cd": True,
                    "oase": False,
                },
                "services": {
                    "document_store": {
                        "name": "mongodb",
                        "owner": False,
                        "connection_string": "XXXXXXXXXXXXXXXX"
                    }
                }
            }
        },
        "organization-02": {
            "optionsita": {
                "drivers": {
                    "terraform_cloud_ep": False,
                    "terraform_cli": True,
                    "ci_cd": False,
                    "oase": True,
                },
                "services": {
                    "document_store": {
                        "name": "mongodb",
                        "owner": False,
                        "connection_string": "YYYYYYYYYYYYYYYY"
                    }
                }
            }
        }
    }
    sample_data = {
        "organization-01": sample_data_organization('organization-01'),
        "organization-02": sample_data_organization('organization-02'),
    }

    #
    #   0件確認
    #
    with test_common.requsts_mocker_default():
        # 0件の時、正常応答するかを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 200, "get organization response code = 200"
        assert len(response.json['data']) == 0

    #
    #   1件正常確認
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-01/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": response_get_ita_data["organization-01"]})

        # テスト用にデータを作成
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data["organization-01"])

        assert response.status_code == 200, "create organization response code = 200"

        # 1件の時、正常応答するかを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 200, "get organization response code = 200"
        assert len(response.json['data']) == 1
        assert response.json['data'][0]["id"] == sample_data["organization-01"]["id"]
        assert response.json['data'][0]["name"] == sample_data["organization-01"]["name"]
        assert response.json['data'][0]["enabled"]
        assert response.json['data'][0]["optionsIta"] == response_get_ita_data["organization-01"]["optionsita"]

    #
    #   2件正常確認
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-01/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": response_get_ita_data["organization-01"]})
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-02/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": response_get_ita_data["organization-02"]})

        # テスト用にデータを作成
        response = connexion_client.post(
            '/api/platform/organizations',
            content_type='application/json',
            headers=request_parameters.request_headers(),
            json=sample_data["organization-02"])

        assert response.status_code == 200, "create organization response code = 200"

        # 2件の時、正常応答するかを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 200, "get organization response code = 200"
        assert len(response.json['data']) == 2
        for i in range(len(response.json['data'])):
            org_id = response.json['data'][i]["id"]
            assert response.json['data'][i]["id"] == sample_data[org_id]["id"]
            assert response.json['data'][i]["name"] == sample_data[org_id]["name"]
            assert response.json['data'][i]["enabled"]
            assert response.json['data'][i]["optionsIta"] == response_get_ita_data[org_id]["optionsita"]

    #
    #   keycloak realms取得失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms'),
            status_code=400,
            text="error test")

        # keycloak realms取得失敗の時、エラー応答するかを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 500, "get organization response code = 500"

    #
    #   ITA情報取得失敗
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # organization-01のみエラー応答
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-01/ita/'),
            status_code=400,
            text="error test")
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/organizations/organization-02/ita/'),
            status_code=200,
            json={"result": "000-00000", "message": "SUCCESS", "data": response_get_ita_data["organization-02"]})

        # ITA情報取得失敗しても、応答するかを確認
        response = connexion_client.get(
            "/api/platform/organizations",
            content_type='application/json',
            headers=request_parameters.request_headers(),
        )

        assert response.status_code == 200, "get organization response code = 200"
        assert len(response.json['data']) == 2
        for i in range(len(response.json['data'])):
            org_id = response.json['data'][i]["id"]
            assert response.json['data'][i]["id"] == sample_data[org_id]["id"]
            assert response.json['data'][i]["name"] == sample_data[org_id]["name"]
            assert response.json['data'][i]["enabled"]
            if org_id == "organization-01":
                # organization-01でITAエラー応答時、項目だけない状態となるか
                assert "optionsIta" not in response.json['data'][i]
            else:
                # organization-01以外のITA正常応答時、応答内容が正しいか？
                assert response.json['data'][i]["optionsIta"] == response_get_ita_data[org_id]["optionsita"]


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
                "requiredActions": [],
                # "requiredActions": [
                #     "UPDATE_PROFILE"
                # ],
                "enabled": True
            }
        ],
        "options": {},
        "optionsIta": {}
    }, **update)


def sample_data_organization_update(update={}):
    """update organization parameter

    Args:
        update (dict, optional): update dict. Defaults to {}.

    Returns:
        dict: create organization parameter
    """
    return dict({
        "name": "name of org2",
        "enabled": True,
        "optionsIta": {
            "drivers": {
                "terraform_cloud_ep": True,
                "terraform_cli": True,
                "ci_cd": True,
                "oase": True
            },
            "services": {
                "document_store": {
                    "name": "mongodb",
                    "owner": False,
                    "connection_string": "XXXXXXXXXXXXXXXX"
                }
            }
        }
    }, **update)


def __fetch_organization_informations(organization_id):
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT INFORMATIONS FROM T_ORGANIZATION WHERE ORGANIZATION_ID = %(organization_id)s", {"organization_id": organization_id})
            row = cursor.fetchone()

    return row
