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

import connexion
from contextlib import closing
import json
import inspect
import pymysql

from common_library.common import common, api_keycloak_tokens, api_keycloak_users, api_keycloak_clients, api_ita_admin_call, validation
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

    user_id = r.headers.get("User-id")
    encode_roles = r.headers.get("Roles")
    # roles = base64.b64decode(encode_roles).decode()
    language = r.headers.get("Language")

    body = r.get_json()
    workspace_id = body.get("id")
    workspace_name = body.get("name")
    info = body.get("informations")

    if info:
        description = info.get("description") if info.get("description") else ""
        environments = info.get("environments") if info.get("environments") else []
        wsadmin_users = info.get("workspace_administrators") if info.get("workspace_administrators") else []
    else:
        description = ""
        environments = []
        wsadmin_users = []

    # validation check
    validate = validation.validate_workspace_id(workspace_id)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_workspace_name(workspace_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    db = DBconnector()
    private = db.get_organization_private(organization_id)
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:

            # DB登録
            # insert workspace
            informations = {"environments": environments, "description": description, }
            parameter = {
                "workspace_id": workspace_id,
                "workspace_name": workspace_name,
                "informations": json.dumps(informations, ensure_ascii=False),
                "create_user": user_id,
                "last_update_user": user_id,
            }
            try:
                cursor.execute(queries_workspaces.SQL_INSERT_WORKSPACE, parameter)
            except pymysql.err.IntegrityError:
                # Duplicate PRIMARY KEY
                return common.response_status(
                    409, None, f"409-{MSG_FUNCTION_ID}001", "指定されたワークスペースはすでに存在しているため作成できません。"
                )

            # サービスアカウントのTOKEN取得
            # Get a service account token
            token_response = api_keycloak_tokens.service_account_get_token(
                organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
            )
            if token_response.status_code != 200:
                raise common.AuthException(
                    "client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text)
                )

            token = json.loads(token_response.text)["access_token"]

            # ws
            role_name_ws = workspace_id
            # ws-admin
            role_name_wsadmin = "{}-admin".format(workspace_id)

            # ロール作成(ws)
            # create ws role
            r_create_ws = api_keycloak_clients.client_role_create(
                realm_name=organization_id, client_uid=private.internal_api_client_id, role_name=role_name_ws, token=token,
            )
            if r_create_ws.status_code not in [201, 409]:
                # 201 Created 以外に、409 already exists は許容する
                return common.response_status(500, None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロール作成に失敗しました(対象ID:{})".format(workspace_id))

            # ロール作成(ws-admin)
            # create ws-admin role
            r_create_wsadmin = api_keycloak_clients.client_role_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name_wsadmin, token=token
            )
            if r_create_wsadmin.status_code not in [201, 409]:
                # 201 Created 以外に、409 already exists は許容する
                return common.response_status(500, None, f"500-{MSG_FUNCTION_ID}002", "ワークスペース管理者ロール作成に失敗しました(対象ID:{})".format(workspace_id))

            # ws-adminロールにwsロールをcompositeする
            # ws-admin role composite ws
            r_get_role_ws = api_keycloak_clients.client_role_get(
                realm_name=organization_id, client_id=private.internal_api_client_id, role_name=role_name_ws, token=token,
            )
            if r_get_role_ws.status_code != 200:
                return common.response_status(500, None, f"500-{MSG_FUNCTION_ID}003", "ワークスペースロールの取得に失敗しました(対象ID:{})".format(workspace_id))

            roles_ws = [json.loads(r_get_role_ws.text), ]
            r_create_composite = api_keycloak_clients.client_role_composites_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name_wsadmin, add_roles=roles_ws, token=token,
            )
            if r_create_composite.status_code != 204:
                return common.response_status(
                    500, None, f"500-{MSG_FUNCTION_ID}004", "ワークスペース管理者ロールとワークスペースロールの紐づけに失敗しました(対象ID:{})".format(workspace_id))

            # 管理者ユーザーのrole mappingにws-adminロールを追加する
            # Add ws-admin role to administrat users role mapping
            r_get_role_admin = api_keycloak_clients.client_role_get(
                realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name_wsadmin, token=token,
            )
            if r_get_role_admin.status_code != 200:
                return common.response_status(500, None, f"500-{MSG_FUNCTION_ID}005", "ワークスペース管理者ロールの取得に失敗しました(対象ID:{})".format(workspace_id))

            roles_admin = [json.loads(r_get_role_admin.text), ]

            wsadmin_users = wsadmin_users + [{"id": user_id}, ]
            # 重複除去
            wsadmin_users = [dict(t) for t in {tuple(d.items()) for d in wsadmin_users}]
            for wsadmin in wsadmin_users:
                target_user_id = wsadmin.get("id")
                r_create_mapping = api_keycloak_users.user_client_role_mapping_create(
                    realm_name=organization_id, user_id=target_user_id, client_id=private.user_token_client_id, client_roles=roles_admin, token=token,
                )
                if r_create_mapping.status_code != 204:
                    return common.response_status(
                        500, None, f"500-{MSG_FUNCTION_ID}006", "管理者ユーザーとワークスペース管理者ロールの紐づけに失敗しました(対象ID:{})".format(target_user_id))

            # IT Automation call
            r_create_ita_workspace = api_ita_admin_call.ita_workspace_create(
                organization_id, workspace_id, role_name_wsadmin, user_id, encode_roles, language,
            )
            if r_create_ita_workspace.status_code != 200:
                return common.response_status(
                    500, None, f"500-{MSG_FUNCTION_ID}007", "IT Automationのワークスペース作成に失敗しました(対象ID:{})".format(workspace_id))

            conn.commit()

    return common.response_200_ok(data=None)


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


