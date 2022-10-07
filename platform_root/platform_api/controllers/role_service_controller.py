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
import json

from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, validation, check_authority
from common_library.common.db import DBconnector

import globals

MSG_FUNCTION_ID = "24"


@common.platform_exception_handler
def role_create(body, organization_id):
    """Create creates an role

    Args:
        body (dict | bytes): _description_
        organization_id (str): _description_. Defaults to None.

    Returns:
        InlineResponse2001: _description_
    """

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-000002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    role_name = body.get("name")
    role_kind = body.get("kind")
    role_description = body.get("description") if body.get("description") else ""
    workspaces = body.get("workspaces") if body.get("workspaces") else []

    # validation check
    validate = validation.validate_role_name(role_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_role_kind(role_kind)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_role_description(role_description)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)
    validate = validation.validate_role_workspaces(workspaces)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    workspace_ids = [w.get("id") for w in workspaces]
    list_is_auth = check_authority.is_workspaces_authority(organization_id, workspace_ids)
    for is_auth in list_is_auth:
        if not is_auth.get("is_auth"):
            raise common.BadRequestException(
                message_id=f"400-{MSG_FUNCTION_ID}001", message='指定されたワークスペースを操作対象として指定する権限がありません。'
            )

    db = DBconnector()
    private = db.get_organization_private(organization_id)

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

    # ロールに紐づけるwsロールを取得する
    # get ws role
    roles_ws = []
    for role_name_ws in workspace_ids:
        r_get_role_ws = api_keycloak_clients.client_role_get(
            realm_name=organization_id, client_id=private.internal_api_client_id, role_name=role_name_ws, token=token,
        )
        if r_get_role_ws.status_code != 200:
            globals.logger.debug(f"response:{r_get_role_ws.text}")

            raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ワークスペースロールの取得に失敗しました(対象ID:{})".format(role_name_ws))

        roles_ws.append(json.loads(r_get_role_ws.text))

    role_options = {
        "description": role_description,
        "attributes": {
            "kind": [role_kind]
        },
    }

    # ロール作成
    # create role
    r_create = api_keycloak_clients.client_role_create(
        realm_name=organization_id, client_uid=private.user_token_client_id, token=token,
        role_name=role_name, role_options=role_options
    )
    if r_create.status_code == 409:
        globals.logger.debug(f"response:{r_create.text}")

        raise common.OtherException(409, None, f"409-{MSG_FUNCTION_ID}001", "指定されたロールはすでに存在しているため作成できません。")
    elif r_create.status_code not in [201, 409]:
        globals.logger.debug(f"response:{r_create.text}")

        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}002", "ロール作成に失敗しました(対象ロール:{})".format(role_name))

    # ロールにwsロールを紐づける
    # role composite ws
    r_create_composite = api_keycloak_clients.client_role_composites_create(
        realm_name=organization_id, client_uid=private.user_token_client_id, role_name=role_name, add_roles=roles_ws, token=token,
    )
    if r_create_composite.status_code != 204:
        globals.logger.debug(f"response:{r_create_composite.text}")

        raise common.InternalErrorException(
            None,
            f"500-{MSG_FUNCTION_ID}003",
            "ロールとワークスペースロールの紐づけに失敗しました(対象ロール:{})".format(role_name)
        )

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def role_list(organization_id, kind=None):
    """List returns list of roles

    Args:
        organization_id (str): _description_
        kind (str, optional): role kind. Defaults to None.

    Returns:
        InlineResponse2004: _description_
    """

    data = [
        {
            "name": "role-1",
            "description": "role description",
            "kind": "workspace",
            "workspaces": [
                {
                    "id": "workspace-1"
                }
            ]
        },
        {
            "name": "organization-role-1",
            "description": "role description",
            "kind": "organization",
            "authorities": [
                {
                    "name": "_og-upd"
                }
            ]
        }
    ]
    return common.response_200_ok(data)
