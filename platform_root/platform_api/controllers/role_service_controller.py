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

from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, validation
from common_library.common.db import DBconnector

import globals

MSG_FUNCTION_ID = "24"


@common.platform_exception_handler
def role_create(body, organization_id):
    organization_id = "org1"

    r = connexion.request
    body = r.get_json()

    role_name = body.get("name")
    role_kind = body.get("kind")
    role_description = body.get("description") if body.get("description") else ""
    workspaces = body.get("workspaces") if body.get("workspaces") else []

    # validation check
    # validate = validation.validate_workspace_id(workspace_id)
    # if not validate.ok:
    #     return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    # validation check

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
    for w in workspaces:
        role_name_ws = w.get("id")
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
    if r_create.status_code not in [201, 409]:
        globals.logger.debug(f"response:{r_create.text}")

        # 201 Created 以外に、409 already exists は許容する
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
