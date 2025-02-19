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
import re
import requests_mock
from unittest import mock

from tests.common import request_parameters, test_common
from common_library.common import const, common, validation, maintenancemode
from common_library.common import bl_agent_user


def test_workspace_api(connexion_client):
    """workspace service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
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

        # add data
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

    with test_common.requsts_mocker_default() as requests_mocker:

        # create workspace
        # ワークスペースを作成する（ITA側で異常）
        json_create_01 = sample_data_workspace('workspace-01', organization['user_id'])
        ws_role = [f"_{json_create_01['id']}-admin"]

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/{organization["organization_id"]}/workspaces/{json_create_01["id"]}/ita/'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_create_01)

        assert response.status_code == 500, "create workspace response code"

        # workspace role 取得（削除されていて、0件であること）
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

        # Workspace DB 取得（削除されていること）
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{json_create_01['id']}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=ws_role))

        assert response.status_code == 404, "get organization response code"


def test_workspace_validate(connexion_client):
    """workspace api validate

    Args:
        connexion_client (_type_): _description_
    """
    #
    # test validate_workspace_id
    #
    validate = validation.validate_workspace_id("")
    assert not validate.ok

    validate = validation.validate_workspace_id("t".ljust(const.length_workspace_id, "a"))
    assert validate.ok

    validate = validation.validate_workspace_id("t".ljust(const.length_workspace_id + 1, "a"))
    assert not validate.ok

    validate = validation.validate_workspace_id("!")
    assert not validate.ok

    validate = validation.validate_workspace_id("1a")
    assert not validate.ok

    validate = validation.validate_workspace_id("-a")
    assert not validate.ok

    validate = validation.validate_workspace_id("_a")
    assert not validate.ok

    validate = validation.validate_workspace_id("a-0")
    assert validate.ok

    validate = validation.validate_workspace_id("A_9")
    assert validate.ok

    #
    # test validate_workspace_name
    #
    validate = validation.validate_workspace_name("")
    assert not validate.ok

    validate = validation.validate_workspace_name("t".ljust(const.length_workspace_name, "a"))
    assert validate.ok

    validate = validation.validate_workspace_name("t".ljust(const.length_workspace_name + 1, "a"))
    assert not validate.ok

    #
    # test validate_workspace_informations
    #
    validate = validation.validate_workspace_informations({"environments": {}})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": f"env{i}"} for i in range(const.max_workspace_environments)]})
    assert validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": f"env{i}"} for i in range(const.max_workspace_environments + 1)]})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": {}}]})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": ""}]})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": "t".ljust(const.length_workspace_environment_name, "a")}]})
    assert validate.ok

    validate = validation.validate_workspace_informations({"environments": [{"name": "t".ljust(const.length_workspace_environment_name + 1, "a")}]})
    assert not validate.ok

    validate = validation.validate_workspace_informations(
        {"environments": [{"name": "nonuniq-01"}, {"name": "uniq-01"}, {"name": "nonuniq-01"}]})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"description": {}})
    assert not validate.ok

    validate = validation.validate_workspace_informations({"description": "t".ljust(const.length_workspace_description, "a")})
    assert validate.ok

    validate = validation.validate_workspace_informations({"description": "t".ljust(const.length_workspace_description + 1, "a")})
    assert not validate.ok


def test_workspace_create(connexion_client):
    """create workspace api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        #
        # normal case
        #

        # create workspace
        workspace_id = 'workspace-01'
        json_create_01 = sample_data_workspace(workspace_id, organization['user_id'])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_create_01)

        assert response.status_code == 200, "create workspace response code"

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

        # 作成ロールの存在チェック
        # 1 (_wsid-admin) + agent_user_roles分のroleが作成されていること
        assert len(response.json["data"]) == 1 + len(bl_agent_user.agent_user_roles(workspace_id))

        # workspace admin ロールが存在すること
        assert len([r["name"] for r in response.json["data"] if r["name"] == common.get_ws_admin_rolename(workspace_id)]) == 1

        # agent user ロールが全て存在すること
        for role in bl_agent_user.agent_user_roles(workspace_id):
            assert len([r["name"] for r in response.json["data"] if r["name"] == role]) == 1

    with test_common.requsts_mocker_default():
        #
        # informationsパラメータ無し
        #
        workspace_id = "case_no_informations"
        workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

        del workscace_param["informations"]

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

    with test_common.requsts_mocker_default(), \
            mock.patch.object(maintenancemode, 'maintenace_mode_get', return_value='1'):
        #
        # メンテナンスモード中
        #
        workspace_id = "case_mente_mode"
        workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 498

    with test_common.requsts_mocker_default():
        #
        # validate error workspace id
        #
        workspace_id = "_case_validate_err_workspace_id"
        workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        #
        # validate error workspace name
        #
        workspace_id = "case_validate_err_workspace_name"
        workscace_param = {**sample_data_workspace(workspace_id, organization['user_id']), **{"name": ""}}

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        #
        # validate error infomations
        #
        workspace_id = "case_validate_err_workspace_name"
        workscace_param = {**sample_data_workspace(workspace_id, organization['user_id']), **{"informations": {"environments": [{"name": "env1"}, {"name": "env1"}]}}}

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400


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


def fillter_role_from_list(role_list: list, role_name: str):
    return [role for role in role_list if role["name"] == role_name]