@common.platform_exception_handler
def workspace_member_list(organization_id, workspace_id):
    """Get all members for the workspace

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: InlineResponse200
    """

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException("client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text))

    token = json.loads(token_response.text)["access_token"]

    # カスタムロールの中から、workspaceをcompositeしたロールのみを取得
    # Get only composite workspace roles from the custum role list
    workspace_roles = __workspace_role_list(
        organization_id=organization_id,
        workspace_id=workspace_id,
        client_uid=private.user_token_client_id,
        token=token,
    )

    workspace_users = []
    for role in workspace_roles:
        users_response = api_keycloak_users.role_uesrs_get(
            realm_name=organization_id,
            client_id=private.user_token_client_id,
            role_name=role.get("name"),
            token=token,
        )

        if users_response.status_code != 200:
            raise Exception("get user role error status:{}, response:{}".format(users_response.status_code, users_response.text))

        users = json.loads(users_response.text)

        workspace_users.extend([
            {
                "firstName": user.get("firstName", ""),
                "lastName": user.get("lastName", ""),
                "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
            } for user in users])

    return common.response_200_ok(workspace_users)


def __workspace_role_list(organization_id, workspace_id, client_uid, token):
    """Get all roles for the workspace

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        client_id (str): client_id
        token (str): token

    Returns:
        list: role list
    """

    # カスタムロールの中から、workspaceをcompositeしたロールのみを取得
    # Get only composite workspace roles from the custum role list
    custum_roles_response = api_keycloak_clients.client_role_get(
        realm_name=organization_id,
        client_id=client_uid,
        role_name="",
        token=token,
    )
    if custum_roles_response.status_code != 200:
        raise Exception(
            "{} error status:{}, response:{}".format(
                inspect.currentframe().f_code.co_name, custum_roles_response.status_code, custum_roles_response.text))

    custum_roles = json.loads(custum_roles_response.text)

    workspace_roles = []

    for pf_role in custum_roles:
        if pf_role.get("composite") is not True:
            continue

        # ロールのcomposites から workspace_id を含むものだけを取得
        # Get only those contain workspace_id from the composite roles
        role_composites = []
        if pf_role.get("containerId") == client_uid:
            role_composites_response = api_keycloak_clients.client_role_composites_get(
                realm_name=organization_id,
                client_uid=client_uid,
                role_name=pf_role.get("name"),
                token=token,
            )

            if role_composites_response.status_code != 200:
                raise Exception(
                    "{} error status:{}, response:{}".format(
                        inspect.currentframe().f_code.co_name, role_composites_response.status_code, role_composites_response.text))

            role_composites = json.loads(role_composites_response.text)

        list_search = [role for role in role_composites if role.get('name') == workspace_id]
        if len(list_search) > 0:
            workspace_roles.append(pf_role)

    return workspace_roles
