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

from flask import request
import connexion
from contextlib import closing
import json
import inspect
import pymysql
import base64

from common_library.common import common, validation, multi_lang
from common_library.common import api_keycloak_tokens, api_keycloak_roles, api_ita_admin_call
from common_library.common import resources
from common_library.common import bl_plan_service
import common_library.common.const as common_const
from common_library.common.db import DBconnector
from libs import queries_workspaces

import globals

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
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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
        return common.response_validation_error(validate)
    validate = validation.validate_workspace_name(workspace_name)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_workspace_informations(info)
    if not validate.ok:
        return common.response_validation_error(validate)

    # plan limits check
    data = bl_plan_service.organization_limits_get(organization_id, common_const.RESOURCE_COUNT_WORKSPACES)
    workspace_limits = data.get(common_const.RESOURCE_COUNT_WORKSPACES)
    if workspace_limits > 0:
        rc = resources.counter(organization_id)
        workspace_count = rc(common_const.RESOURCE_COUNT_WORKSPACES)

        if workspace_count >= workspace_limits:
            globals.logger.error("resource limit exceeded. workspace count:{0} limits: {1}".format(workspace_count, workspace_limits))
            message_id = "400-00022"
            message = multi_lang.get_text(
                message_id,
                "{0}の上限数({1})を超えるため、新しい{0}は作成できません。",
                multi_lang.get_text('000-00127', "ワークスペース"),
                workspace_limits
            )
            raise common.BadRequestException(message_id=message_id, message=message)

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
                message_id = f"409-{MSG_FUNCTION_ID}001"
                message = multi_lang.get_text(
                    message_id,
                    "指定されたワークスペースはすでに存在しているため作成できません。",
                )
                raise common.BadRequestException(message_id=message_id, message=message)

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
            auth_name_ws = [workspace_id, common.get_ws_admin_rolename(workspace_id)]

            # ws-admin
            role_name_wsadmin = common.get_ws_admin_rolename(workspace_id)

            # デフォルトオプション
            # default option
            role_options = {
                "attributes": {
                    "kind": [common_const.ROLE_KIND_WORKSPACE]
                }
            }

            # ロール作成(auth_name_ws)
            # create auth_name_ws role
            for role in auth_name_ws:
                r_create_ws = api_keycloak_roles.clients_role_create(
                    realm_name=organization_id, client_uid=private.internal_api_client_id, role_name=role, token=token,
                    role_options=role_options,
                )
                if r_create_ws.status_code not in [201, 409]:
                    # 201 Created 以外に、409 already exists は許容する
                    globals.logger.error(f"response.status_code:{r_create_ws.status_code}")
                    globals.logger.error(f"response.text:{r_create_ws.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "ワークスペースロール作成に失敗しました(対象ID:{0})",
                        workspace_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

            # ロール作成(role_name_wsadmin)
            # create role_name_wsadmin role
            r_create_wsadmin = api_keycloak_roles.clients_role_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name_wsadmin, token=token,
                role_options=role_options,
            )
            if r_create_wsadmin.status_code not in [201, 409]:
                # 201 Created 以外に、409 already exists は許容する
                globals.logger.error(f"response.status_code:{r_create_wsadmin.status_code}")
                globals.logger.error(f"response.text:{r_create_wsadmin.text}")
                message_id = f"500-{MSG_FUNCTION_ID}002"
                message = multi_lang.get_text(
                    message_id,
                    "ワークスペース管理者ロール作成に失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            roles_ws = []
            # ws-adminロールにwsロールをcompositeする
            # ws-admin role composite ws
            for role in auth_name_ws:
                r_get_role_ws = api_keycloak_roles.clients_role_get(
                    realm_name=organization_id, client_id=private.internal_api_client_id, role_name=role, token=token,
                )
                if r_get_role_ws.status_code != 200:
                    globals.logger.error(f"response.status_code:{r_get_role_ws.status_code}")
                    globals.logger.error(f"response.text:{r_get_role_ws.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}003"
                    message = multi_lang.get_text(
                        message_id,
                        "ワークスペースロールの取得に失敗しました(対象ID:{0})",
                        workspace_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

                roles_ws.append(json.loads(r_get_role_ws.text))

            r_create_composite = api_keycloak_roles.clients_role_composites_create(
                realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name_wsadmin, add_roles=roles_ws, token=token,
            )
            if r_create_composite.status_code != 204:
                globals.logger.error(f"response.status_code:{r_create_composite.status_code}")
                globals.logger.error(f"response.text:{r_create_composite.text}")
                message_id = f"500-{MSG_FUNCTION_ID}004"
                message = multi_lang.get_text(
                    message_id,
                    "ワークスペース管理者ロールとワークスペースロールの紐づけに失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # 管理者ユーザーのrole mappingにws-adminロールを追加する
            # Add ws-admin role to administrat users role mapping
            r_get_role_admin = api_keycloak_roles.clients_role_get(
                realm_name=organization_id,
                client_id=private.user_token_client_id,
                role_name=role_name_wsadmin,
                token=token,
            )
            if r_get_role_admin.status_code != 200:
                globals.logger.error(f"response.status_code:{r_get_role_admin.status_code}")
                globals.logger.error(f"response.text:{r_get_role_admin.text}")
                message_id = f"500-{MSG_FUNCTION_ID}005"
                message = multi_lang.get_text(
                    message_id,
                    "ワークスペース管理者ロールの取得に失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            roles_admin = [json.loads(r_get_role_admin.text), ]

            wsadmin_users = wsadmin_users + [{"id": user_id}, ]
            # 重複除去
            wsadmin_users = [dict(t) for t in {tuple(d.items()) for d in wsadmin_users}]
            for wsadmin in wsadmin_users:
                target_user_id = wsadmin.get("id")
                r_create_mapping = api_keycloak_roles.user_client_role_mapping_create(
                    realm_name=organization_id,
                    user_id=target_user_id,
                    client_id=private.user_token_client_id,
                    client_roles=roles_admin,
                    token=token,
                )
                if r_create_mapping.status_code != 204:
                    globals.logger.error(f"response.status_code:{r_create_mapping.status_code}")
                    globals.logger.error(f"response.text:{r_create_mapping.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}006"
                    message = multi_lang.get_text(
                        message_id,
                        "管理者ユーザーとワークスペース管理者ロールの紐づけに失敗しました(対象ID:{0})",
                        target_user_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

            # IT Automation call
            r_create_ita_workspace = api_ita_admin_call.ita_workspace_create(
                organization_id, workspace_id, role_name_wsadmin, user_id, encode_roles, language,
            )
            if r_create_ita_workspace.status_code != 200:
                globals.logger.error(f"response.status_code:{r_create_ita_workspace.status_code}")
                globals.logger.error(f"response.text:{r_create_ita_workspace.text}")
                message_id = f"500-{MSG_FUNCTION_ID}007"
                message = multi_lang.get_text(
                    message_id,
                    "IT Automationのワークスペース作成に失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            conn.commit()

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def workspace_delete(organization_id, workspace_id):  # noqa: E501
    """Delete an workspace

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request

    user_id = r.headers.get("User-id")
    encode_roles = r.headers.get("Roles")
    language = r.headers.get("Language")

    db = DBconnector()
    private = db.get_organization_private(organization_id)
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            # Check workspace exists
            cursor.execute(
                queries_workspaces.SQL_QUERY_WORKSPACES + " WHERE workspace_id = %(workspace_id)s FOR UPDATE",
                {"workspace_id": workspace_id}
            )

            workspaces = cursor.fetchall()
            if len(workspaces) == 0:
                message_id = f"404-{MSG_FUNCTION_ID}001"
                raise common.NotFoundException(message_id=message_id, message=multi_lang.get_text(message_id, "ワークスペース情報が存在しません"))

            # Delete ITA workspace
            globals.logger.info(f"Delete ITA Workspace : organization_id={organization_id} / workspace_id={workspace_id}")
            r_delete_ita_workspace = api_ita_admin_call.ita_workspace_delete(organization_id, workspace_id, user_id, encode_roles, language)
            if r_delete_ita_workspace.status_code not in [200, 404, 499]:
                globals.logger.error(f"response.status_code:{r_delete_ita_workspace.status_code}")
                globals.logger.error(f"response.text:{r_delete_ita_workspace.text}")
                message_id = f"500-{MSG_FUNCTION_ID}008"
                message = multi_lang.get_text(
                    message_id,
                    "IT Automationのワークスペース削除に失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            # Alredy Deleted : status_code = 499 and response body result = '499-00002'
            if r_delete_ita_workspace.status_code == 499:
                try:
                    r_delete_ita_workspace_body = json.loads(r_delete_ita_workspace.text)
                except Exception:
                    r_delete_ita_workspace_body = {}

                if r_delete_ita_workspace_body.get("result", "") != '499-00002':  # Alredy Deleted
                    globals.logger.error(f"response.status_code:{r_delete_ita_workspace.status_code}")
                    globals.logger.error(f"response.text:{r_delete_ita_workspace.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}008"
                    message = multi_lang.get_text(
                        message_id,
                        "IT Automationのワークスペース削除に失敗しました(対象ID:{0})",
                        workspace_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

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

            # Delete Workspace Roles
            globals.logger.info(f"Delete Platform Workspace Role: organization_id={organization_id} / workspace_id={workspace_id}")
            delete_roles = [
                {"client_uid": private.internal_api_client_id, "role_name": workspace_id},
                {"client_uid": private.internal_api_client_id, "role_name": common.get_ws_admin_rolename(workspace_id)},
                {"client_uid": private.user_token_client_id, "role_name": common.get_ws_admin_rolename(workspace_id) }
            ]

            for delete_role in delete_roles:
                resp_role_delete = api_keycloak_roles.clients_role_delete(organization_id, delete_role["client_uid"], delete_role["role_name"], token)

                if resp_role_delete.status_code not in [200, 204, 404]:
                    globals.logger.error(f"response.status_code:{resp_role_delete.status_code}")
                    globals.logger.error(f"response.text:{resp_role_delete.text}")
                    message_id = f"500-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "ワークスペースロール削除に失敗しました(対象ID:{0})",
                        workspace_id,
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)

            # Detele from Workspace table
            globals.logger.info(f"Delete Platform Workspace table: organization_id={organization_id} / workspace_id={workspace_id}")
            cursor.execute(queries_workspaces.SQL_DELETE_WORKSPACE, {"workspace_id": workspace_id})

            conn.commit()

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def workspace_update(body, organization_id, workspace_id):  # noqa: E501
    """Update updates an workspace

    # noqa: E501

    :param body:
    :type body: dict | bytes
    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: ResponseOk
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # 更新する情報の取得
    # get information to be updated
    body = connexion.request.get_json()

    workspace_name = body.get("name")
    info = body.get("informations")
    user_id = connexion.request.headers.get("User-id")

    # validation check
    validate = validation.validate_workspace_name(workspace_name)
    if not validate.ok:
        return common.response_validation_error(validate)
    validate = validation.validate_workspace_informations(info)
    if not validate.ok:
        return common.response_validation_error(validate)

    # ワークスペース更新
    # update workspace
    db = DBconnector()
    with closing(db.connect_orgdb(organization_id)) as conn:
        with conn.cursor() as cursor:
            # Check workspace exists
            cursor.execute(
                queries_workspaces.SQL_QUERY_WORKSPACES + " WHERE workspace_id = %(workspace_id)s FOR UPDATE",
                {"workspace_id": workspace_id}
            )

            workspaces = cursor.fetchall()
            if len(workspaces) == 0:
                raise common.NotFoundException(
                    message_id=f"404-{MSG_FUNCTION_ID}001",
                    message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "ワークスペース情報が存在しません")
                )

            parameter = {
                "workspace_id": workspace_id,
                "workspace_name": workspace_name,
                "informations": json.dumps(info, ensure_ascii=False),
                "last_update_user": user_id,
            }
            cursor.execute(queries_workspaces.SQL_UPDATE_WORKSPACE, parameter)

            conn.commit()

    return common.response_200_ok(None)


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
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ワークスペース情報が存在しません",
        )
        raise common.NotFoundException(message_id=message_id, message=message)


@common.platform_exception_handler
def workspace_list(organization_id, workspace_name=None):
    """List returns list of workspaces

    :param organization_id:
    :type organization_id: str
    :param workspace_name: the workspace's name.
    :type workspace_name: str

    :rtype: WorkspaceList
    """

    roles = request.headers.get("Roles")
    roles_decode = base64.b64decode(roles.encode()).decode("utf-8")
    roles_arr = roles_decode.split("\n")
    globals.logger.debug(f'roles_decode: {roles_decode}')

    org_roles = request.headers.get("Org-Roles")
    org_roles_decode = base64.b64decode(org_roles.encode()).decode("utf-8")
    org_roles_arr = org_roles_decode.split("\n")
    globals.logger.debug(f'org_roles_decode: {org_roles_decode}')

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        raise common.AuthException("client_user_get_token error status:{}, response:{}".format(token_response.status_code, token_response.text))

    token = json.loads(token_response.text)["access_token"]

    # ユーザーのRolesをもとに、子ロール(workspace名と同じrole名）を取得する
    # Get child role (same role name as workspace name) based on user Roles
    posible_workspace_id = []
    for role in roles_arr:
        if role in common_const.ALL_ORG_ROLES:
            continue

        response_api = api_keycloak_roles.clients_role_composites_get(organization_id, private.user_token_client_id, role, token)
        if response_api.status_code == 200:
            response_json = json.loads(response_api.text)
            for composite_role in response_json:
                # 該当ロール名(Workspace名)が重複しないように設定
                # Set so that the corresponding role name (Workspace name) does not overlap
                if composite_role["name"] not in posible_workspace_id:
                    posible_workspace_id.append(composite_role["name"])

    globals.logger.debug(f'posible_workspace_id: {posible_workspace_id}')

    # ユーザのOrgRoleをもとに、権限を取得し全ワークスペースリストにアクセスできるか判定する
    # Based on the user's OrgRole, determine whether or not the authority can be obtained and the entire workspace list can be accessed
    posible_all_workspace = False
    for role in org_roles_arr:
        response_api = api_keycloak_roles.clients_role_composites_get(organization_id, private.user_token_client_id, role, token)
        if response_api.status_code == 200:
            response_json = json.loads(response_api.text)
            for composite_role in response_json:
                if composite_role["name"] in ['_og-ws-role-mt', '_og-ws-mt']:
                    posible_all_workspace = True
                    break
        if posible_all_workspace:
            break

    globals.logger.debug(f'posible_all_workspace: {posible_all_workspace}')

    # workspace list get
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
        # 該当のロールがある場合のみ、設定
        # Set only if there is a corresponding role
        if row["WORKSPACE_ID"] in posible_workspace_id or posible_all_workspace:
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

    user_ids = []
    workspace_users = []
    for role in workspace_roles:
        get_first = 0
        get_max = 100

        while True:
            users_response = api_keycloak_roles.role_uesrs_get(
                realm_name=organization_id,
                client_id=private.user_token_client_id,
                role_name=role.get("name"),
                token=token,
                first=get_first,
                max=get_max
            )

            if users_response.status_code != 200:
                globals.logger.error(f"response.status_code:{users_response.status_code}")
                globals.logger.error(f"response.text:{users_response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}008"
                message = multi_lang.get_text(
                    message_id,
                    "ワークスペースメンバーの取得に失敗しました(対象ID:{0})",
                    workspace_id,
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            users = json.loads(users_response.text)

            for user in users:
                if user["id"] not in user_ids:
                    user_ids.append(user["id"])
                    workspace_users.append(
                        {
                            "firstName": user.get("firstName", ""),
                            "lastName": user.get("lastName", ""),
                            "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
                        })

            if len(users) < get_max:
                break

            get_first = get_first + get_max

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
    custum_roles_response = api_keycloak_roles.clients_role_get(
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
        if [common_const.ROLE_KIND_WORKSPACE] != pf_role.get("attributes", {}).get("kind"):
            continue

        # ロールのcomposites から workspace_id を含むものだけを取得
        # Get only those contain workspace_id from the composite roles
        role_composites = []
        if pf_role.get("containerId") == client_uid:
            role_composites_response = api_keycloak_roles.clients_role_composites_get(
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
