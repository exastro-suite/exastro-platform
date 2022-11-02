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

from common_library.common import common, api_keycloak_tokens, api_keycloak_roles, api_keycloak_users
from common_library.common import validation
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import common_library.common.const as common_const

import globals

MSG_FUNCTION_ID = "26"


@common.platform_exception_handler
def role_user_mapping_get(organization_id, role_name):
    """Get user-role mapping for a role

    Args:
        organization_id (str): organization id
        role_name (str): role name

    Returns:
        _type_: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # ロールの取得
    # Get role
    response = api_keycloak_roles.role_uesrs_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
    )

    if response.status_code == 404:
        globals.logger.error(f"response:{response.text}")
        raise common.NotFoundException(None, f"404-{MSG_FUNCTION_ID}001", "情報が存在しません(Role:{0}, message{1})".format(role_name, response.text))

    elif response.status_code != 200:
        globals.logger.error(f"response:{response.text}")
        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}001", "ロールに紐づいたユーザーの取得に失敗しました(role:{0})".format(role_name))

    role_users = json.loads(response.text)

    ret_role_users = []

    # 件数分処理する
    # process the number of cases
    for user in role_users:
        ret_role_users.append(
            {
                "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
                "firstName": user.get("firstName"),
                "lastName": user.get("lastName"),
                "preferred_username": user.get("username"),
            }
        )

    return common.response_200_ok(data=ret_role_users)


@common.platform_exception_handler
def role_user_mapping_create(body, organization_id, role_name):
    """ユーザーロールマッピング作成 User Role Mapping Create

    Args:
        body (json): 該当ロールに登録するユーザー情報 registration user info.
                     [{
                         "id": user id,
                         "preferred_username" username
                     }]
        organization_id (str): organization id
        role_name (str): role name

    Returns:
        _type_: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-000002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    validate = validation.validate_role_mapping_users(body)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, validate.args)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    private = DBconnector().get_organization_private(organization_id)

    # 該当Clientのorganization管理者ロールを取得
    # Process for the number of organization administrators
    response = api_keycloak_roles.clients_role_get(organization_id, private.user_token_client_id, role_name, token, True)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "client roleの取得に失敗しました(対象ID:{0} client:{1} role:{2})",
            organization_id,
            private.user_token_client_clientid,
            role_name
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    client_role = json.loads(response.text)
    globals.logger.debug(f"client_role:{client_role}")
    globals.logger.debug("attributes-kind:{}".format(client_role.get("attributes").get("kind")))

    if [common_const.ROLE_KIND_WORKSPACE] != client_role.get("attributes").get("kind"):
        message_id = f"400-{MSG_FUNCTION_ID}002"
        message = multi_lang.get_text(
            message_id,
            "対象のロールはworkspaceロールではありません(対象:{0})",
            role_name
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    add_role_mapping = []

    # 件数分処理する
    # process the number of cases
    for user in body:
        if not user.get("preferred_username"):
            raise common.BadRequestException(
                message_id='400-000002', message='リクエストボディのパラメータ({})が不正です。'.format('preferred_username')
            )

        # ユーザーの存在チェック
        # User existence check
        response = api_keycloak_users.user_get(
            realm_name=organization_id, user_name=user.get("preferred_username"), token=token
        )
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"400-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "ユーザー情報の取得に失敗しました(対象:{0})",
                user.get("preferred_username")
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        user_info = json.loads(response.text)
        if len(user_info) == 0:
            message_id = f"400-{MSG_FUNCTION_ID}004"
            message = multi_lang.get_text(
                message_id,
                "該当のユーザーは存在しません(対象:{0})",
                user.get("preferred_username")
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        globals.logger.debug(f"user_info:{user_info}")

        add_role_mapping.append(user_info[0])

    client_roles = [client_role, ]

    # 登録対象分処理する、登録済みはエラーとしない
    # Process for registration target, registered is not regarded as an error
    for user_info in add_role_mapping:
        globals.logger.debug(f"user_info:{user_info}")
        response = api_keycloak_roles.user_client_role_mapping_create(
            realm_name=organization_id, user_id=user_info.get("id"), client_id=private.user_token_client_id,
            client_roles=client_roles, token=token
        )
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}002"
            message = multi_lang.get_text(
                message_id,
                "ロール設定に失敗しました(対象ID:{0} client:{1} username:{2})",
                organization_id,
                private.user_token_client_clientid,
                user_info.get("preferred_username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def role_user_mapping_delete(body, organization_id, role_name):
    """Delete roles from user role mapping

    Args:
        body (list): requestbody
        organization_id (str): organization id
        role_name (str): role name

    Returns:
        InlineResponse2001: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-000002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    request_users = body

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # ロールの取得
    # Get role
    r_role = api_keycloak_roles.clients_role_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
    )

    if r_role.status_code == 404:
        globals.logger.error(f"response:{r_role.text}")
        raise common.NotFoundException(None, f"404-{MSG_FUNCTION_ID}001", "ロールが存在しません(role:{0})".format(role_name))

    elif r_role.status_code != 200:
        globals.logger.error(f"response:{r_role.text}")
        raise common.InternalErrorException(None, f"500-{MSG_FUNCTION_ID}003",
                                            "ワークスペースロールの取得に失敗しました(client:{0} role:{1})".format(private.user_token_client_clientid, role_name))

    roles = [json.loads(r_role.text), ]

    # ユーザーの取得
    # Get user
    users = []
    for user_info in request_users:
        response = api_keycloak_users.user_get(realm_name=organization_id, user_name=user_info.get("preferred_username"), token=token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}004"
            message = multi_lang.get_text(
                message_id,
                "ユーザーの取得に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_info.get("preferred_username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        response_user = json.loads(response.text)
        if len(response_user) < 1:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}005"
            message = multi_lang.get_text(
                message_id,
                "該当のユーザーは存在しません(対象ID:{0} username:{1})",
                organization_id,
                user_info.get("preferred_username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        users.append(response_user[0])

    # ロール紐づけ削除
    # delete role mapping
    for user_info in users:
        response = api_keycloak_roles.user_client_role_mapping_delete(
            realm_name=organization_id, user_id=user_info["id"], client_id=private.user_token_client_id, client_roles=roles, token=token,
        )
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "ロールとユーザーの紐づけ削除に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_info.get("preferred_username")
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(data=None)


def __get_token(organization_id):
    """get a token

    Args:
        organization_id (str): organization id

    Raises:
        common.AuthException: _description_

    Returns:
        str: token
    """

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token_response = api_keycloak_tokens.service_account_get_token(
        organization_id, private.internal_api_client_clientid, private.internal_api_client_secret,
    )
    if token_response.status_code != 200:
        message_id = "401-00001"
        message = multi_lang.get_text(message_id,
                                      "tokenの取得に失敗しました。 realm:[{0}] client:[{1}]",
                                      organization_id,
                                      private.internal_api_client_clientid)
        raise common.AuthException(message_id=message_id, message=message)

    token = json.loads(token_response.text)["access_token"]

    return token