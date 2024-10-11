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
# from unittest import mock
import requests_mock

from common_library.common import const, common

from tests.common import test_common, request_parameters
from tests import test_user_service_controller, test_role_service_controller


def test_role_mappings_org_role_api(connexion_client):
    """test role_mappings_service_controller (organization role)

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    users = create_sample_users(connexion_client, organization['organization_id'], organization["user_id"], 5)

    #
    # organizationロール(ORG_ROLE_USER_MANAGER)に対して各種テストを行う
    #
    role_name = const.ORG_ROLE_USER_MANAGER

    with test_common.requsts_mocker_default():
        #
        # データなしの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

        #
        # ユーザーを1名追加する
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[0]['username']}])

        assert response.status_code == 200

        #
        # 追加データの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        assert response.json["data"][0]['preferred_username'] == users[0]['username']
        assert response.json["data"][0]['firstName'] == users[0]['firstName']
        assert response.json["data"][0]['lastName'] == users[0]['lastName']
        assert response.json["data"][0]['enabled'] == users[0]['enabled']
        assert response.json["data"][0]['affiliation'] == users[0]['affiliation']
        assert response.json["data"][0]['description'] == users[0]['description']

        #
        # ユーザーを3名追加する ⇒ 計4名
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[1]['username']},
                {"preferred_username": users[2]['username']},
                {"preferred_username": users[3]['username']},
            ])

        assert response.status_code == 200

        #
        # 追加データの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 4
        assert users[0]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[2]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[3]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # ユーザーを1名削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[3]['username']}
            ])

        assert response.status_code == 200

        #
        # データの確認(残3名)
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 3
        assert users[0]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[2]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # 残りのユーザーを全員削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[0]['username']},
                {"preferred_username": users[1]['username']},
                {"preferred_username": users[2]['username']}
            ])

        assert response.status_code == 200

        #
        # データの確認(残0名)
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

    #
    # organizationロール(ORG_ROLE_ORG_MANAGER)に対して各種テストを行う
    #
    role_name = const.ORG_ROLE_ORG_MANAGER

    with test_common.requsts_mocker_default():
        #
        # 自分自身が登録されているか確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        assert response.json["data"][0]['id'] == organization["user_id"]

        #
        # ユーザーを1名追加する
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[0]['username']}])

        assert response.status_code == 200

        #
        # 追加データの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2
        assert organization['preferred_username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[0]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # ユーザーを2名削除(オーガナイゼーション管理者全員削除⇒失敗)
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": organization['preferred_username']},
                {"preferred_username": users[0]['username']}
            ])

        assert response.status_code == 400
        assert response.json['result'] == '400-26008'

        #
        # 削除されてないことの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2

        #
        # ユーザーを1名削除(オーガナイゼーション管理者1名削除)
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[0]['username']}
            ])

        assert response.status_code == 200

        #
        # 削除データの確認
        #
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_name}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert len(response.json["data"]) == 1
        assert response.json["data"][0]['preferred_username'] == organization['preferred_username']


def test_role_mappings_ws_role_api(connexion_client):
    """test role_mappings_service_controller (workspace role)

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)

    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'ws01', organization["user_id"])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'ws02', organization["user_id"])

    users = create_sample_users(connexion_client, organization['organization_id'], organization["user_id"], 5)

    #
    # テスト用カスタムロール作成
    #
    role_ws01 = test_role_service_controller.sample_data_role('role_ws01', [workspace1['workspace_id']])
    role_both = test_role_service_controller.sample_data_role('role_both', [workspace1['workspace_id'], workspace2['workspace_id']])

    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=role_ws01)

        assert response.status_code == 200

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=role_both)

        assert response.status_code == 200

    #
    # ワークスペース管理者の設定
    #
    with test_common.requsts_mocker_default():
        #
        # オーガナイゼーション管理者がワークスペース管理者設定を追加
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[0]['username']},
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert users[0]['username'] in [i["preferred_username"] for i in response.json["data"]]
        assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # オーガナイゼーション管理者がワークスペース管理者設定を削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200
        assert users[1]['username'] not in [i["preferred_username"] for i in response.json["data"]]

        # TODO:確認
        # #
        # # ワークスペース管理者がワークスペース管理者設定
        # #
        # response = connexion_client.post(
        #     f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
        #     content_type='application/json',
        #     headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
        #     json=[
        #         {"preferred_username": users[1]['username']},
        #     ])

        # assert response.status_code == 200

        # # 確認
        # response = connexion_client.get(
        #     f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
        #     content_type='application/json',
        #     headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]))

        # assert response.status_code == 200
        # assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]

        # #
        # # ワークスペース管理者がワークスペース管理者設定を削除
        # #
        # response = connexion_client.patch(
        #     f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
        #     content_type='application/json',
        #     headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
        #     json=[
        #         {"preferred_username": users[1]['username']},
        #     ])

        # assert response.status_code == 200

        # # 確認
        # response = connexion_client.get(
        #     f"/api/{organization['organization_id']}/platform/roles/{common.get_ws_admin_rolename(workspace1['workspace_id'])}/users",
        #     content_type='application/json',
        #     headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]))

        # assert response.status_code == 200
        # assert users[1]['username'] not in [i["preferred_username"] for i in response.json["data"]]

    #
    # カスタムロール付与テスト
    #
    with test_common.requsts_mocker_default():
        #
        # ワークスペース１の管理者が該当のワークスペース１のカスタムロールにユーザーを追加
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_ws01['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_ws01['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]))

        assert response.status_code == 200
        assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # ワークスペース１の管理者が該当のワークスペース１のカスタムロールからユーザーを削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_ws01['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_ws01['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]))

        assert response.status_code == 200
        assert users[1]['username'] not in [i["preferred_username"] for i in response.json["data"]]

        #
        # ワークスペース１,２の管理者が該当のワークスペース１、２のカスタムロールにユーザーを追加
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id']), common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id']), common.get_ws_admin_rolename(workspace2['workspace_id'])]))

        assert response.status_code == 200
        assert users[1]['username'] in [i["preferred_username"] for i in response.json["data"]]

        #
        # ワークスペース１,２の管理者が該当のワークスペース１、２のカスタムロールからユーザーを削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id']), common.get_ws_admin_rolename(workspace2['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 200

        # 確認
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]))

        assert response.status_code == 200
        assert users[1]['username'] not in [i["preferred_username"] for i in response.json["data"]]

        #
        # ワークスペース１の管理者が該当のワークスペース１、２のカスタムロールにユーザーを追加
        #
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 400

        #
        # ワークスペース１の管理者が該当のワークスペース１、２のカスタムロールからユーザーを削除
        #
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{role_both['name']}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(users[0]['id'], workspace_role=[common.get_ws_admin_rolename(workspace1['workspace_id'])]),
            json=[
                {"preferred_username": users[1]['username']},
            ])

        assert response.status_code == 400


