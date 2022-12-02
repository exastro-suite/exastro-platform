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

default_language = "ja"

length_organization_id = 36
length_organization_name = 255
length_workspace_id = 36
length_workspace_name = 255
length_workspace_description = 4000
max_workspace_environments = 1000
length_workspace_environment_name = 40
length_role_name = 64
length_role_description = 255
max_role_workspaces = 1000


# ロール種別
# Role Kind
ROLE_KIND_ORGANIZATION = "organization"
ROLE_KIND_WORKSPACE = "workspace"

# オーガナイゼーションロール
# Organization role
ORG_ROLE_ORG_MANAGER = "_organization-manager"
ORG_ROLE_USER_ROLE_MANAGER = "_organization-user-role-manager"
ORG_ROLE_USER_MANAGER = "_organization-user-manager"

# オーガナイゼーションロール権限
# Organization role authority
ORG_AUTH_UPDATE = "_og-upd"
ORG_AUTH_OWNER_MAINTE = "_og-own-mt"
ORG_AUTH_ROLE_USER = "_og-role-usr"
ORG_AUTH_USER_MAINTE = "_og-usr-mt"
ORG_AUTH_WS_ROLE_MAINTE = "_og-ws-role-mt"
ORG_AUTH_WS_ROLE_USER = "_og-ws-role-usr"
ORG_AUTH_WS_MAINTE = "_og-ws-mt"

# ワークスペースロール権限
# workspace role authority
WS_AUTH_ADMIN = "_{ws_id}-admin"
WS_AUTH_ADMIN_ANY = "_.*-admin"

# Roleと権限の紐づけ
# Associating Roles and Permissions
ORG_PERMISSION_ORG_MANAGER = [ORG_AUTH_UPDATE, ORG_AUTH_OWNER_MAINTE, ORG_AUTH_ROLE_USER, ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE,
                              ORG_AUTH_WS_ROLE_USER, ORG_AUTH_WS_MAINTE]
ORG_PERMISSION_USER_ROLE_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE, ORG_AUTH_WS_ROLE_USER]
ORG_PERMISSION_USER_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_USER]

# オーガナイゼーションロール権限 登録
# Organization role authority registration
ALL_ORG_ROLES = [
    ORG_ROLE_ORG_MANAGER,
    ORG_ROLE_USER_ROLE_MANAGER,
    ORG_ROLE_USER_MANAGER,
]

# オーガナイゼーションロール権限 登録
# Organization role authority registration
ALL_ORG_AUTHORITIES = [
    ORG_AUTH_UPDATE,
    ORG_AUTH_OWNER_MAINTE,
    ORG_AUTH_ROLE_USER,
    ORG_AUTH_USER_MAINTE,
    ORG_AUTH_WS_ROLE_MAINTE,
    ORG_AUTH_WS_ROLE_USER,
    ORG_AUTH_WS_MAINTE,
]

# keycloak realm-managementロール 登録
# keycloak realm-management role
ALL_REALM_MANAGEMENT_ROLE = ["manage-users", "view-users"]
