#   Copyright 2026 NEC Corporation
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
import requests_mock
from unittest import mock
import json
import jwt

from tests.common import request_parameters, test_common
from common_library.common import const
from common_library.common import api_keycloak_tokens, api_keycloak_roles, api_keycloak_users
from common_library.common import bl_service_account_user
from common_library.common import bl_plan_service

from common_library.common.db import DBconnector

# 公開要APIのテストからサンプルデータ生成関数を再利用する
# （サービスアカウントユーザー作成リクエストのbodyを生成するヘルパー）
from tests.test_service_account_users_service_controller import sample_data_service_account_user


def get_user(organization_id, username, token):
    """ユーザー名からKeycloakユーザーを取得するテストヘルパー

    作成したサービスアカウントユーザーの「id」を取得したい場面で使用する。
    （internal-apiのcreateはbodyを返さないため、後続処理で必要なidをKeycloakから取り直す）

    Args:
        organization_id (str): オーガナイゼーションID（= Keycloak realm名）
        username (str): 取得対象のユーザー名
        token (str): アクセストークン

    Returns:
        list[dict]: Keycloakユーザーのリスト（該当なしの場合は空リスト）
    """
    response = api_keycloak_users.user_get(
        realm_name=organization_id, user_name=username, token=token
    )
    if response.status_code == 200:
        return json.loads(response.text)
    else:
        # 取得に失敗した場合はテストを失敗させる
        raise Exception('Exception: api_keycloak_users.user_get')


def test_internal_service_account_user_create(connexion_client):
    """内部API: サービスアカウントユーザー作成のテスト

    検証内容:
        1. 正常系 … ユーザーが作成され、属性(type/description)とロールが正しく付与されること
        2. 上限超過 … ユーザー数の上限に達している場合は400になること
        3. バリデーションエラー … 不正なusernameの場合は400になること

    Args:
        connexion_client: connexionのテストクライアント
    """
    # テスト用のオーガナイゼーションとワークスペースを作成
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # 検証用トークン発行
    #   作成結果（ユーザー/ロール）をKeycloakへ直接問い合わせて確認するために使用する
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
        # 正常系
        #
        normally_test_username = 'internal-service-account-user-ansible-normally'
        normally_test_json = sample_data_service_account_user(normally_test_username, const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)

        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=normally_test_json
        )
        assert response.status_code == 200

        # ユーザーが作成されていること / 作成されたユーザーの属性が正しいこと
        create_users = get_user(organization['organization_id'], normally_test_username, token)
        assert len(create_users) == 1
        assert create_users[0]["username"] == normally_test_json["username"]
        assert create_users[0]["attributes"]["service_account_user_type"][0] == normally_test_json["service_account_user_type"]
        assert create_users[0]["attributes"]["description"][0] == normally_test_json["description"]

        # 作成したユーザーにサービスアカウント用ロールが1つだけ付与されていること
        resp_get_user_role = api_keycloak_roles.user_role_get(
            realm_name=organization['organization_id'], user_id=create_users[0]["id"], client_id=private.user_token_client_id, token=token)
        assert resp_get_user_role.status_code == 200
        resp_get_user_role_json = json.loads(resp_get_user_role.text)
        assert len(resp_get_user_role_json) == 1
        # 付与されたロール名が「ワークスペース×種別」から導出される想定のロール名と一致すること
        assert resp_get_user_role_json[0]["name"] == bl_service_account_user.service_account_user_role_name(
            workspace['workspace_id'], normally_test_json["service_account_user_type"])

    with test_common.requsts_mocker_default(), \
            mock.patch.object(bl_plan_service, 'organization_limits_get', return_value={const.RESOURCE_COUNT_USERS: 1}):
        #
        # 上限超過（ユーザー数上限を1に設定 → 既に1名いるため作成不可）
        #
        test_json = sample_data_service_account_user("internal-limit-over", const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)

        response = connexion_client.post(
            f"/internal-api/{organization['organization_id']}/platform/workspaces/{workspace['workspace_id']}/service-account-users",
            headers=request_parameters.request_headers(organization['user_id']),
            json=test_json
        )
        # 上限超過のため400
        assert response.status_code == 400

    with test_common.requsts_mocker_default():
        #
        # バリデーションエラー（不正なusername）
        #
        validate_error = sample_data_service_account_user('internal-validation-error', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)

        # usernameが規約違反（先頭"_"）のため400になること
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**validate_error, **{"username": "_error-id"}}
        )
        assert response.status_code == 400

        # service_account_user_typeが不正な値のため400になること
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**validate_error, **{"service_account_user_type": "dummy"}}
        )
        assert response.status_code == 400

        # descriptionが最大長超過のため400になること
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json={**validate_error, **{"description": "t".ljust(const.length_user_description + 1, "_")}}
        )
        assert response.status_code == 400