def test_role_user_mapping_get(connexion_client):
    """test role_user_mapping_get

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    #
    # 正常応答
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 200

    #
    # 存在しないロールを取得
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/not-found-role/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 400

    #
    # HTTP-404 api_keycloak_roles.role_uesrs_get
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 0件でも200応答なのでmockする
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/.*/roles/{const.ORG_ROLE_ORG_MANAGER}/users'),
            status_code=404,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 404

    #
    # HTTP-500 api_keycloak_roles.role_uesrs_get
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 500応答にmockする
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/clients/.*/roles/{const.ORG_ROLE_ORG_MANAGER}/users'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]))

        assert response.status_code == 500
        assert response.json['result'] == '500-26001'


def test_role_user_mapping_create(connexion_client):
    """test role_user_mapping_create

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    users = create_sample_users(connexion_client, organization['organization_id'], organization["user_id"], 5)

    #
    # 正常系
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[0]['username']}])

        assert response.status_code == 200

    # TODO:message-text error
    # #
    # # 重複エラー
    # #
    # with test_common.requsts_mocker_default():
    #     response = connexion_client.post(
    #         f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
    #         content_type='application/json',
    #         headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
    #         json=[{"preferred_username": 'dummy-user'}, {"preferred_username": 'dummy-user'},])
    #
    #     assert response.status_code == 400

    #
    # 存在しないユーザーを指定
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": 'dummy-user'},])

        assert response.status_code == 400
        assert response.json['result'] == '400-26005'

    # TODO: response-code 400応答となる
    # #
    # # HTTP-500 api_keycloak_users.user_get
    # #
    # with test_common.requsts_mocker_default() as requests_mocker:
    #     # 500応答にmockする
    #     requests_mocker.register_uri(
    #         requests_mock.GET,
    #         re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
    #         status_code=500,
    #         json={})

    #     response = connexion_client.post(
    #         f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
    #         content_type='application/json',
    #         headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
    #         json=[{"preferred_username": 'dummy-user'},])

    #     assert response.status_code == 500
    #     assert response.json['result'] == '400-26004'

    #
    # HTTP-500 api_keycloak_roles.user_client_role_mapping_create
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 500応答にmockする
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/role-mappings/clients/.*'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[1]['username']}])

        assert response.status_code == 500


