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
import json
import requests_mock
from unittest import mock

from tests.common import request_parameters, test_common
from common_library.common import const, common, validation, maintenancemode
from common_library.common import api_keycloak_tokens, api_keycloak_roles
from common_library.common import bl_service_account_user, bl_plan_service
from common_library.common.db import DBconnector
from common_library.common.libs import queries_dbinit


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
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    #
    # normal case
    #
    workspace_id = 'workspace-01'
    json_create_01 = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        # create workspace
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
        # 1 (_wsid-admin) + service_account_user_roles分のroleが作成されていること
        assert len(response.json["data"]) == 1 + len(bl_service_account_user.service_account_user_roles(workspace_id))

        # workspace admin ロールが存在すること
        assert len([r["name"] for r in response.json["data"] if r["name"] == common.get_ws_admin_rolename(workspace_id)]) == 1

        # service account user ロールが全て存在すること
        for role in bl_service_account_user.service_account_user_roles(workspace_id):
            assert len([r["name"] for r in response.json["data"] if r["name"] == role]) == 1

    #
    # 最大ワークスペース数チェック
    #  normal caseで1件作成済みなので、最大数を1にmockしてエラーになることをチェックする
    #
    workspace_id = 'case_limit_over_workspace'
    json_create_01 = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default(), \
            mock.patch.object(bl_plan_service, 'organization_limits_get', return_value={const.RESOURCE_COUNT_WORKSPACES: 1}):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_create_01)

        assert response.status_code == 400

    #
    # 重複エラー
    #
    workspace_id = 'workspace-01'
    json_create_01 = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=json_create_01)

        assert response.status_code == 400

    #
    # informationsパラメータ無し
    #
    workspace_id = "case_no_informations"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        del workscace_param["informations"]

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

    #
    # メンテナンスモード中
    #
    workspace_id = "case_mente_mode"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default(), \
            mock.patch.object(maintenancemode, 'maintenace_mode_get', return_value='1'):

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 498

    #
    # validate error workspace id
    #
    workspace_id = "_case_validate_err_workspace_id"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400

    #
    # validate error workspace name
    #
    workspace_id = "case_validate_err_workspace_name"
    workscace_param = {**sample_data_workspace(workspace_id, organization['user_id']), **{"name": ""}}

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400

    #
    # validate error infomations
    #
    workspace_id = "case_validate_err_workspace_name"
    workscace_param = {**sample_data_workspace(workspace_id, organization['user_id']), **{"informations": {"environments": [{"name": "env1"}, {"name": "env1"}]}}}

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 400

    #
    # Get a service account token error
    #
    workspace_id = "case_get_sa_token_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 401

    #
    # workcpace compositeロール作成時に失敗
    #
    workspace_id = "case_composite_role_create_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.internal_api_client_id}/roles'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # workcpaceロール作成時に失敗
    #
    workspace_id = "case_role_create_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # ロール composite時のrole get(ws role)失敗
    #
    workspace_id = "case_composite_role_get_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.internal_api_client_id}/roles/{workspace_id}'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # ロール composite時の失敗(_ws-admin - ws)
    #
    workspace_id = "case_composite_role_get_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles/.*/composites'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # ワークスペース管理者付与用の_ws-adminロール取得失敗
    #
    workspace_id = "case_admin_role_get_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles/{common.get_ws_admin_rolename(workspace_id)}'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # ワークスペース管理者ロール付与失敗
    #
    workspace_id = "case_admin_role_set_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/role-mappings/clients'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # その他のワークスペースビルトインロールを生成する際のworkspaceのロールを取得パターンは
    # モック出来ない（同じものが呼ばれている）ので、テストパターンに含めない
    #

    #
    # その他のワークスペースビルトインロール生成失敗
    #
    workspace_id = "case_builtin_role_create_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        # POSTパラメータがservice account user用のロールの場合にrequests_mocker.register_uriに引っかける
        def additional_matcher(request):
            mocked_roles = bl_service_account_user.service_account_user_roles(workspace_id)
            ret = json.loads(request.text).get("name") in mocked_roles
            return ret

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles$'),
            status_code=500,
            json={},
            additional_matcher=additional_matcher
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # その他のワークスペースビルトインロール compsite生成失敗
    #
    workspace_id = "case_bi_role_cmp_create_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])
    mocked_roles = bl_service_account_user.service_account_user_roles(workspace_id)

    with test_common.requsts_mocker_default() as requests_mocker:

        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles/{mocked_roles[len(mocked_roles) - 1]}/composites$'),
            status_code=500,
            json={}
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # IT Automationのワークスペース作成に失敗
    #
    workspace_id = "case_ita_ws_create_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/{organization["organization_id"]}/workspaces/{workspace_id}/ita/$'),
            status_code=500,
            json={}
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # DBアクセスエラー
    #
    with test_common.requsts_mocker_default(), \
            test_common.pymysql_execute_raise_exception_mocker(queries_dbinit.SQL_INSERT_WORKSPACE_DBINFO, Exception('INSERT ERROR')):

        workspace_id = "case_db_insert_error"
        workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)


