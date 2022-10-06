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

# db T_ORGANIZATION infomations.status
ORG_STATUS_CREATE_START = "Organization Create Start"
ORG_STATUS_REALM_CREATE = "Realm Create Complete"
ORG_STATUS_CLIENT_CREATE = "Client Create Complete"
ORG_STATUS_ROLE_SETTING = "Client Role Setting Complete"
ORG_STATUS_SA_SETTING = "Service Account Setting Complete"
ORG_STATUS_USER_CREATE = "Organization User Create Complete"
ORG_STATUS_USER_ROLE = "Organization User Role Setting Complete"
ORG_STATUS_DB_CREATE = "Organization DB Create Complete"
ORG_STATUS_DB_UPDATE = "Organization DB Update Complete"
ORG_STATUS_ITA_CREATE = "IT Automation Organization Create Complete"
ORG_STATUS_REALM_ENABLED = "Realm Enabled Complete"
ORG_STATUS_CREATE_COMPLETE = "Organization Create Complete"

# ロール種別
# Role Kind
ROLE_KIND_ORGANIZATION = "organization"
ROLE_KIND_WORKSPACE = "workspace"

# オーガナイゼーションロール
# Organization role
ORG_ROLE_ORG_MANAGER = "_organization-manager"
ORG_ROLE_PLAN_MANAGER = "_organization-plan-manager"
ORG_ROLE_USER_ROLE_MANAGER = "_organization-user-role-manager"
ORG_ROLE_USER_MANAGER = "_organization-user-manager"

# オーガナイゼーションロール権限
# Organization role authority
ORG_AUTH_UPDATE = "_og-upd"
ORG_AUTH_OWNER_MAINTE = "_og-own-mt"
ORG_AUTH_ROLE_USER = "_og-role-usr"
ORG_AUTH_PLAN_MAINTE = "_og-plan-mt"
ORG_AUTH_USAGE_SITUATION = "_og-usage"
ORG_AUTH_USER_MAINTE = "_og-usr-mt"
ORG_AUTH_WS_ROLE_MAINTE = "_og-ws-role-mt"
ORG_AUTH_WS_ROLE_USER = "_og-ws-role-usr"
ORG_AUTH_WS_MAINTE = "_og-ws-mt"

# Roleと権限の紐づけ
# Associating Roles and Permissions
ORG_PERMISSION_ORG_MANAGER = [ORG_AUTH_UPDATE, ORG_AUTH_OWNER_MAINTE, ORG_AUTH_ROLE_USER, ORG_AUTH_PLAN_MAINTE, ORG_AUTH_USAGE_SITUATION,
                              ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE, ORG_AUTH_WS_ROLE_USER, ORG_AUTH_WS_MAINTE]
ORG_PERMISSION_PLAN_MANAGER = [ORG_AUTH_PLAN_MAINTE, ORG_AUTH_USAGE_SITUATION]
ORG_PERMISSION_USER_ROLE_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE, ORG_AUTH_WS_ROLE_USER]
ORG_PERMISSION_USER_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_USER]
