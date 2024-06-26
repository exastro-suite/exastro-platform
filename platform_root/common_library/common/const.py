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
length_plan_id = 36
length_plan_name = 255
length_plan_description = 4000
max_db_int_value = 2147483647
min_db_int_value = -2147483647
length_user_name = 255
length_user_email = 255
length_user_firstName = 100
length_user_lastName = 100
length_user_affiliation = 255
length_user_description = 255
length_system_config_key = 100
length_system_config_value = 4000
length_system_config_description = 255
length_limit_id = 255
length_plan_item_description = 4000
length_destination_id = 36
length_destination_name = 255
length_destination_email = 255
length_destination_teams_webhook = 1024
max_destination_email = 500
max_destination_teams_webhook = 1
length_func_id = 100
length_smtp_host = 1024
min_length_separated_by_period_mark = 1
max_length_separated_by_period_mark = 63
min_smtp_port = 0
max_smtp_port = 65535
length_send_from = 255
length_send_name = 100
length_reply_to = 255
length_reply_name = 100
length_envelope_from = 255
length_authentication_user = 255
length_authentication_password = 255

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
ORG_AUTH_USAGE_SITUATION = "_og-usage"
ORG_AUTH_USER_MAINTE = "_og-usr-mt"
ORG_AUTH_WS_ROLE_MAINTE = "_og-ws-role-mt"
ORG_AUTH_WS_ROLE_USER = "_og-ws-role-usr"
ORG_AUTH_WS_MAINTE = "_og-ws-mt"
ORG_AUTH_MANAGE_IDP = "manage-identity-providers"
ORG_AUTH_VIEW_IDP = "view-identity-providers"
ORG_AUTH_VIEW_REALM = "view-realm"

# ワークスペースロール権限
# workspace role authority
WS_AUTH_ADMIN = "_{ws_id}-admin"
WS_AUTH_ADMIN_ANY = "_.*-admin"

# Roleと権限の紐づけ
# Associating Roles and Permissions
ORG_PERMISSION_ORG_MANAGER = [ORG_AUTH_UPDATE, ORG_AUTH_OWNER_MAINTE, ORG_AUTH_ROLE_USER, ORG_AUTH_USAGE_SITUATION,
                              ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE, ORG_AUTH_WS_ROLE_USER, ORG_AUTH_WS_MAINTE,
                              ORG_AUTH_MANAGE_IDP, ORG_AUTH_VIEW_IDP, ORG_AUTH_VIEW_REALM]
ORG_PERMISSION_USER_ROLE_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_MAINTE, ORG_AUTH_WS_ROLE_USER]
ORG_PERMISSION_USER_MANAGER = [ORG_AUTH_USER_MAINTE, ORG_AUTH_WS_ROLE_USER]
ORG_PERMISSION_IDP_MANAGER = [ORG_AUTH_MANAGE_IDP, ORG_AUTH_VIEW_IDP, ORG_AUTH_VIEW_REALM]

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
    ORG_AUTH_USAGE_SITUATION,
    ORG_AUTH_USER_MAINTE,
    ORG_AUTH_WS_ROLE_MAINTE,
    ORG_AUTH_WS_ROLE_USER,
    ORG_AUTH_WS_MAINTE,
]

# plan未設定時のデフォルト
# Default when plan is not set
DEFAULT_PLAN_ID = "_default"

# planのstart_datetimeの書式
# Format Datetime Plan start_datetime
FORMAT_DATETIME_PLAN_START_DATETIME = "%Y-%m-%d %H:%M:%S"

# 集計対象リソース
# Aggregated resource
RESOURCE_COUNT_WORKSPACES = "platform.workspaces"
RESOURCE_COUNT_USERS = "platform.users"
RESOURCE_COUNT_ROLES = "platform.roles"

ALL_RESOURCE_COUNT = [
    RESOURCE_COUNT_WORKSPACES,
    RESOURCE_COUNT_USERS,
    RESOURCE_COUNT_ROLES,
]

# 通知先区分
# Notification destination kind
DESTINATION_KIND_MAIL = "Mail"
DESTINATION_KIND_TEAMS = "Teams"

ALL_DESTINATION_KIND = [
    DESTINATION_KIND_MAIL,
    DESTINATION_KIND_TEAMS,
]

# 通知先メールヘッダー
# Notification email header
MAIL_HEADER_TO = "to"
MAIL_HEADER_CC = "cc"
MAIL_HEADER_BCC = "bcc"
ALL_MAIL_HEADER = [
    MAIL_HEADER_TO,
    MAIL_HEADER_CC,
    MAIL_HEADER_BCC,
]


# 通知結果
# Notification status
NOTIFICATION_STATUS_UNSENT = "Unsent"           # 未送信
NOTIFICATION_STATUS_SUCCESSFUL = "Successful"   # 送信成功
NOTIFICATION_STATUS_FAILED = "Failed"           # 送信失敗

# ユーザ一括インポート/エクスポートステータス
JOB_USER_NOT_EXEC = "NotExecuted"               # 未実行
JOB_USER_EXEC = "Executing"                     # 実行中
JOB_USER_COMP = "Completion"                    # 完了
JOB_USER_FAILED = "Failed"                      # 失敗

# 処理区分
# process kind
PROCESS_KIND_NOTIFICATION = "NOTIFICATION"      # 通知処理
PROCESS_KIND_USER_IMPORT = "USERIMPORT"         # ユーザー一括インポート
PROCESS_KIND_USER_EXPORT = "USEREXPORT"         # ユーザー一括エクスポート

# smtp_idのデフォルト
# Default when smtp_id
DEFAULT_SMTP_ID = "_default"
