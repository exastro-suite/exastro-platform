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
"""auth_proxy.is_allowed_request() と AUTH_PATTERN の認可テスト
"""
import os
import re

import pytest
import yaml

import auth_proxy
from common_library.common import const

ORG = "org1"
WS = "ws1"
OTHER_WS = "ws2"
WS_ADMIN = f"_{WS}-admin"
OTHER_WS_ADMIN = f"_{OTHER_WS}-admin"

SWAGGER_PATH = os.path.join(os.path.dirname(__file__), "..", "..", "platform_api", "swagger", "swagger.yaml")


@pytest.fixture
def is_allowed(flask_app):
    """call auth_proxy.is_allowed_request() with the specified path, method and roles
        - 指定したpath, method, roleでauth_proxy.is_allowed_request()を呼び出す

    Returns:
        function: (path, method, roles) -> bool
    """
    def _is_allowed(path, method, roles=[]):
        proxy = auth_proxy.auth_proxy(ORG, "dummy", "dummy", "dummy", "dummy", 1)
        # Set the token decode result instead of keycloak - keycloakの代わりにtokenのdecode結果を設定する
        proxy.token_decode = {
            "resource_access": {
                f"{ORG}-workspaces": {"roles": list(roles)},
            },
        }
        with flask_app.test_request_context(path, method=method):
            return proxy.is_allowed_request()

    return _is_allowed


# ----------------------------------------------------------------
# Roles - ロール
# ----------------------------------------------------------------
# Roles to be checked one by one - 1つずつ付与して判定するロール
CANDIDATE_ROLES = [
    WS,
    OTHER_WS,
    WS_ADMIN,
    OTHER_WS_ADMIN,
    const.ORG_AUTH_UPDATE,
    const.ORG_AUTH_OWNER_MAINTE,
    const.ORG_AUTH_ROLE_USER,
    const.ORG_AUTH_USAGE_SITUATION,
    const.ORG_AUTH_USER_MAINTE,
    const.ORG_AUTH_WS_ROLE_MAINTE,
    const.ORG_AUTH_WS_ROLE_USER,
    const.ORG_AUTH_WS_MAINTE,
    const.ORG_AUTH_AUDIT_LOG,
]

# Allowed without roles (filtered by user or roles in controller) - 権限なしで許可 (コントローラでユーザー/ロールにより絞り込み)
NO_RESTRICTION = None
# Denied for all users - 全ユーザー拒否
NOBODY = []
# Workspace reference - ワークスペースの参照
WS_REFERENCE_ROLES = [WS, WS_ADMIN, const.ORG_AUTH_WS_MAINTE, const.ORG_AUTH_WS_ROLE_MAINTE]
# Workspace update - ワークスペースの更新
WS_UPDATE_ROLES = [WS_ADMIN, const.ORG_AUTH_WS_MAINTE]
# Administrator of any workspace - いずれかのワークスペースの管理者
ANY_WS_ADMIN = [WS_ADMIN, OTHER_WS_ADMIN]