def test_workspace_delete(connexion_client):
    """test workspace delete api

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    #
    # normal case
    #
    workspace_id = "case_normal"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

    # workspaceのresourceがclean upされていること
    assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token)

    #
    # maintenance mode
    #
    workspace_id = "case_mente_mode"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

    with test_common.requsts_mocker_default(), \
            mock.patch.object(maintenancemode, 'maintenace_mode_get', return_value='1'):

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 498

    #
    # not exists
    #
    workspace_id = "case_not_exists"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 404

    #
    # ita workspace delete error (http:500)
    #
    workspace_id = "case_ita_delete_http_500"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/{organization["organization_id"]}/workspaces/{workspace_id}/ita/$'),
            status_code=500,
            json={}
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    #
    # ita workspace delete error (http:490)
    #
    workspace_id = "case_ita_delete_http_490"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.ita_api_admin_origin()}/api/{organization["organization_id"]}/workspaces/{workspace_id}/ita/$'),
            status_code=490,
            json={}
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500

    #
    # Get a service account token error
    #
    workspace_id = "case_get_sa_token_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 401

    #
    # delete role error
    #
    workspace_id = "case_delete_role_error"
    workscace_param = sample_data_workspace(workspace_id, organization['user_id'])

    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/{private.user_token_client_id}/roles/{common.get_ws_admin_rolename(workspace_id)}$'),
            status_code=500,
            json={}
        )

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/workspaces",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id']),
            json=workscace_param)

        assert response.status_code == 500


def assert_is_cleaned_up_resource(connexion_client, private, organization, workspace_id, token):

    with test_common.requsts_mocker_default():
        # compositeロールだけが出来上がってないこと
        resp_roles = api_keycloak_roles.clients_roles_get(realm_name=organization['organization_id'], client_id=private.internal_api_client_id, token=token)
        assert resp_roles.status_code == 200
        assert len([resp_role["name"] for resp_role in json.loads(resp_roles.text) if resp_role["name"].startswith(f"_{workspace_id}")]) == 0
        assert len([resp_role["name"] for resp_role in json.loads(resp_roles.text) if resp_role["name"] == workspace_id]) == 0

        # ロールだけが出来上がってないこと
        resp_roles = api_keycloak_roles.clients_roles_get(realm_name=organization['organization_id'], client_id=private.user_token_client_id, token=token)
        assert resp_roles.status_code == 200
        assert len([resp_role["name"] for resp_role in json.loads(resp_roles.text) if resp_role["name"].startswith(f"_{workspace_id}")]) == 0

        # Workspace DB 取得（存在しないこと）
        resp_ws = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/workspaces/{workspace_id}",
            headers=request_parameters.request_headers(organization['user_id'], workspace_role=common.get_ws_admin_rolename(workspace_id)))

        assert resp_ws.status_code == 404


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
