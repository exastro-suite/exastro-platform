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
from common_library.common import api_keycloak_call
from common_library.common.db import DBconnector
from libs import queries


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
    db = DBconnector()
    private = db.get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = api_keycloak_call.keycloak_client_user_get_token(organization_id, client_id,
                                                             private.internal_api_client_secret, user_id, "", grant_type="client_credentials")
    # ユーザーロール取得
    # Get user role
    roles = api_keycloak_call.keycloak_get_user_role_mapping(organization_id, user_id, token)

    # # client idを元にclientの情報を取得
    # # Get client information based on client id
    # clients = api_keycloak_call.keycloak_clients_get(organization_id, client_id, token)

    workspace_ids = []
    workspaces = []
    # rolesに割り当てられているワークスペース（子ロール＝workspace_id）をピックアップ
    # Pick up the workspace (child role = workspace_id) assigned to roles
    for key, role_parent in roles.get("clientMappings").items():
        for mapping in role_parent.get("mappings"):
            # user_token_clinet_idと一致するロールのみチェック
            # Check only roles that match user_token_clinet_id
            if mapping.get("containerId") == private.user_token_client_id:
                # 子ロールがある内容がworkspaceに紐づくのでその内容をチェックする
                # Since the content with the child role is linked to the workspace, check the content
                if mapping.get("composite"):
                    composite_roles = api_keycloak_call.keycloak_client_role_composites_get(organization_id, private.user_token_client_id,
                                                                                            mapping["name"], token)
                    for role in composite_roles:
                        # 取得した子ロールが一度取得した内容にある場合は、重複するので読み飛ばし
                        # If the acquired child role is in the acquired content, it will be duplicated and will be skipped.
                        if role["name"] not in workspace_ids:
                            workspace_ids.append(role["name"])
                            workspaces.append({
                                "workspace_id": role["name"],
                                "name": "",
                            })

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            for idx, workspace in enumerate(workspaces):
                # ユーザーに紐づくワークスペースIDを元に名称等を取得
                # Get the name etc. based on the workspace ID associated with the user
                parameter = {
                    "workspace_id": workspace["workspace_id"],
                }
                str_where = " WHERE workspace_id = %(workspace_id)s"
                cursor.execute(queries.SQL_QUERY_WORKSPACE + str_where, parameter)
                result = cursor.fetchall()

                # データが取得できた際に名称を設定
                if len(result) > 0:
                    workspaces[idx]["name"] = result[0]["workspace_name"]

    return workspaces
