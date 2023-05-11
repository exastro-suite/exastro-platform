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
from common_library.common import validation, check_authority
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import common_library.common.const as common_const

import globals

MSG_FUNCTION_ID = "26"


@common.platform_exception_handler
def role_user_mapping_get(organization_id, role_name, first=0, max=100):
    """Get user-role mapping for a role

    Args:
        organization_id (str): organization id
        role_name (str): role name
        first (int): first result to return
        max (int): maximum number of results to return

    Returns:
        _type_: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # 該当Clientのorganization管理者ロールを取得
    # Process for the number of organization administrators
    client_role = __check_autho_role(connexion.request.headers, private, token, organization_id, role_name, False)

    # ロールの取得
    # Get role
    response = api_keycloak_roles.role_uesrs_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=client_role.get("name"), token=token, first=first, max=max
    )

    if response.status_code == 404:
        globals.logger.error(f"response:{response.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "情報が存在しません(Role:{0}, message{1})",
            role_name,
            response.text,
        )
        raise common.NotFoundException(message_id=message_id, message=message)

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
                "id": user.get("id"),
                "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
                "firstName": user.get("firstName"),
                "lastName": user.get("lastName"),
                "preferred_username": user.get("username"),
                "enabled": user.get("enabled"),
                "affiliation": user.get("attributes",{}).get("affiliation",[None])[0],
                "description": user.get("attributes",{}).get("description",[None])[0],
                "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp"))
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
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    validate = validation.validate_role_mapping_users(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    private = DBconnector().get_organization_private(organization_id)

    # 該当Clientのorganization管理者ロールを取得
    # Process for the number of organization administrators
    client_role = __check_autho_role(connexion.request.headers, private, token, organization_id, role_name)

    add_role_mapping = []

    # 件数分処理する
    # process the number of cases
    for user in body:
        if not user.get("preferred_username"):
            message_id = "400-000002"
            message = multi_lang.get_text(
                message_id,
                "リクエストボディのパラメータ({0})が不正です。",
                'preferred_username',
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        # ユーザーの存在チェック
        # User existence check
        response = api_keycloak_users.user_get(
            realm_name=organization_id, user_name=user.get("preferred_username"), token=token
        )
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"400-{MSG_FUNCTION_ID}004"
            message = multi_lang.get_text(
                message_id,
                "ユーザー情報の取得に失敗しました(対象:{0})",
                user.get("preferred_username")
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        user_info = json.loads(response.text)
        if len(user_info) == 0:
            message_id = f"400-{MSG_FUNCTION_ID}005"
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
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    validate = validation.validate_role_mapping_users(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    private = DBconnector().get_organization_private(organization_id)

    # サービスアカウントのTOKEN取得
    # Get a service account token
    token = __get_token(organization_id)

    # 該当Clientのorganization管理者ロールを取得
    # Process for the number of organization administrators
    client_role = __check_autho_role(connexion.request.headers, private, token, organization_id, role_name)

    # ユーザーの取得
    # Get user
    request_users = [x.get("preferred_username") for x in body if x.get("preferred_username")]
    users = []
    for username in request_users:
        response = api_keycloak_users.user_get(realm_name=organization_id, user_name=username, token=token)
        if response.status_code != 200:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"400-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "ユーザーの取得に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                username,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        response_user = json.loads(response.text)
        if len(response_user) < 1:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"400-{MSG_FUNCTION_ID}007"
            message = multi_lang.get_text(
                message_id,
                "該当のユーザーは存在しません(対象ID:{0} username:{1})",
                organization_id,
                username,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        users.append(response_user[0])

    roles = [client_role, ]

    # Requires at least one organization manager
    if role_name == common_const.ORG_ROLE_ORG_MANAGER:
        response = api_keycloak_roles.role_uesrs_get(
            realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
        )
        response_user = json.loads(response.text)
        og_managers = [u.get("id") for u in response_user]
        for u in users:
            if u.get("id") in og_managers:
                og_managers.remove(u.get("id"))

        if len(og_managers) < 1:
            message_id = f"400-{MSG_FUNCTION_ID}008"
            message = multi_lang.get_text(
                message_id,
                "{0}は少なくとも1人必要です",
                role_name
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    # ロール紐づけ削除
    # delete role mapping
    for user_info in users:
        response = api_keycloak_roles.user_client_role_mapping_delete(
            realm_name=organization_id, user_id=user_info["id"], client_id=private.user_token_client_id, client_roles=roles, token=token,
        )
        if response.status_code not in [200, 204]:
            globals.logger.error(f"response.status_code:{response.status_code}")
            globals.logger.error(f"response.text:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}003"
            message = multi_lang.get_text(
                message_id,
                "ロールとユーザーの紐づけ削除に失敗しました(対象ID:{0} username:{1})",
                organization_id,
                user_info.get("username")
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


def __check_autho_role(headers, private, token, organization_id, role_name, is_maintenance=True):
    """Check if role can be updated

    Args:
        headers (_type_): _description_
        private (_type_): _description_
        token (_type_): _description_
        organization_id (_type_): _description_
        role_name (_type_): _description_

    Returns:
        dict: client_role
    """
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
    globals.logger.debug("attributes-kind:{0}".format(client_role.get("attributes").get("kind")))

    cauth = check_authority.CheckAuthority(organization_id, headers)

    if [common_const.ROLE_KIND_ORGANIZATION] == client_role.get("attributes", {}).get("kind"):
        role = {
            "name": client_role.get("name"),
            "kind": common_const.ROLE_KIND_ORGANIZATION,
        }
        is_auth = cauth.is_role_authority(role)
        if not is_auth:
            raise common.BadRequestException(
                message_id=f"400-{MSG_FUNCTION_ID}002", message='指定されたロールを操作する権限がありません。'
            )
    else:
        # Get composite role
        # composite roleを取得する
        r_comp_role = api_keycloak_roles.clients_role_composites_get(
            realm_name=organization_id, client_uid=private.user_token_client_id, role_name=client_role.get("name"), token=token
        )
        if r_comp_role.status_code == 200:
            comp_roles = json.loads(r_comp_role.text)
        elif r_comp_role.status_code == 404:
            comp_roles = []
        else:
            globals.logger.error(f"response.status_code:{r_comp_role.status_code}")
            globals.logger.error(f"response.text:{r_comp_role.text}")
            message_id = f"500-{MSG_FUNCTION_ID}004"
            message = multi_lang.get_text(
                message_id,
                "composite roleの取得に失敗しました(対象ID:{0} client:{1})",
                organization_id,
                private.token_check_client_clientid
            )
            raise common.InternalErrorException(message_id=message_id, message=message)

        # Check if role can be updated
        # ロールが更新できるかチェックする
        workspace_ids = [w.get("name") for w in comp_roles]
        is_auth = cauth.is_workspaces_authority(workspace_ids, is_maintenance=is_maintenance)
        if not is_auth and len(comp_roles) > 0:
            raise common.BadRequestException(
                message_id=f"400-{MSG_FUNCTION_ID}003", message='指定されたロールを操作する権限がありません。'
            )

    return client_role
