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

from contextlib import closing

from common_library.common import common
from libs import queries
from libs.db import DBconnector


@common.platform_exception_handler
def user_workspace_list(organization_id, user_id):  # noqa: E501
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
    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries.SQL_QUERY_ORGANIZATION_PRIVATE)
            result = cursor.fetchall()

    # 取得できない場合は、エラー
    # If you cannot get it, an error
    if len(result) == 0:
        raise common.UserException("organization private information error")

    json_info = result[0]["informations"]
    client_uid = json_info["INTERNAL_API_CLIENT_UID"]
    client_secret = json_info["INTERNAL_API_CLIENT_SECRET"]

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = common.api_keycloak_call.keycloak_client_user_get_token(organization_id, client_id,
                                                                    client_secret, user_id, "", grant_type="client_credentials")

    # ユーザーロール取得
    # Get user role
    roles = common.api_keycloak_call.keycloak_get_user_role_mapping(organization_id, user_id, token)

    # # client idを元にclientの情報を取得
    # # Get client information based on client id
    # clients = api_keycloak_call.keycloak_clients_get(organization_id, client_id, token)

    workspaces = []
    # rolesに割り当てられているワークスペース（子ロール＝workspace_id）をピックアップ
    # Pick up the workspace (child role = workspace_id) assigned to roles
    for role in roles:
        if role["composite"]:
            composite_roles = common.api_keycloak_call.keycloak_client_role_composites_get(organization_id, client_uid, role["name"], token)
            for role in composite_roles:
                # 取得した子ロールが一度取得した内容にある場合は、重複するので読み飛ばし
                # If the acquired child role is in the acquired content, it will be duplicated and will be skipped.
                if ("workspace_id", role["name"]) not in workspaces.items():
                    workspaces.append({
                        "workspace_id": role["name"],
                        "name": "",
                    })

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            for key, workspace in workspaces.items():
                # ユーザーに紐づくワークスペースIDを元に名称等を取得
                # Get the name etc. based on the workspace ID associated with the user
                parameter = {
                    "workspace_id": workspace["workspace_id"],
                }
                str_where = " WHERE workspace_id = %{workspace_id}s"
                cursor.execute(queries.SQL_QUERY_WORKSPACE + str_where, parameter)
                result = cursor.fetchall()

                # データが取得できた際に名称を設定
                if len(result) > 0:
                    workspaces[key]["name"] = result[0]["workspace_name"]

    return workspaces