def test_internal_service_account_user_create_conflict(connexion_client):
    """内部API: サービスアカウントユーザー作成の重複テスト

    同一ユーザー名で2回作成すると、2回目はKeycloak側で競合(409)となり
    APIとしては400を返すことを検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        #
        # 1回目の作成（正常）
        #
        test_json = sample_data_service_account_user('internal-conflict-user', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=test_json
        )
        assert response.status_code == 200

        #
        # ケース: 同じユーザーを再作成（重複 → 400）
        #
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=test_json
        )
        assert response.status_code == 400


def test_internal_service_account_user_list(connexion_client):
    """内部API: サービスアカウントユーザー一覧のテスト

    検証内容:
        1. 初期状態は0件
        2. 種別違い(ansible/oase)で2件作成後、一覧に2件返り、各属性が正しいこと
        3. トークン取得失敗時は401になること

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        #
        # 初期状態は0件であること
        #
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200
        assert len(response.json["data"]) == 0

        #
        # サービスアカウントユーザーの追加（種別: ansible）
        #
        service_account_user1_data = sample_data_service_account_user('internal-list-ansible-1', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user1_data
        )
        assert response.status_code == 200

        #
        # サービスアカウントユーザーの追加（種別: oase）
        #
        service_account_user2_data = sample_data_service_account_user('internal-list-oase-1', const.SERVICE_ACCOUNT_USER_TYPE_OASE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user2_data
        )
        assert response.status_code == 200

        #
        # 一覧取得 → 追加した2件が返ること
        #
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']))

        assert response.status_code == 200
        assert len(response.json["data"]) == 2

        # username単位で該当行を抽出し、種別・説明が登録内容と一致することを確認
        response_user1_row = [row for row in response.json["data"] if row["username"] == service_account_user1_data["username"]]
        response_user2_row = [row for row in response.json["data"] if row["username"] == service_account_user2_data["username"]]
        assert response_user1_row[0]["service_account_user_type"] == service_account_user1_data["service_account_user_type"]
        assert response_user1_row[0]["description"] == service_account_user1_data["description"]
        assert response_user2_row[0]["service_account_user_type"] == service_account_user2_data["service_account_user_type"]
        assert response_user2_row[0]["description"] == service_account_user2_data["description"]

    #
    # ケース: トークン取得エラー
    #   Keycloakのトークンエンドポイントを500に差し替え、内部トークン取得失敗→401になること
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']))
        assert response.status_code == 401


def test_internal_service_account_user_token_create(connexion_client):
    """内部API: リフレッシュトークン発行のテスト

    検証内容:
        1. 正常系 … refresh_tokenが返り、subが対象ユーザーであること
        2. 存在しないユーザー … 400になること
        3. トークン取得エラー … 401になること

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # 検証用トークン発行（作成したユーザーのid取得に使用）
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    #
    # 前提: トークン発行対象となるサービスアカウントユーザーを作成
    #
    with test_common.requsts_mocker_default():
        service_account_user_data = sample_data_service_account_user('internal-token-user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user_data
        )
        assert response.status_code == 200
        # 後続でuser_idが必要なためKeycloakから取得
        service_account_user01 = get_user(organization['organization_id'], service_account_user_data["username"], token)[0]

    #
    # ケース: 正常系
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id']),
            json={}
        )
        assert response.status_code == 200
        refresh_token = response.json.get("data", {}).get("refresh_token", "")
        assert refresh_token != ""
        # refresh_tokenをJWTデコードし、sub(=ユーザーID)が対象ユーザーと一致すること
        assert jwt.decode(refresh_token, options={"verify_signature": False})["sub"] == service_account_user01['id']

    #
    # ケース: 存在しないサービスアカウントユーザー（→ 400）
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/not-exists-user-id/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id']),
            json={}
        )
        assert response.status_code == 400

    #
    # ケース: トークン取得エラー（→ 401）
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id']),
            json={}
        )
        assert response.status_code == 401


def test_internal_service_account_user_token_create_not_service_account(connexion_client):
    """内部API: リフレッシュトークン発行のテスト（サービスアカウント以外を指定）

    サービスアカウントではない通常ユーザー(管理者)のIDを指定した場合、
    トークン発行は許可されず400になることを検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    with test_common.requsts_mocker_default():
        #
        # ケース: 管理者ユーザー(=サービスアカウントではない)を指定（→ 400）
        #
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{organization["user_id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id']),
            json={}
        )
        assert response.status_code == 400


def test_internal_service_account_user_token_create_other_workspace(connexion_client):
    """内部API: リフレッシュトークン発行のテスト（別ワークスペースのユーザーを指定）

    workspace1に作成したサービスアカウントユーザーに対して、
    workspace2のパスからトークン発行しようとすると400になること（所属ワークスペース検証）を検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    # 同一オーガナイゼーション内に2つのワークスペースを用意
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])
    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    with test_common.requsts_mocker_default():
        #
        # workspace1にサービスアカウントユーザーを作成
        #
        service_account_user_data = sample_data_service_account_user('internal-otherws-token-user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace1["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user_data
        )
        assert response.status_code == 200
        service_account_user01 = get_user(organization['organization_id'], service_account_user_data["username"], token)[0]

        #
        # ケース: 別ワークスペース(workspace2)のパスからトークン発行（→ 400）
        #
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace2["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id']),
            json={}
        )
        assert response.status_code == 400


def test_internal_service_account_user_token_list(connexion_client):
    """内部API: リフレッシュトークン一覧のテスト

    検証内容:
        1. 正常系 … トークンを2件発行後、一覧に2件返ること
        2. 存在しないユーザー … 400になること
        3. トークン取得エラー … 401になること

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    #
    # 検証用トークン発行（作成したユーザーのid取得に使用）
    #
    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])

    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    #
    # 前提: サービスアカウントユーザーを作成
    #
    with test_common.requsts_mocker_default():
        service_account_user_data = sample_data_service_account_user('internal-tokenlist-user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user_data
        )
        assert response.status_code == 200
        service_account_user01 = get_user(organization['organization_id'], service_account_user_data["username"], token)[0]

    #
    # 前提: リフレッシュトークンを2件発行しておく
    #
    with test_common.requsts_mocker_default():
        for _ in range(2):
            response = connexion_client.post(
                f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
                headers=request_parameters.request_headers(organization['user_id']),
                json={}
            )
            assert response.status_code == 200

    #
    # ケース: 正常系（発行済みの2件が一覧に返ること）
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'])
        )
        assert response.status_code == 200
        assert len(response.json.get("data", {})) == 2

    #
    # ケース: 存在しないサービスアカウントユーザー（→ 400）
    #
    with test_common.requsts_mocker_default():
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/not-exists-user-id/refresh_tokens',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'])
        )
        assert response.status_code == 400

    #
    # ケース: トークン取得エラー（→ 401）
    #
    with test_common.requsts_mocker_default() as requests_mocker:
        requests_mocker.register_uri(
            requests_mock.POST,
            re.compile(rf'^{test_common.keycloak_origin()}/auth/realms/{organization["organization_id"]}/protocol/openid-connect/token'),
            status_code=500,
            json={})

        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            headers=request_parameters.request_headers(organization['user_id'])
        )
        assert response.status_code == 401


