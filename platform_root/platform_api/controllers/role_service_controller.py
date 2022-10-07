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
import inspect

from common_library.common import common, api_keycloak_tokens, api_keycloak_clients, api_keycloak_roles
from common_library.common import validation, check_authority
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import common_library.common.const as common_const

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


@common.platform_exception_handler
def role_list(organization_id, kind=None):
    """List returns list of roles

    Args:
        organization_id (str): _description_
        kind (str, optional): role kind. Defaults to None.

    Returns:
        InlineResponse2004: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    response = api_keycloak_roles.clients_roles_get(
        realm_name=organization_id, client_id=private.user_token_client_id, token=token, briefRepresentation=False
    )
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}005"
        message = multi_lang.get_text(
            message_id,
            "roleの取得に失敗しました(対象ID:{0} client:{1})",
            organization_id,
            private.user_token_client_clientid
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    roles = json.loads(response.text)

    data = []

    # 取得したロールを戻り値に設定
    # Set the acquired role to the return value
    for role in roles:
        globals.logger.debug("attributes:{}".format(role.get("attributes")))

        role_kind_list = role.get("attributes").get("kind")
        if role_kind_list:
            role_kind = role_kind_list[0]
        else:
            role_kind = ""

        if kind:
            # 条件フィルタがある場合は、該当のkindと一致しない場合は返却しない
            # If there is a conditional filter, do not return if the kind does not match
            if role_kind != kind:
                continue

        # 共通の戻り値設定
        # Common return value settin
        ret_role = {
            "name": role.get("name"),
            "description": role.get("description"),
            "kind": role_kind,
        }

        if role.get("composite"):
            # 子ロールの取得
            # get composite role
            response = api_keycloak_roles.clients_composite_roles_get(
                realm_name=organization_id, client_id=private.user_token_client_id, role_name=role.get("name"), token=token
            )
            if response.status_code == 200:
                composite_roles = json.loads(response.text)
                globals.logger.debug(f"composite_roles:{composite_roles}")

                for composite_role in composite_roles:
                    if role_kind == common_const.ROLE_KIND_ORGANIZATION:
                        # organization role
                        composite_list = {
                            "authorities": [
                                {
                                    "name": composite_role.get("name")
                                }
                            ]
                        }
                    elif role_kind == common_const.ROLE_KIND_WORKSPACE:
                        # workspace role
                        composite_list = {
                            "workspaces": [
                                {
                                    "id": composite_role.get("name")
                                }
                            ]
                        }

            elif response.status_code == 404:
                composite_list = None
            else:
                globals.logger.error(f"response.status_code:{response.status_code}")
                globals.logger.error(f"response.text:{response.text}")
                message_id = f"500-{MSG_FUNCTION_ID}006"
                message = multi_lang.get_text(
                    message_id,
                    "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
                    organization_id,
                    private.token_check_client_clientid
                )
                raise common.InternalErrorException(message_id=message_id, message=message)

            if composite_list:
                ret_role.update(composite_list)

        data.append(ret_role)

    globals.logger.debug(f"data:{data}")
    # data = [
    #     {
    #         "name": "role-1",
    #         "description": "role description",
    #         "kind": "workspace",
    #         "workspaces": [
    #             {
    #                 "id": "workspace-1"
    #             }
    #         ]
    #     },
    #     {
    #         "name": "organization-role-1",
    #         "description": "role description",
    #         "kind": "organization",
    #         "authorities": [
    #             {
    #                 "name": "_og-upd"
    #             }
    #         ]
    #     }
    # ]

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)
