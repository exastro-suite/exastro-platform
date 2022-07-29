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

from common_library.common import common, api_keycloak_call
from common_library.common.db import DBconnector

MSG_FUNCTION_ID = "22"


@common.platform_exception_handler
def workspace_role_list(organization_id, workspace_id):
    """Get all roles for the workspace

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: RoleList
    """

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_call.keycloak_service_account_get_token(
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
    
    response_data = [{"name": x["name"]} for x in workspace_roles]

    return common.response_200_ok(response_data)


@common.platform_exception_handler
def workspace_user_list(organization_id, workspace_id):
    """Get all users for the workspace

    :param organization_id:
    :type organization_id: str
    :param workspace_id:
    :type workspace_id: str

    :rtype: UserList
    """

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_call.keycloak_service_account_get_token(
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
        users_response = api_keycloak_call.keycloak_role_uesrs_get(
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
                "id": user["id"],
                "firstName": user.get("firstName", ""),
                "lastName": user.get("lastName", ""),
                "preferred_username": user.get("username", ""),
                "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
                "enabled": user.get("enabled", False),
                "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp")),
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
    custum_roles_response = api_keycloak_call.keycloak_client_role_get(
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
            role_composites_response = api_keycloak_call.keycloak_client_role_composites_get(
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