# ----------------------------------------------------------------
# Expected authorization of all organization APIs - organization配下の全APIの期待する認可
# ----------------------------------------------------------------
# (method, path, allowed roles, path parameters)
#   path: swagger path without "/api/{organization_id}"
#   allowed roles: roles allowed when given alone. CANDIDATE_ROLES not listed here must be denied
#       - 単独で付与した時に許可されるロール。ここに無い CANDIDATE_ROLES は拒否されること
#   path parameters: values of path parameters that change the authorization - 認可が変わるパスパラメータの値
#
# APIを追加した場合は、ここに期待する認可を追加すること
AUTHORIZATION_MATRIX = [
    # organization setting - オーガナイゼーション設定
    ("GET", "/platform/setting", [const.ORG_AUTH_UPDATE], {}),
    ("PATCH", "/platform/setting", [const.ORG_AUTH_UPDATE], {}),
    ("GET", "/platform/settings/mailserver", [const.ORG_AUTH_UPDATE], {}),
    ("POST", "/platform/settings/mailserver", [const.ORG_AUTH_UPDATE], {}),
    ("DELETE", "/platform/settings/mailserver", [const.ORG_AUTH_UPDATE], {}),
    ("GET", "/platform/settings/common/{config_key}", NOBODY, {}),
    ("GET", "/platform/settings/common/{config_key}", [const.ORG_AUTH_AUDIT_LOG], {"config_key": "platform.system.audit_log.retention_days"}),
    ("GET", "/platform/settings/common/{config_key}", [const.ORG_AUTH_USER_MAINTE], {"config_key": "platform.system.user_export_import.exp_days"}),
    # Published in the user API reference - ユーザー向けAPIリファレンスに公開
    ("GET", "/platform/limits", NO_RESTRICTION, {}),
    ("GET", "/platform/usages", [const.ORG_AUTH_USAGE_SITUATION], {}),
    # Referenced by all users from the workspace screens - ワークスペース関連画面から全ユーザーが参照する
    ("GET", "/platform/maintenance-mode-setting", NO_RESTRICTION, {}),
    # audit log - 監査ログ
    ("GET", "/platform/auditlog/download", [const.ORG_AUTH_AUDIT_LOG], {}),
    ("POST", "/platform/auditlog/download", [const.ORG_AUTH_AUDIT_LOG], {}),
    ("POST", "/platform/auditlog/download/{download_id}", [const.ORG_AUTH_AUDIT_LOG], {}),

    # own user information - 自分自身の情報
    ("GET", "/platform/users/_current/refresh_tokens", NO_RESTRICTION, {}),
    ("DELETE", "/platform/users/_current/refresh_tokens", NO_RESTRICTION, {}),
    ("GET", "/platform/users/_current/{credential_type}/credentials", NO_RESTRICTION, {}),
    ("PUT", "/platform/users/_current/{credential_type}/credentials", NO_RESTRICTION, {}),
    ("POST", "/platform/users/_current/{credential_type}/credentials", NO_RESTRICTION, {}),
    ("DELETE", "/platform/users/_current/{credential_type}/credentials", NO_RESTRICTION, {}),
    ("POST", "/platform/users/_current/{credential_type}/credentials/verify", NO_RESTRICTION, {}),
    ("GET", "/platform/users/_current/{credential_type}/models", NO_RESTRICTION, {}),
    ("GET", "/platform/users/_current/{ai_service_id}/ai-preference", NO_RESTRICTION, {}),
    ("PUT", "/platform/users/_current/{ai_service_id}/ai-preference", NO_RESTRICTION, {}),
    ("GET", "/platform/users/_current/ai-preference", NO_RESTRICTION, {}),
    ("PUT", "/platform/users/_current/ai-preference", NO_RESTRICTION, {}),
    ("GET", "/platform/ai-services", NO_RESTRICTION, {}),

    # workspace - ワークスペース
    ("GET", "/platform/workspaces", NO_RESTRICTION, {}),
    ("POST", "/platform/workspaces", [const.ORG_AUTH_WS_MAINTE], {}),
    ("GET", "/platform/workspaces/{workspace_id}", WS_REFERENCE_ROLES, {}),
    ("PUT", "/platform/workspaces/{workspace_id}", WS_UPDATE_ROLES, {}),
    ("DELETE", "/platform/workspaces/{workspace_id}", WS_UPDATE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/members", WS_REFERENCE_ROLES, {}),

    # notification destination - 通知先
    ("GET", "/platform/workspaces/{workspace_id}/settings/notifications", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/settings/notifications", [const.ORG_AUTH_WS_MAINTE], {}),
    ("GET", "/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}", WS_REFERENCE_ROLES, {}),
    ("PUT", "/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}", WS_UPDATE_ROLES, {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/settings/notifications/{destination_id}", WS_UPDATE_ROLES, {}),
    # notification - 通知
    ("GET", "/platform/workspaces/{workspace_id}/notifications", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/notifications", WS_REFERENCE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/notification-jobs", WS_REFERENCE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/notification-jobs/{notification_id}", WS_REFERENCE_ROLES, {}),

    # AI assistant (workspace members, filtered by user id in controller) - AIアシスタント (ワークスペースのメンバー、コントローラでユーザーIDにより絞り込み)
    ("GET", "/platform/workspaces/{workspace_id}/conversations", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/conversations", WS_REFERENCE_ROLES, {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}", WS_REFERENCE_ROLES, {}),
    ("PATCH", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}/completions", WS_REFERENCE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages", WS_REFERENCE_ROLES, {}),
    ("PUT", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages", WS_REFERENCE_ROLES, {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/conversations/{conversation_id}/messages", WS_REFERENCE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/lessons", WS_REFERENCE_ROLES, {}),
    ("POST", "/platform/workspaces/{workspace_id}/lessons", WS_REFERENCE_ROLES, {}),
    ("PATCH", "/platform/workspaces/{workspace_id}/lessons", WS_REFERENCE_ROLES, {}),
    ("GET", "/platform/workspaces/{workspace_id}/lessons/{lesson_id}", WS_REFERENCE_ROLES, {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/lessons/{lesson_id}", WS_REFERENCE_ROLES, {}),
    ("PATCH", "/platform/workspaces/{workspace_id}/lessons/{lesson_id}", WS_REFERENCE_ROLES, {}),

    # service account - サービスアカウント
    ("GET", "/platform/workspaces/{workspace_id}/service-account-users", [WS_ADMIN], {}),
    ("POST", "/platform/workspaces/{workspace_id}/service-account-users", [WS_ADMIN], {}),
    ("GET", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}", [WS_ADMIN], {}),
    ("PUT", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}", [WS_ADMIN], {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}", [WS_ADMIN], {}),
    ("GET", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}/refresh_tokens", [WS_ADMIN], {}),
    ("POST", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}/refresh_tokens", [WS_ADMIN], {}),
    ("DELETE", "/platform/workspaces/{workspace_id}/service-account-users/{user_id}/refresh_tokens", [WS_ADMIN], {}),

    # user - ユーザー
    ("GET", "/platform/users", ANY_WS_ADMIN + [const.ORG_AUTH_USER_MAINTE, const.ORG_AUTH_WS_ROLE_USER], {}),
    ("POST", "/platform/users", [const.ORG_AUTH_USER_MAINTE], {}),
    ("GET", "/platform/users/{user_id}", ANY_WS_ADMIN + [const.ORG_AUTH_USER_MAINTE, const.ORG_AUTH_WS_ROLE_USER], {}),
    ("PUT", "/platform/users/{user_id}", [const.ORG_AUTH_USER_MAINTE], {}),
    ("DELETE", "/platform/users/{user_id}", [const.ORG_AUTH_USER_MAINTE], {}),
    # user bulk import / export - ユーザー一括登録・削除・エクスポート
    ("POST", "/platform/jobs/users/bulk/format", [const.ORG_AUTH_USER_MAINTE], {}),
    ("POST", "/platform/jobs/users/bulk/import", [const.ORG_AUTH_USER_MAINTE], {}),
    ("POST", "/platform/jobs/users/bulk/delete", [const.ORG_AUTH_USER_MAINTE], {}),
    ("GET", "/platform/jobs/users/bulk/status", [const.ORG_AUTH_USER_MAINTE], {}),
    ("GET", "/platform/jobs/users/bulk/status/{job_id}", [const.ORG_AUTH_USER_MAINTE], {}),
    ("POST", "/platform/jobs/users/bulk/status/{job_id}/download", [const.ORG_AUTH_USER_MAINTE], {}),
    ("POST", "/platform/jobs/users/export", [const.ORG_AUTH_USER_MAINTE], {}),
    ("GET", "/platform/jobs/users/export/status", [const.ORG_AUTH_USER_MAINTE], {}),
    ("GET", "/platform/jobs/users/export/status/{job_id}", [const.ORG_AUTH_USER_MAINTE], {}),
    ("POST", "/platform/jobs/users/export/status/{job_id}/download", [const.ORG_AUTH_USER_MAINTE], {}),

    # role - ロール
    ("GET", "/platform/roles", ANY_WS_ADMIN + [const.ORG_AUTH_ROLE_USER, const.ORG_AUTH_WS_ROLE_MAINTE, const.ORG_AUTH_WS_ROLE_USER], {}),
    ("POST", "/platform/roles", ANY_WS_ADMIN + [const.ORG_AUTH_WS_ROLE_MAINTE], {}),
    ("PUT", "/platform/roles/{role_name}", ANY_WS_ADMIN + [const.ORG_AUTH_WS_ROLE_MAINTE], {}),
    ("DELETE", "/platform/roles/{role_name}", ANY_WS_ADMIN + [const.ORG_AUTH_WS_ROLE_MAINTE], {}),
    # role user - ロールのユーザー
    ("GET", "/platform/roles/{role_name}/users", ANY_WS_ADMIN + [const.ORG_AUTH_ROLE_USER, const.ORG_AUTH_WS_ROLE_USER], {}),
    ("POST", "/platform/roles/{role_name}/users", ANY_WS_ADMIN + [const.ORG_AUTH_ROLE_USER, const.ORG_AUTH_WS_ROLE_USER], {}),
    ("PATCH", "/platform/roles/{role_name}/users", ANY_WS_ADMIN + [const.ORG_AUTH_ROLE_USER, const.ORG_AUTH_WS_ROLE_USER], {}),
    # organization manager role user - オーガナイゼーション管理者ロールのユーザー
    ("GET", "/platform/roles/{role_name}/users", [const.ORG_AUTH_OWNER_MAINTE], {"role_name": const.ORG_ROLE_ORG_MANAGER}),
    ("POST", "/platform/roles/{role_name}/users", [const.ORG_AUTH_OWNER_MAINTE], {"role_name": const.ORG_ROLE_ORG_MANAGER}),
    ("PATCH", "/platform/roles/{role_name}/users", [const.ORG_AUTH_OWNER_MAINTE], {"role_name": const.ORG_ROLE_ORG_MANAGER}),
    # user manager / user role manager role user - ユーザー管理者・ユーザーロール管理者ロールのユーザー
    ("POST", "/platform/roles/{role_name}/users", [const.ORG_AUTH_ROLE_USER], {"role_name": const.ORG_ROLE_USER_MANAGER}),
    ("POST", "/platform/roles/{role_name}/users", [const.ORG_AUTH_ROLE_USER], {"role_name": const.ORG_ROLE_USER_ROLE_MANAGER}),
]


def _swagger_org_operations():
    """list (method, path) of organization APIs in swagger - swaggerのorganization配下のAPIの(method, path)を列挙する
    """
    with open(SWAGGER_PATH) as f:
        swagger = yaml.safe_load(f)

    operations = set()
    for path, path_item in swagger["paths"].items():
        if not path.startswith("/api/{organization_id}/"):
            continue
        for method in path_item:
            if method in ("get", "post", "put", "patch", "delete"):
                operations.add((method.upper(), path[len("/api/{organization_id}"):]))
    return operations


def _request_path(path, path_params):
    """make request path from swagger path - swaggerのpathからリクエストのpathを作成する
    """
    path = f"/api/{ORG}{path}".replace("{workspace_id}", WS)
    for name, value in path_params.items():
        path = path.replace("{" + name + "}", value)
    return re.sub(r"\{[^}]+\}", "dummy-id", path)


@pytest.mark.skipif(not os.path.exists(SWAGGER_PATH), reason="platform_api swagger.yaml not found")
def test_authorization_matrix_covers_all_apis():
    """AUTHORIZATION_MATRIX has all organization APIs in swagger - AUTHORIZATION_MATRIXにswaggerのorganization配下の全APIがあること
    """
    swagger_operations = _swagger_org_operations()
    matrix_operations = {(method, path) for method, path, _, _ in AUTHORIZATION_MATRIX}

    missing = sorted(swagger_operations - matrix_operations)
    assert missing == [], "AUTHORIZATION_MATRIX に期待する認可が無いAPIがあります:\n  " + "\n  ".join(f"{m} {p}" for m, p in missing)

    unknown = sorted(matrix_operations - swagger_operations)
    assert unknown == [], "AUTHORIZATION_MATRIX に swagger に無いAPIがあります:\n  " + "\n  ".join(f"{m} {p}" for m, p in unknown)


@pytest.mark.parametrize(
    "method, path, allowed_roles, path_params",
    AUTHORIZATION_MATRIX,
    ids=[f"{m} {p}{' ' + str(pp) if pp else ''}" for m, p, _, pp in AUTHORIZATION_MATRIX])
def test_authorization_matrix(is_allowed, method, path, allowed_roles, path_params):
    """each role is allowed or denied as expected - 各ロールが期待どおりに許可・拒否されること
    """
    request_path = _request_path(path, path_params)

    if allowed_roles is NO_RESTRICTION:
        assert is_allowed(request_path, method, roles=[]) is True, f"{method} {request_path} must be allowed without roles"
        return

    assert is_allowed(request_path, method, roles=[]) is False, f"{method} {request_path} must be denied without roles"
    for role in CANDIDATE_ROLES:
        expected = role in allowed_roles
        assert is_allowed(request_path, method, roles=[role]) is expected, \
            f"{method} {request_path} must be {'allowed' if expected else 'denied'} with {role}"


# ----------------------------------------------------------------
# Workspace API (ITA) - ワークスペースのAPI (ITA)
# ----------------------------------------------------------------
@pytest.mark.parametrize("method", ["GET", "POST", "PUT", "PATCH", "DELETE"])
def test_workspace_api(is_allowed, method):
    """only workspace members are allowed - ワークスペースのメンバーのみ許可されること
    """
    request_path = f"/api/{ORG}/workspaces/{WS}/ita/menu/xxx/filter/"

    assert is_allowed(request_path, method, roles=[]) is False
    for role in CANDIDATE_ROLES:
        expected = role == WS
        assert is_allowed(request_path, method, roles=[role]) is expected, \
            f"{method} {request_path} must be {'allowed' if expected else 'denied'} with {role}"


# ----------------------------------------------------------------
# System administrator API (master realm) - システム管理者のAPI (masterレルム)
# ----------------------------------------------------------------
def _swagger_master_operations():
    """list (method, path) of system administrator APIs in swagger - swaggerのシステム管理者向けAPIの(method, path)を列挙する
    """
    with open(SWAGGER_PATH) as f:
        swagger = yaml.safe_load(f)

    operations = []
    for path, path_item in swagger["paths"].items():
        if not path.startswith("/api/platform/"):
            continue
        for method in path_item:
            if method in ("get", "post", "put", "patch", "delete"):
                operations.append((method.upper(), re.sub(r"\{[^}]+\}", "dummy-id", path)))
    return sorted(operations)


@pytest.fixture
def is_allowed_master(flask_app):
    """call auth_proxy.is_allowed_request() with the specified realm roles of master realm
        - masterレルムのrealmロールを指定してauth_proxy.is_allowed_request()を呼び出す
    """
    def _is_allowed(path, method, realm_roles=[]):
        proxy = auth_proxy.auth_proxy("master", "dummy", "dummy", "dummy", "dummy", 1)
        proxy.token_decode = {"realm_access": {"roles": list(realm_roles)}}
        with flask_app.test_request_context(path, method=method):
            return proxy.is_allowed_request()

    return _is_allowed


@pytest.mark.skipif(not os.path.exists(SWAGGER_PATH), reason="platform_api swagger.yaml not found")
@pytest.mark.parametrize("method, path", _swagger_master_operations() if os.path.exists(SWAGGER_PATH) else [])
def test_master_api(is_allowed_master, method, path):
    """any authenticated user of the master realm is allowed (the token of _platform-console has no realm role)
        - masterレルムの認証済みユーザーは許可されること(_platform-consoleのtokenにはrealmロールが含まれない)
    """
    assert is_allowed_master(path, method, realm_roles=[]) is True


# ----------------------------------------------------------------
# Default deny - デフォルト拒否
# ----------------------------------------------------------------
@pytest.mark.parametrize("method, path", [
    # URL not registered - 未登録のURL
    ("GET", f"/api/{ORG}/platform/unknown"),
    ("GET", f"/api/{ORG}/unknown"),
    ("GET", "/unknown"),
    ("GET", "/api/unknown"),
    # method not registered - 未登録のmethod
    ("PATCH", f"/api/{ORG}/platform/users"),
    ("POST", f"/api/{ORG}/platform/workspaces/{WS}"),
    ("GET", f"/api/{ORG}/platform/roles/role1"),
    ("PATCH", f"/api/{ORG}/platform/roles/role1"),
    ("PATCH", f"/api/{ORG}/platform/setting-unknown"),
])
def test_default_deny(is_allowed, method, path):
    """unregistered url / method is denied even with all roles - 未登録のURL・methodは全ロールを持っていても拒否されること
    """
    assert is_allowed(path, method, roles=[]) is False
    assert is_allowed(path, method, roles=CANDIDATE_ROLES) is False


# ----------------------------------------------------------------
# Control characters in path - パスの制御文字
# ----------------------------------------------------------------
@pytest.mark.parametrize("method, path", [
    ("GET", f"/api/{ORG}/platform/settings/mailserver%0Ax"),
    ("GET", f"/api/{ORG}/platform/settings/mailserver%0A"),
    ("GET", f"/api/{ORG}/platform/usages/a%0Ab"),
    ("GET", f"/api/{ORG}/platform/limits%0A"),
    ("GET", f"/api/{ORG}/platform/workspaces/{WS}/conversations/a%0Db"),
    ("GET", f"/api/{ORG}/workspaces/{WS}/ita/menu/m%0Ax/list"),
    ("POST", f"/api/{ORG}/workspaces/{WS}/ita/menu/m%00x/list"),
    ("GET", f"/api/{ORG}/workspaces/{WS}%0A/ita/menu/m/list"),
])
def test_control_character_in_path(is_allowed, method, path):
    """path with control characters is denied even with all roles - 制御文字を含むパスは全ロールを持っていても拒否されること
    """
    assert is_allowed(path, method, roles=[]) is False
    assert is_allowed(path, method, roles=CANDIDATE_ROLES) is False


@pytest.mark.parametrize("method", ["GET", "POST", "PUT", "PATCH", "DELETE"])
def test_ita_admin_api(is_allowed_master, method):
    """any authenticated user of the master realm is allowed for the ITA system management API
        - ITAシステム管理APIはmasterレルムの認証済みユーザーに許可されること
    """
    assert is_allowed_master("/api/ita/settings/", method, realm_roles=[]) is True


# ----------------------------------------------------------------
# All routes of api.py are covered by AUTH_PATTERN - api.pyの全ルートがAUTH_PATTERNの対象であること
# ----------------------------------------------------------------
API_PATH = os.path.join(os.path.dirname(__file__), "..", "api.py")

# Routes that do not call is_allowed_request() - is_allowed_request()を呼ばないルート
ROUTES_WITHOUT_AUTHORIZATION = [
    "/health-check/liveness",
    "/health-check/readiness",
    "/auth/realms/<string:organization_id>/protocol/openid-connect/token",
]


def _api_routes():
    """list routes of api.py - api.pyのルートを列挙する
    """
    with open(API_PATH, encoding="utf-8") as f:
        routes = re.findall(r"^@app\.route\('([^']+)'", f.read(), re.MULTILINE)
    return [route for route in routes if route not in ROUTES_WITHOUT_AUTHORIZATION]


# Sample sub path of the routes that proxy to the backend (<path:...>) - バックエンドへ中継するルート(<path:...>)のサンプルのサブパス
ROUTE_SAMPLE_SUBPATH = {
    "/api/platform/<path:subpath>": "organizations",
    "/api/ita/<path:subpath>": "settings/",
    "/api/<string:organization_id>/platform/<path:subpath>": "setting",
}


def _route_sample_path(route):
    """make sample request path from flask route - flaskのルートからサンプルのリクエストパスを作成する
    """
    if route in ROUTE_SAMPLE_SUBPATH:
        route = route.replace("<path:subpath>", ROUTE_SAMPLE_SUBPATH[route])
    route = re.sub(r"<string:(organization_id|org_id)>", ORG, route)
    route = re.sub(r"<string:(workspace_id|ws_id)>", WS, route)
    route = re.sub(r"<path:[^>]+>", "dummy/sub", route)
    return re.sub(r"<[^>]+>", "dummy", route)


def test_api_routes_found():
    """routes are found (guard of _api_routes) - ルートが取得できていること(_api_routesのガード)
    """
    assert len(_api_routes()) >= 4


@pytest.mark.parametrize("route", _api_routes())
def test_api_route_is_covered_by_auth_pattern(route):
    """every route of api.py matches AUTH_PATTERN, so it does not fall into the default deny
        - api.pyの全ルートがAUTH_PATTERNに一致すること(デフォルト拒否に落ちないこと)
    """
    from config.auth import auth_pattern

    path = _route_sample_path(route)
    assert any(re.match(pattern["url"], path) for pattern in auth_pattern.AUTH_PATTERN), \
        f"AUTH_PATTERN に一致しないルートです: {route} ({path})"


# ----------------------------------------------------------------
# Roles of other organizations / multiple roles / unusual input - 他のorganizationのロール・複数ロール・特殊な入力
# ----------------------------------------------------------------
def test_role_of_other_organization(flask_app):
    """roles of other organization's client are ignored - 他のorganizationのclientのロールは無視されること
    """
    proxy = auth_proxy.auth_proxy(ORG, "dummy", "dummy", "dummy", "dummy", 1)
    proxy.token_decode = {
        "resource_access": {
            "org2-workspaces": {"roles": [const.ORG_AUTH_UPDATE, const.ORG_AUTH_WS_MAINTE, WS, WS_ADMIN]},
        },
    }
    for method, path in [
        ("GET", f"/api/{ORG}/platform/setting"),
        ("POST", f"/api/{ORG}/platform/workspaces"),
        ("GET", f"/api/{ORG}/platform/workspaces/{WS}"),
        ("GET", f"/api/{ORG}/workspaces/{WS}/ita/menu/xxx/filter/"),
    ]:
        with flask_app.test_request_context(path, method=method):
            assert proxy.is_allowed_request() is False, f"{method} {path} must be denied with roles of other organization"


def test_multiple_roles(is_allowed):
    """allowed if any one of the roles matches - いずれか1つのロールに合致すれば許可されること
    """
    path = f"/api/{ORG}/platform/setting"
    assert is_allowed(path, "GET", roles=[OTHER_WS, const.ORG_AUTH_USAGE_SITUATION]) is False
    assert is_allowed(path, "GET", roles=[OTHER_WS, const.ORG_AUTH_USAGE_SITUATION, const.ORG_AUTH_UPDATE]) is True


@pytest.mark.parametrize("workspace_id", [".*", "ws1|ws2", "ws.", "[a-z]s1"])
def test_regular_expression_characters_in_path(is_allowed, workspace_id):
    """regular expression characters in path are not interpreted - パスの正規表現の記号が解釈されないこと
    """
    for method, path in [
        ("GET", f"/api/{ORG}/workspaces/{workspace_id}/ita/menu/xxx/filter/"),
        ("GET", f"/api/{ORG}/platform/workspaces/{workspace_id}"),
        ("PUT", f"/api/{ORG}/platform/workspaces/{workspace_id}"),
    ]:
        assert is_allowed(path, method, roles=[WS, WS_ADMIN, OTHER_WS, OTHER_WS_ADMIN]) is False, f"{method} {path}"


@pytest.mark.parametrize("method", ["HEAD", "OPTIONS", "TRACE"])
def test_unexpected_method(is_allowed, method):
    """methods that are not registered are denied even with all roles (for the APIs that list methods)
        - 登録されていないmethodは全ロールを持っていても拒否されること(methodを列挙しているAPI)
    """
    for path in [f"/api/{ORG}/platform/users", f"/api/{ORG}/platform/workspaces", f"/api/{ORG}/platform/workspaces/{WS}"]:
        assert is_allowed(path, method, roles=CANDIDATE_ROLES) is False, f"{method} {path}"


@pytest.mark.parametrize("path", [
    f"/api/{ORG}/Platform/setting",
    f"/api/{ORG}/platform/Setting",
    f"/api/{ORG}/platform//setting",
    f"/api/{ORG}//platform/setting",
    f"/api/{ORG}",
    "/api",
    "/",
])
def test_unusual_path(is_allowed, path):
    """unusual path is denied even with all roles - 通常と異なるパスは全ロールを持っていても拒否されること
    """
    assert is_allowed(path, "GET", roles=CANDIDATE_ROLES) is False, path
