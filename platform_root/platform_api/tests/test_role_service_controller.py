#   Copyright 2024 NEC Corporation
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
import re
import json
from unittest import mock
from tests.common import request_parameters, test_common
import ulid
import requests_mock
from unittest import mock

from common_library.common import const, validation, common
from common_library.common import api_keycloak_roles

import logging

from common_library.common import bl_plan_service

logger = logging.getLogger(__name__)


def test_role_api(connexion_client):
    """role service api test

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    with test_common.requsts_mocker_default():
        # workspace role 0件取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))
        assert response.status_code == 200
        assert len(response.json["data"]) == 0

    # workspace作成
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    with test_common.requsts_mocker_default():
        # workspace role 作成
        post_data = sample_data_role('role-test-01', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        # 作成したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["name"] == post_data["name"]
        assert get_role[0]["description"] == post_data["description"]
        assert get_role[0]["kind"] == post_data["kind"]
        assert is_equal_workspaces(get_role[0]["workspaces"], post_data["workspaces"])

        # role更新
        put_data = sample_data_role_update(f'{post_data["description"]} update', [workspace2['workspace_id']])

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 200

        # 更新したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["description"] == put_data["description"]
        assert get_role[0]["kind"] == put_data["kind"]
        assert is_equal_workspaces(get_role[0]["workspaces"], put_data["workspaces"])

        # role更新(ワークスペースを２つに変更)
        put_data = sample_data_role_update(f'{post_data["description"]} update', [workspace1['workspace_id'], workspace2['workspace_id']])

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 200

        # 更新したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["description"] == put_data["description"]
        assert get_role[0]["kind"] == put_data["kind"]
        assert is_equal_workspaces(get_role[0]["workspaces"], put_data["workspaces"])

        # role更新(ワークスペースを0に変更)
        put_data = sample_data_role_update(f'{post_data["description"]} update', [])

        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 200

        # 更新したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["description"] == put_data["description"]
        assert get_role[0]["kind"] == put_data["kind"]
        assert len(get_role[0]["workspaces"]) == 0

        # role削除
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

        # 削除したworkspace role 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(fillter_role_from_list(response.json["data"], post_data["name"])) == 0

        # workspace role 作成(ワークスペースなし)
        post_data = sample_data_role('workspace_none_role', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        # 作成したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["description"] == post_data["description"]
        assert get_role[0]["kind"] == post_data["kind"]
        assert len(get_role[0]["workspaces"]) == 0

        # workspace role 作成(ワークスペース2つ)
        post_data = sample_data_role('workspace_2_role', [workspace1['workspace_id'], workspace2['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        # 作成したworkspace role 取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        get_role = fillter_role_from_list(response.json["data"], post_data["name"])
        assert len(get_role) == 1
        assert get_role[0]["description"] == post_data["description"]
        assert get_role[0]["kind"] == post_data["kind"]
        assert is_equal_workspaces(get_role[0]["workspaces"], post_data["workspaces"])


def test_role_validation(connexion_client):
    """test role validation

    Args:
        connexion_client (_type_): _description_
    """
    validate = validation.validate_role_name(None)
    assert not validate.ok

    validate = validation.validate_role_name("t".ljust(const.length_role_name, "_"))
    assert validate.ok

    validate = validation.validate_role_name("t".ljust(const.length_role_name + 1, "_"))
    assert not validate.ok

    validate = validation.validate_role_name("!")
    assert not validate.ok

    validate = validation.validate_role_name("a_")
    assert validate.ok

    validate = validation.validate_role_name("_a")
    assert not validate.ok

    validate = validation.validate_role_kind(None)
    assert not validate.ok

    validate = validation.validate_role_kind("_")
    assert not validate.ok

    validate = validation.validate_role_kind(const.ROLE_KIND_ORGANIZATION)
    assert not validate.ok

    validate = validation.validate_role_kind(const.ROLE_KIND_WORKSPACE)
    assert validate.ok

    # validate = validation.validate_role_description(None)
    # assert validate.ok

    validate = validation.validate_role_description("t".ljust(const.length_role_description, "_"))
    assert validate.ok

    validate = validation.validate_role_description("t".ljust(const.length_role_description + 1, "_"))
    assert not validate.ok

    validate = validation.validate_role_workspaces("dummy")
    assert not validate.ok

    validate = validation.validate_role_workspaces([{}])
    assert not validate.ok

    validate = validation.validate_role_workspaces([{"id": ""}])
    assert not validate.ok

    validate = validation.validate_role_workspaces([{"id": f"ws{i}"} for i in range(const.max_role_workspaces)])
    assert validate.ok

    validate = validation.validate_role_workspaces([{"id": f"ws{i}"} for i in range(const.max_role_workspaces + 1)])
    assert not validate.ok

    validate = validation.validate_role_workspaces([{"id": "test1"}, {"id": "t".ljust(const.length_workspace_id, "_")}])
    assert validate.ok

    validate = validation.validate_role_workspaces([{"id": "test1"}, {"id": "t".ljust(const.length_workspace_id + 1, "_")}])
    assert not validate.ok

    validate = validation.validate_role_workspaces([{"id": "test1"}, {"id": "test2"}, {"id": "test3"}])
    assert validate.ok

    validate = validation.validate_role_workspaces([{"id": "test1"}, {"id": "test2"}, {"id": "test1"}])
    assert not validate.ok


def test_role_create(connexion_client):
    """test role create

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    # workspace作成
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    with test_common.requsts_mocker_default():
        # workspace role 作成(正常パターン)
        post_data = sample_data_role('workspace_1_role', [workspace1['workspace_id'], workspace2['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200
        # 後で重複エラーさせるために保持
        created_role = post_data["name"]

    with test_common.requsts_mocker_default(), \
            mock.patch.object(bl_plan_service, 'organization_limits_get', return_value={const.RESOURCE_COUNT_ROLES: 1}):

        # リミット超過
        post_data = sample_data_role('limit-over', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        # body形式異常
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            data="dummy")

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        # validation error route
        post_data = sample_data_role('validate-test', [])

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json={**post_data, **{"name": "_"}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json={**post_data, **{"kind": "_"}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json={**post_data, **{"description": "t".ljust(const.length_role_description + 1, "_")}})

        assert response.status_code == 400

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json={**post_data, **{"workspaces": [{"id": ""}]}})

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        # 権限無し（オーガナイゼーション、ワークスペースなし）
        post_data = sample_data_role('no-permission', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"]),
            json=post_data)

        assert response.status_code == 400

        # 他のworkspace管理者
        post_data = sample_data_role('no-permission-other-workspace', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=post_data)

        assert response.status_code == 400

        # workspace管理者
        post_data = sample_data_role('workspace-admin', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=post_data)

        assert response.status_code == 200

        # 複数のworkspace管理者
        post_data = sample_data_role('both-workspace-admin', [workspace1['workspace_id'], workspace2['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(
                organization["user_id"],
                workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id']), common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=post_data)

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # token発行失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        post_data = sample_data_role('get-token-fail', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # get client role失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/][^/]*/roles/{const.ORG_ROLE_ORG_MANAGER}'),
            status_code=500,
            json={})

        post_data = sample_data_role('get-token-fail', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # 重複エラーの確認
        post_data = sample_data_role(created_role, [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 409

    with test_common.requsts_mocker_default() as requests_mocker:
        # post client role失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/][^/]*/roles'),
            status_code=500,
            json={})

        post_data = sample_data_role('post-role-failed', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # post client role composites失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/][^/]*/roles/[^/][^/]*/composites'),
            status_code=500,
            json={})

        post_data = sample_data_role('post-role-failed', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 500


def test_role_delete(connexion_client):
    organization = test_common.create_organization(connexion_client)

    # workspace作成
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    with test_common.requsts_mocker_default():
        # workspace role 削除 正常パターン (権限workspace:0件)
        post_data = sample_data_role('workspace_0_role', [])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default():
        # workspace role 削除 正常パターン (権限workspace:2件)
        post_data = sample_data_role('workspace_0_role', [workspace1['workspace_id'], workspace2['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default():
        # workspace role 削除 正常パターン (ワークスペース管理者)
        post_data = sample_data_role('workspace_0_role', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace1["workspace_id"])]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default():
        # workspace role 削除 異常パターン (ワークスペース管理者の越権)
        post_data = sample_data_role('workspace_0_role', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace2["workspace_id"])]))

        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        # validation error route
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # ロールが存在しないルート
        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/not-exists-role",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 404

    with test_common.requsts_mocker_default() as requests_mocker:
        # 異常系ルートのテストデータ準備
        fail_test_route_role = 'fail-route-test'
        post_data = sample_data_role(fail_test_route_role, [workspace1['workspace_id'], workspace2['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # token発行失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{fail_test_route_role}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_get失敗(500)
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{fail_test_route_role}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_get失敗(404)
        post_data = sample_data_role('composites-404', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/[^/]*/composites'),
            status_code=404,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_get失敗(500)
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/[^/]*/composites'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{fail_test_route_role}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_delete失敗(500)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/'),
            status_code=500,
            json={})

        response = connexion_client.delete(
            f"/api/{organization['organization_id']}/platform/roles/{fail_test_route_role}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500


def test_role_list(connexion_client):
    """test role list

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    # workspace作成
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    with test_common.requsts_mocker_default():
        # role取得（正常:オーガナイゼーション管理者）
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

        # role取得（正常:ワークスペース管理者単一）
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace1["workspace_id"])]))

        assert response.status_code == 200
        # 権限を持つroleのみが返されること
        assert len(fillter_role_from_list(response.json["data"], common.get_ws_admin_rolename(workspace1["workspace_id"]))) == 1
        assert len(fillter_role_from_list(response.json["data"], common.get_ws_admin_rolename(workspace2["workspace_id"]))) == 0

        # kindフィルター指定(ROLE_KIND_ORGANIZATION)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_ORGANIZATION}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        # fillter指定したロールのみ取得できていること
        assert len([role for role in response.json["data"] if role["kind"] == const.ROLE_KIND_ORGANIZATION]) > 0
        assert len([role for role in response.json["data"] if role["kind"] == const.ROLE_KIND_WORKSPACE]) == 0

        # kindフィルター指定(ROLE_KIND_WORKSPACE)
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles?kind={const.ROLE_KIND_WORKSPACE}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        # fillter指定したロールのみ取得できていること
        assert len([role for role in response.json["data"] if role["kind"] == const.ROLE_KIND_ORGANIZATION]) == 0
        assert len([role for role in response.json["data"] if role["kind"] == const.ROLE_KIND_WORKSPACE]) > 0

    with test_common.requsts_mocker_default() as requests_mocker:
        # token発行失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_roles_get失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_get失敗
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/[^/]*/composites'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500

    # TODO:500応答となる（要調査）
    # with test_common.requsts_mocker_default() as requests_mocker:
    #     # clients_role_composites_get失敗(404)
    #     requests_mocker.register_uri(
    #         requests_mock.GET,
    #         re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{common.get_ws_admin_rolename(workspace1["workspace_id"])}/composites'),
    #         status_code=404,
    #         json={})

    #     response = connexion_client.get(
    #         f"/api/{organization['organization_id']}/platform/roles",
    #         content_type='application/json',
    #         headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

    #     assert response.status_code == 200


def test_role_update(connexion_client):
    organization = test_common.create_organization(connexion_client)

    # workspace作成
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])
    put_test_role_name = 'role-update-1'

    with test_common.requsts_mocker_default():
        # role update正常系

        # テスト用データ作成
        post_data = sample_data_role(put_test_role_name, [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        # 更新の実施
        put_data = sample_data_role_update(f'{post_data["description"]} update', [workspace2['workspace_id']])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 200

        # データ取得
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        puted_data = fillter_role_from_list(response.json["data"], put_test_role_name)
        assert len(puted_data) == 1
        assert puted_data[0]["description"] == put_data["description"]
        assert puted_data[0]["kind"] == put_data["kind"]
        assert is_equal_workspaces(puted_data[0]["workspaces"], put_data["workspaces"])

        # 更新権限なし（変更前workspace権限）
        put_data = sample_data_role_update(f'{post_data["description"]} update non-auth', [workspace2['workspace_id']])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=put_data)

        assert response.status_code == 400

        # 更新権限なし（変更後workspace権限）
        put_data = sample_data_role_update(f'{post_data["description"]} update non-auth', [workspace1['workspace_id']])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=put_data)

        assert response.status_code == 400

        # 更新権限あり（変更前・後workspace権限）
        put_data = sample_data_role_update(f'{post_data["description"]} update both-auth', [workspace1['workspace_id']])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id']), common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=put_data)

        assert response.status_code == 200

    with test_common.requsts_mocker_default():
        # validation error route

        # not json
        role_name_validation_error = 'validation-error'
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{role_name_validation_error}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            data="duumy")

        assert response.status_code == 400

        # role name error
        put_data = sample_data_role_update("validation error", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/_validate-error",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 400

        # role kind error
        put_data = {**sample_data_role_update("validation error", []), **{"kind": "dummy"}}
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{role_name_validation_error}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 400

        # description error
        put_data = sample_data_role_update("validation error".ljust(const.length_role_description + 1, "_"), [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{role_name_validation_error}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 400

        # workspaces error
        put_data = sample_data_role_update("validation error", ["duplicate-value", "duplicate-value"])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{role_name_validation_error}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 400

    with test_common.requsts_mocker_default() as requests_mocker:
        # token発行失敗
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("token error", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 401

    with test_common.requsts_mocker_default() as requests_mocker:
        # not exists role
        put_data = sample_data_role_update("not exists error", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/not-exists-role",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 404

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_get(500)
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_get(500)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_get(404)
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{put_test_role_name}/composites'),
            status_code=404,
            json={})

        put_data = sample_data_role_update("clients_role_composites_get(404)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 200

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_get(500)
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{put_test_role_name}/composites'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_composites_get(500)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_get(workspace_id role:500)
        # 変更時に新たに付与するWorkspace権限の取得に失敗するパターン
        # テスト用データ作成
        post_data = sample_data_role('get-workspace-id-role-error', [workspace1['workspace_id']])
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=post_data)

        assert response.status_code == 200

        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{workspace2["workspace_id"]}'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_get(workspace_id role:500)", [workspace2['workspace_id']])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{post_data['name']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_update(500)
        requests_mocker.register_uri(
            requests_mock.PUT,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{put_test_role_name}'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_update(500)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_create(500)
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{put_test_role_name}/composites'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_update(500)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500

    with test_common.requsts_mocker_default() as requests_mocker:
        # clients_role_composites_delete(500)
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/[^/]*/roles/{put_test_role_name}/composites'),
            status_code=500,
            json={})

        put_data = sample_data_role_update("clients_role_composites_delete(500)", [])
        response = connexion_client.put(
            f"/api/{organization['organization_id']}/platform/roles/{put_test_role_name}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=put_data)

        assert response.status_code == 500


def sample_data_role(role_name, workspaces):
    return {
        "name": role_name,
        "description": f"{role_name} description",
        "kind": const.ROLE_KIND_WORKSPACE,
        "workspaces": [{"id": workspace} for workspace in workspaces]
    }


def sample_data_role_update(description, workspaces):
    return {
        "description": description,
        "kind": const.ROLE_KIND_WORKSPACE,
        "workspaces": [{"id": workspace} for workspace in workspaces]
    }


def fillter_role_from_list(role_list: list, role_name: str):
    return [role for role in role_list if role["name"] == role_name]


def is_equal_workspaces(workspaces1: list, workspaces2: list):
    return sorted(workspaces1, key=lambda x: x["id"]) == sorted(workspaces2, key=lambda x: x["id"])