def test_internal_service_account_user_token_list_empty(connexion_client):
    """内部API: リフレッシュトークン一覧のテスト（トークン0件）

    トークンを一度も発行していないサービスアカウントユーザーに対しては、
    一覧が空リストで返ること（正常系）を検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    workspace = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])

    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])
    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    with test_common.requsts_mocker_default():
        #
        # サービスアカウントユーザーを作成（トークンは未発行）
        #
        service_account_user_data = sample_data_service_account_user('internal-emptytoken-user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user_data
        )
        assert response.status_code == 200
        service_account_user01 = get_user(organization['organization_id'], service_account_user_data["username"], token)[0]

    with test_common.requsts_mocker_default():
        #
        # ケース: トークンなし（空リストが返ること）
        #
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'])
        )
        assert response.status_code == 200
        assert len(response.json.get("data", {})) == 0


def test_internal_service_account_user_token_list_other_workspace(connexion_client):
    """内部API: リフレッシュトークン一覧のテスト（別ワークスペースのユーザーを指定）

    workspace1に作成したサービスアカウントユーザーに対して、
    workspace2のパスから一覧取得しようとすると400になること（所属ワークスペース検証）を検証する。

    Args:
        connexion_client: connexionのテストクライアント
    """
    organization = test_common.create_organization(connexion_client)
    # 同一オーガナイゼーション内に2つのワークスペースを用意
    workspace1 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-01', organization['user_id'])
    workspace2 = test_common.create_workspace(connexion_client, organization['organization_id'], 'workspace-02', organization['user_id'])

    db = DBconnector()
    private = db.get_organization_private(organization['organization_id'])
    token_response = api_keycloak_tokens.service_account_get_token(
        organization['organization_id'], private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    assert token_response.status_code == 200
    token = json.loads(token_response.text)["access_token"]

    with test_common.requsts_mocker_default():
        #
        # workspace1にサービスアカウントユーザーを作成
        #
        service_account_user_data = sample_data_service_account_user('internal-otherws-tokenlist-user01', const.SERVICE_ACCOUNT_USER_TYPE_ANSIBLE)
        response = connexion_client.post(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace1["workspace_id"]}/service-account-users',
            headers=request_parameters.request_headers(organization['user_id']),
            json=service_account_user_data
        )
        assert response.status_code == 200
        service_account_user01 = get_user(organization['organization_id'], service_account_user_data["username"], token)[0]

        #
        # ケース: 別ワークスペース(workspace2)のパスから一覧取得（→ 400）
        #
        response = connexion_client.get(
            f'/internal-api/{organization["organization_id"]}/platform/workspaces/{workspace2["workspace_id"]}/service-account-users/{service_account_user01["id"]}/refresh_tokens',
            content_type='application/json',
            headers=request_parameters.request_headers(organization['user_id'])
        )
        assert response.status_code == 400