def test_role_user_mapping_delete(connexion_client):
    """test role_user_mapping_delete

    Args:
        connexion_client (_type_): _description_
    """
    organization = test_common.create_organization(connexion_client)
    users = create_sample_users(connexion_client, organization['organization_id'], organization["user_id"], 5)

    #
    # 正常系
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[0]['username']}])

        assert response.status_code == 200

    # TODO:message-text error
    # #
    # # 重複エラー
    # #
    # with test_common.requsts_mocker_default():
    #     response = connexion_client.patch(
    #         f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
    #         content_type='application/json',
    #         headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
    #         json=[{"preferred_username": 'dummy-user'}, {"preferred_username": 'dummy-user'},])
    #
    #     assert response.status_code == 400

    # TODO: status_code 500応答になる
    # #
    # # 存在しないユーザーを指定
    # #
    # with test_common.requsts_mocker_default():
    #     response = connexion_client.patch(
    #         f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
    #         content_type='application/json',
    #         headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
    #         json=[{"preferred_username": 'dummy-user'},])

    #     assert response.status_code == 400
    #     assert response.json['result'] == '400-26007'

    #
    # HTTP-500 api_keycloak_users.user_get
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 500応答にmockする
        requests_mocker.register_uri(
            requests_mock.GET,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users'),
            status_code=500,
            json={})

        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": 'dummy-user'},])

        assert response.status_code == 500
        assert response.json['result'] == '400-26006'

    #
    # HTTP-500 api_keycloak_roles.user_client_role_mapping_delete
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        # 500応答にmockする
        requests_mocker.register_uri(
            requests_mock.DELETE,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/admin/realms/{organization["organization_id"]}/users/.*/role-mappings/clients/.*'),
            status_code=500,
            json={})

        response = connexion_client.patch(
            f"/api/{organization['organization_id']}/platform/roles/{const.ORG_ROLE_ORG_MANAGER}/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization["user_id"], organization_role=[const.ORG_ROLE_ORG_MANAGER]),
            json=[{"preferred_username": users[0]['username']}])

        assert response.status_code == 500
        assert response.json['result'] == '500-26003'


def create_sample_users(connexion_client, organization_id, organization_manager_user_id, create_user_num):
    """テスト用ユーザー作成

    Args:
        connexion_client (_type_): _description_
        organization_id (_type_): _description_
        organization_manager_user_id (_type_): _description_
        create_user_num (_type_): _description_

    Returns:
        _type_: _description_
    """
    # 登録データ
    users = [test_user_service_controller.sample_data_user(f"role-mp-test-{i}") for i in range(1, create_user_num + 1)]

    # User登録
    for user in users:
        response = connexion_client.post(
            f"/api/{organization_id}/platform/users",
            content_type='application/json',
            headers=request_parameters.request_headers(organization_manager_user_id),
            json=user)

        assert response.status_code == 200

        response = connexion_client.get(
            f"/api/{organization_id}/platform/users?search={user['username']}",
            content_type='application/json',
            headers=request_parameters.request_headers(organization_manager_user_id))

        assert response.status_code == 200
        assert len(response.json['data']) == 1
        user['id'] = response.json['data'][0]['id']

    return users
