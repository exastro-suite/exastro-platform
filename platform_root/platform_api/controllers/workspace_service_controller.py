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

import base64
import connexion
from contextlib import closing
import json

from common_library.common import common, api_keycloak_call
from common_library.common.db import DBconnector
from libs import queries_workspaces

# import globals

MSG_FUNCTION_ID = "22"


@common.platform_exception_handler
def workspace_create(body, organization_id):
    """Create creates an workspace

    :param body:
    :type body: dict | bytes
    :param organization_id:
    :type organization_id: str

    :rtype: Workspace
    """
    r = connexion.request
    if not r.is_json:
        raise

    user_id = r.headers.get("User-id")
    encode_roles = r.headers.get("Roles")
    roles = base64.b64decode(encode_roles).decode()
    language = r.headers.get("Language")

    body = r.get_json()
    workspace_id = body["workspace_id"]
    workspace_name = body["workspace_name"]
    environments = body.get("environments") if body.get("environments") else []
    wsadmin_users = body.get("workspace_administrators") if body.get("workspace_administrators") else []
    description = body.get("description") if body.get("description") else ""

    db = DBconnector()
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            # DB登録
            # insert workspace
            informations = {"environments": environments, "description": description, }
            parameter = {
                "workspace_id": workspace_id,
                "workspace_name": workspace_name,
                "informations": json.dumps(informations, ensure_ascii=False),
            }
            cursor.execute(queries_workspaces.SQL_INSERT_WORKSPACE, parameter)

            private = db.get_organization_private(organization_id)

            # サービスアカウントのTOKEN取得
            # Get a service account token
            token_response = api_keycloak_call.keycloak_service_account_get_token(
                organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
            )
            if token_response.status_code != 200:
                raise common.AuthException(
                    "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
                )

            token = json.loads(token_response.text)["access_token"]

            # ws
            # ロール作成(ws)
            # create ws role
            role_name = workspace_id
            request_response = api_keycloak_call.keycloak_client_role_create(
                realm_name=organization_id, client_uid=private.internal_api_client_id, role_name=role_name, token=token,
            )

            # ws-admin
            # ロール作成(ws-admin)
            # create ws-admin role
            role_name = "{}-admin".format(workspace_id)
            request_response = api_keycloak_call.keycloak_client_role_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, token=token
            )

            # ws-adminロールにwsロールをcompositeする
            # ws-admin role composite ws
            response_get_role = api_keycloak_call.keycloak_client_role_get(
                realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
            )
            add_roles = [json.loads(response_get_role.text), ]
            request_response = api_keycloak_call.keycloak_client_role_composites_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, add_roles=add_roles, token=token,
            )

            # 管理者ユーザーのrole mappingにws-adminロールを追加する
            # Add ws-admin role to administrat users role mapping
            wsadmin_users = wsadmin_users + [{"id": user_id}, ]
            # 重複除去
            wsadmin_users = [dict(t) for t in {tuple(d.items()) for d in wsadmin_users}]
            for wsadmin in wsadmin_users:
                target_user_id = wsadmin.get("id")
                request_response = api_keycloak_call.keycloak_user_client_role_mapping_create(
                    realm_name=organization_id, user_id=target_user_id, client_id=private.user_token_client_id, client_roles=add_roles, token=token,
                )

            # IT Automation call
            # XXXX

            conn.commit()

    return common.response_200_ok(body)


@common.platform_exception_handler
def workspace_info(organization_id, workspace_id):
    """workspace info returns infmation of workspaces

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: Workspace
    """

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            parameter = {
                "workspace_id": workspace_id,
            }

            str_where = " WHERE workspace_id = %(workspace_id)s"
            cursor.execute(queries_workspaces.SQL_QUERY_WORKSPACES + str_where, parameter)

            result = cursor.fetchall()

    # 取得したデータがあるかチェック
    # Check if there is acquired data
    if len(result) > 0:

        row = result[0]
        data = {
            "id": row["WORKSPACE_ID"],
            "name": row["WORKSPACE_NAME"],
            "informations": json.loads(row["INFORMATIONS"]),
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user": row["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row["LAST_UPDATE_USER"],
        }

        return common.response_200_ok(data)
    else:
        return common.response_status(404, None, f"404-{MSG_FUNCTION_ID}001", "ワークスペース情報が存在しません")


@common.platform_exception_handler
def workspace_list(organization_id, workspace_name=None):
    """List returns list of workspaces

    :param organization_id:
    :type organization_id: str
    :param workspace_name: the workspace's name.
    :type workspace_name: str

    :rtype: WorkspaceList
    """

    with closing(DBconnector().connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            if workspace_name:
                str_where = " WHERE workspace_name = %(workspace_name)s"
                parameter = {
                    "workspace_name": workspace_name,
                }
            else:
                str_where = ""
                parameter = {}

            cursor.execute(queries_workspaces.SQL_QUERY_WORKSPACES + str_where, parameter)
            result = cursor.fetchall()

    data = []
    for row in result:
        row = {
            "id": row["WORKSPACE_ID"],
            "name": row["WORKSPACE_NAME"],
            "informations": json.loads(row["INFORMATIONS"]),
            "create_timestamp": common.datetime_to_str(row["CREATE_TIMESTAMP"]),
            "create_user": row["CREATE_USER"],
            "last_update_timestamp": common.datetime_to_str(row["LAST_UPDATE_TIMESTAMP"]),
            "last_update_user": row["LAST_UPDATE_USER"],
        }
        data.append(row)

    return common.response_200_ok(data)
