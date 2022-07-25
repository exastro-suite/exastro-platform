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

from common_library.common import common, api_keycloak_call
from common_library.common.db import DBconnector


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
    token = api_keycloak_call.keycloak_service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )

    # カスタムロールの中から、workspaceをcompositeしたロールのみを取得
    # Get only composite workspace roles from the custum role list
    workspace_roles = __workspace_role_list(
        organization_id=organization_id,
        workspace_id=workspace_id,
        client_id=private.user_token_client_id,
        token=token,
    )

    return workspace_roles


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
    token = api_keycloak_call.keycloak_service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )

    # カスタムロールの中から、workspaceをcompositeしたロールのみを取得
    # Get only composite workspace roles from the custum role list
    workspace_roles = __workspace_role_list(
        organization_id=organization_id,
        workspace_id=workspace_id,
        client_id=private.user_token_client_id,
        token=token,
    )

    workspace_users = []
    for role in workspace_roles:
        users = api_keycloak_call.keycloak_role_uesrs_get(
            realm_name=organization_id,
            client_id=private.user_token_client_id,
            role_name=role.get("name"),
            token=token,
        )
        workspace_users.extend(users)

    return workspace_users


def __workspace_role_list(organization_id, workspace_id, client_id, token):
    """_summary_

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
    custum_roles = api_keycloak_call.keycloak_client_role_get(
        realm_name=organization_id,
        client_id=client_id,
        role_name="",
        token=token,
    )

    workspace_roles = []

    for pf_role in custum_roles:

        # ロールのcomposites から workspace_id を含むものだけを取得
        # Get only those contain workspace_id from the composite roles
        role_composites = api_keycloak_call.keycloak_client_role_composites_get(
            realm_name=organization_id,
            client_uid=client_id,
            role_name=pf_role.get("name"),
            token=token,
        )

        list_search = [role for role in role_composites if role.get('name') == workspace_id]
        if len(list_search) > 0:
            workspace_roles.append(pf_role)

    return workspace_roles
