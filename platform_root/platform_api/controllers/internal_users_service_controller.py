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
import inspect

from contextlib import closing

from common_library.common import common, const as common_const, multi_lang
from common_library.common import api_keycloak_tokens, api_keycloak_roles
from common_library.common.db import DBconnector
from libs import queries_internal_users

MSG_FUNCTION_ID = "21"


@common.platform_exception_handler
def user_workspace_list(organization_id, user_id):
    """workspaces list of user posible

    :param organization_id:
    :type organization_id: str
    :param user_id:
    :type user_id: str

    :rtype: WorkspaceList
    """

    # ユーザーIDに該当するロールを取得
    # Get the role corresponding to the user ID

    client_id = common.get_platform_client_id(organization_id)
    # サービスアカウントを使うためにClientのSercretを取得
    # Get Client Sercret to use service account
    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, client_id, private.internal_api_client_secret)

    if token_response.status_code != 200:
        raise common.AuthException("client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text))

    token = json.loads(token_response.text)["access_token"]

    # ユーザーロール取得
    # Get user role
    roles_response = api_keycloak_roles.get_user_role_mapping(organization_id, user_id, token)
    if roles_response.status_code == 404:
        globals.logger.error(f"response:{roles_response.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ユーザが存在しません"
        )
        raise common.NotFoundException(message_id=message_id, message=message)
    elif roles_response.status_code != 200:
        raise Exception("get user role-mapping error status:{}, response:{}".format(roles_response.status_code, roles_response.text))

    roles = json.loads(roles_response.text)

    # # client idを元にclientの情報を取得
    # # Get client information based on client id
    # clients = api_keycloak_clients.clients_get(organization_id, client_id, token)

    workspace_ids = []
    workspaces = []
    # rolesに割り当てられているワークスペース（子ロール＝workspace_id）をピックアップ
    # Pick up the workspace (child role = workspace_id) assigned to roles
    for key, role_parent in roles.get("clientMappings", {}).items():
        for mapping in role_parent.get("mappings"):
            if mapping.get("name") in common_const.ALL_ORG_ROLES:
                continue

            # user_token_clinet_idと一致するロールのみチェック
            # Check only roles that match user_token_clinet_id
            if mapping.get("containerId") == private.user_token_client_id:
                # 子ロールがある内容がworkspaceに紐づくのでその内容をチェックする
                # Since the content with the child role is linked to the workspace, check the content
                if mapping.get("composite"):
                    composite_roles_response = api_keycloak_roles.clients_role_composites_get(
                        organization_id, private.user_token_client_id, mapping["name"], token)

                    if composite_roles_response.status_code != 200:
                        raise Exception(
                            "{} error status:{}, response:{}".format(
                                inspect.currentframe().f_code.co_name, composite_roles_response.status_code, composite_roles_response.text))

                    composite_roles = json.loads(composite_roles_response.text)

                    for role in composite_roles:
                        if str(role["name"]).startswith("_"):
                            continue

                        # 取得した子ロールが一度取得した内容にある場合は、重複するので読み飛ばし
                        # If the acquired child role is in the acquired content, it will be duplicated and will be skipped.
                        if role["name"] not in workspace_ids:
                            workspace_ids.append(role["name"])
                            workspaces.append({
                                "id": role["name"],
                                "name": "",
                            })

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            for idx, workspace in enumerate(workspaces):
                # ユーザーに紐づくワークスペースIDを元に名称等を取得
                # Get the name etc. based on the workspace ID associated with the user
                parameter = {
                    "workspace_id": workspace["id"],
                }
                str_where = " WHERE workspace_id = %(workspace_id)s"
                cursor.execute(queries_internal_users.SQL_QUERY_WORKSPACES + str_where, parameter)
                result = cursor.fetchall()

                # データが取得できた際に名称を設定
                if len(result) > 0:
                    workspaces[idx]["name"] = result[0]["WORKSPACE_NAME"]
                    info = json.loads(result[0]["INFORMATIONS"])
                    workspaces[idx]["informations"] = {
                        "environments": info.get("environments", [])
                    }
                    workspaces[idx]["create_timestamp"] = common.datetime_to_str(result[0]["CREATE_TIMESTAMP"])
                    workspaces[idx]["last_update_timestamp"] = common.datetime_to_str(result[0]["LAST_UPDATE_TIMESTAMP"])

    return common.response_200_ok(workspaces)
