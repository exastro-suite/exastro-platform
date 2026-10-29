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
import os

from common_library.common import common, api_keycloak_tokens, api_keycloak_users, api_keycloak_roles
from common_library.common import validation
from common_library.common import multi_lang
from common_library.common import organization_options
from common_library.common.db import DBconnector
import common_library.common.const as common_const
from common_library.common import bl_plan_service
from common_library.common import resources

import globals

# AI Credential関連のインポート
from services.users.ai_credential_service import (
    get_ai_credential_service,
    CredentialNotFound,
    CredentialAlreadyExists,
)
from services.ai_assistant.model_service import (
    get_model_service,
)
from services.users.ai_preference_service import (
    get_ai_preference_service,
    get_current_ai_service_service,
)
# settings(type: password以外の項目をGET /credentialsで値付きで返すために使用
# Used to return values (for non-password-type fields) in GET /credentials
from controllers.ai_assistant_service_controller import AVAILABLE_AI_SERVICES

# AIアシスタント機能(ai_assistant driver)が有効な組織のみモデル一覧・ai-preferenceのAPIを許可するデコレータ
# Decorator that only allows the models-list / ai-preference APIs for organizations with the ai_assistant driver enabled
require_ai_assistant_driver = organization_options.require_ita_driver(
    "ai_assistant",
    "403-25001",
    "AIアシスタント機能が有効になっていません",
)

MSG_FUNCTION_ID = "25"


def _is_valid_bedrock_cache_api_key(api_key):
    """bedrock-cacheのcredential_data.apiKeyが、idTokenを含む有効なキャッシュファイルJSON文字列かを確認する
    Verify that credential_data.apiKey for bedrock-cache is a valid cache-file JSON string containing idToken

    Args:
        api_key: credential_data.get("apiKey")の値

    Returns:
        boolean
    """
    if not isinstance(api_key, str) or not api_key:
        return False

    try:
        parsed = json.loads(api_key)
    except (TypeError, ValueError):
        return False

    return isinstance(parsed, dict) and "idToken" in parsed


def _visible_credential_data(credential_type, credential_data):
    """credential_data中、settingsでtype: password以外と定義されている項目のみ値を返す
    (passwordタイプの項目は値を返さない。マスク対象)
    Return only the credential_data entries whose settings type is NOT "password"
    (password-type entries are never returned; they remain masked)

    Args:
        credential_type: AIサービスID
        credential_data: Credentialデータ

    Returns:
        dict: 非passwordタイプの項目のみを含むdict
    """
    settings = next(
        (
            service.get("settings", {})
            for service in AVAILABLE_AI_SERVICES
            if service.get("ai_service_id") == credential_type
        ),
        {},
    )

    # settingsに定義が無いキーは安全側でマスクする(明示的にtype!=passwordと分かる項目のみ値を返す)
    # Keys not defined in settings are masked by default (only return values for entries explicitly not type: password)
    return {
        key: value
        for key, value in credential_data.items()
        if key in settings and settings[key].get("type") != "password"
    }


def _get_ai_service_name(ai_service_id):
    """AVAILABLE_AI_SERVICESからai_service_nameを取得する(見つからない場合はNone)
    Look up ai_service_name from AVAILABLE_AI_SERVICES (None if not found)

    Args:
        ai_service_id: AIサービスID

    Returns:
        str | None
    """
    return next(
        (
            service.get("ai_service_name")
            for service in AVAILABLE_AI_SERVICES
            if service.get("ai_service_id") == ai_service_id
        ),
        None,
    )


@common.platform_exception_handler
def user_list(organization_id, first=0, max=100, search=None):
    """List returns list of users

    Args:
        organization_id (str): organization id
        first (int): start data position index
        max (int): max get count
        search (str): search user keyword

    Returns:
        Response: http response
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

    # user 情報取得
    # user get to keycloak
    response = api_keycloak_users.user_get(realm_name=organization_id, user_name=None, token=token, first=first, max=max, search=search)
    if response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    users = json.loads(response.text)

    data = []
    for user in users:
        ret_user = {
            "id": user["id"],
            "firstName": user.get("firstName", ""),
            "lastName": user.get("lastName", ""),
            "email": user.get("email", ""),
            "preferred_username": user.get("username", ""),
            "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
            "affiliation": user.get("attributes", {}).get("affiliation", [""])[0],
            "service_account_user_type": user.get("attributes", {}).get("service_account_user_type", [None])[0],
            "description": user.get("attributes", {}).get("description", [""])[0],
            "enabled": user.get("enabled", False),
            "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp")),
        }
        data.append(ret_user)

    globals.logger.debug(f"data:{data}")

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)


@common.platform_exception_handler
def user_create(body, organization_id):
    """Create creates user

    Args:
        body (dict | bytes): _description_
        organization_id (str): _description_. Defaults to None.

    Returns:
        Response: http response
    """

    # 上限チェック
    # uper limit check
    # users limit get
    limits = bl_plan_service.organization_limits_get(organization_id, common_const.RESOURCE_COUNT_USERS)
    if common_const.RESOURCE_COUNT_USERS in limits:
        # 上限値がある場合にチェックする
        # Check if there is an upper limit
        rc = resources.counter(organization_id)
        globals.logger.info("### users count :{}".format(rc(common_const.RESOURCE_COUNT_USERS)))

        if rc(common_const.RESOURCE_COUNT_USERS) >= limits[common_const.RESOURCE_COUNT_USERS]:
            message_id = "400-00022"
            message = multi_lang.get_text(
                message_id,
                "{0}の上限数({1})を超えるため、新しい{0}は作成できません。",
                multi_lang.get_text('000-00135', "ユーザー"),
                limits[common_const.RESOURCE_COUNT_USERS]
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-00002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    user_name = body.get("username")
    user_email = body.get("email")
    user_firstName = body.get("firstName")
    user_lastName = body.get("lastName")
    password = body.get("password")
    password_temporary = body.get("password_temporary", "True")
    user_affiliation = body.get("affiliation")
    user_description = body.get("description")
    user_enabled = body.get("enabled", "True")

    # validation check
    validate = validation.validate_user_name(user_name)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_email(user_email)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_firstName(user_firstName)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_lastName(user_lastName)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_password(password)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_password_temporary(password_temporary)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_affiliation(user_affiliation)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_description(user_description)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_enabled(user_enabled)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

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

    # ユーザー作成
    # create user
    user_json = {
        "username": user_name,
        "email": user_email,
        "firstName": user_firstName,
        "lastName": user_lastName,
        "credentials": [
            {
                "type": "password",
                "value": body.get("password"),
                "temporary": body.get("password_temporary")
            }
        ],
        "attributes":
        {
            "affiliation": [user_affiliation],
            "description": [user_description],
        },
        "enabled": body.get("enabled")
    }

    u_create = api_keycloak_users.user_create(
        realm_name=organization_id, user_json=user_json, token=token
    )
    if u_create.status_code == 409:
        globals.logger.debug(f"response:{u_create.text}")
        message_id = f"409-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーはすでに存在しているため作成できません。[{0}]",
            json.loads(u_create.text)["errorMessage"])

        raise common.BadRequestException(message_id=message_id, message=message)
    elif u_create.status_code == 400:
        globals.logger.debug(f"response:{u_create.text}")
        message_id = f"400-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました({0})",
            common.get_response_error_message(u_create.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif u_create.status_code != 201:
        globals.logger.debug(f"response:{u_create.text}")
        message_id = f"500-{MSG_FUNCTION_ID}002"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました(対象ユーザー:{0})",
            user_name)

        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def user_get(organization_id, user_id):
    """List returns list of roles

    Args:
        organization_id (str): organization id
        user_id (str): user id

    Returns:
        Response: http response
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

    # user 情報取得
    # user get to keycloak
    response = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)
    elif response.status_code != 200:
        globals.logger.error(f"response.status_code:{response.status_code}")
        globals.logger.error(f"response.text:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    user = json.loads(response.text)
    globals.logger.debug(f"response user:{user}")

    ret_user = {
        "id": user["id"],
        "firstName": user.get("firstName", ""),
        "lastName": user.get("lastName", ""),
        "email": user.get("email", ""),
        "preferred_username": user.get("username", ""),
        "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
        "affiliation": user.get("attributes", {}).get("affiliation", [""])[0],
        "service_account_user_type": user.get("attributes", {}).get("service_account_user_type", [None])[0],
        "description": user.get("attributes", {}).get("description", [""])[0],
        "enabled": user.get("enabled", False),
        "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp")),
    }

    globals.logger.debug(f"ret_user:{ret_user}")

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(ret_user)


@common.platform_exception_handler
def user_update(body, organization_id, user_id):  # noqa: E501, C901
    """update user

    Args:
        body (dict): body
        organization_id (str): organization id
        user_id (str): user id

    Returns:
        Response: http response
    """
    body = connexion.request.get_json()
    if not body:
        raise common.BadRequestException(
            message_id='400-00002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    user_email = body.get("email")
    user_firstName = body.get("firstName")
    user_lastName = body.get("lastName")
    password = body.get("password")
    password_temporary = body.get("password_temporary", "True")
    user_affiliation = body.get("affiliation")
    user_description = body.get("description")
    user_enabled = body.get("enabled", "True")

    # validation check
    validate = validation.validate_user_email(user_email)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_firstName(user_firstName)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_lastName(user_lastName)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_password_temporary(password_temporary)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    if password is not None:
        validate = validation.validate_password(password)
        if not validate.ok:
            return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_affiliation(user_affiliation)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_description(user_description)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)
    validate = validation.validate_user_enabled(user_enabled)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

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

    if body.get("enabled") is False:
        # organization role user情報取得
        # get organization role user information
        response = api_keycloak_roles.role_uesrs_get(
            realm_name=organization_id, client_id=private.user_token_client_id, role_name=common_const.ORG_ROLE_ORG_MANAGER, token=token,
        )
        if response.status_code != 200:
            globals.logger.error(f"response:{response.text}")
            message_id = f"500-{MSG_FUNCTION_ID}005"
            message = multi_lang.get_text(
                message_id,
                "オーガナイゼーション管理者ロールのユーザー情報が取得できません")
            raise common.InternalErrorException(message_id=message_id, message=message)

        # User role チェック - オーガナイゼーション管理者は無効化不可
        # User role check - organization admin cannot disable
        response_user = json.loads(response.text)
        og_managers = [u.get("id") for u in response_user]
        globals.logger.debug(f"og_managers:{og_managers}")

        if user_id in og_managers:
            message_id = f"400-{MSG_FUNCTION_ID}006"
            message = multi_lang.get_text(
                message_id,
                "オーガナイゼーション管理者は無効にできません")
            raise common.BadRequestException(message_id=message_id, message=message)

    # 更新前のユーザー情報の取得
    # Get user information before update
    res_before_user = api_keycloak_users.user_get_by_id(realm_name=organization_id, user_id=user_id, token=token)
    if res_before_user.status_code == 404:
        globals.logger.debug(f"response:{res_before_user.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)

    elif res_before_user.status_code != 200:
        globals.logger.error(f"response.status_code:{res_before_user.status_code}")
        globals.logger.error(f"response.text:{res_before_user.text}")
        message_id = f"500-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            organization_id,
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    before_user = json.loads(res_before_user.text)

    # ユーザー更新
    # update user
    user_json = {
        "email": user_email,
        "firstName": user_firstName,
        "lastName": user_lastName,
        "attributes": before_user.get("attributes", {}),  # 属性情報をbeforeから設定(localeを残すため)
        "enabled": body.get("enabled")
    }

    user_json["attributes"]["affiliation"] = user_affiliation
    user_json["attributes"]["description"] = user_description

    if body.get("password") is not None:
        user_json["credentials"] = [
            {
                "type": "password",
                "value": body.get("password"),
                "temporary": body.get("password_temporary")
            }
        ]

    u_update = api_keycloak_users.user_update(
        realm_name=organization_id, user_id=user_id, user_json=user_json, token=token
    )
    if u_update.status_code == 404:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーは存在していません。")

        raise common.NotFoundException(message_id=message_id, message=message)

    elif u_update.status_code == 400:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = f"400-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました({0})",
            common.get_response_error_message(u_update.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif u_update.status_code not in [200, 204]:
        globals.logger.debug(f"response:{u_update.text}")
        message_id = f"500-{MSG_FUNCTION_ID}004"
        message = multi_lang.get_text(
            message_id,
            "ユーザー更新に失敗しました(対象ユーザーID:{0})[{1}]",
            user_id,
            json.loads(u_update.text)["errorMessage"])

        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def user_delete(organization_id, user_id):
    """delete user

    Args:
        organization_id (str): organization id
        user_id (str): user id

    Returns:
        Response: http response
    """

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

    # organization role user情報取得
    # get organization role user information
    response = api_keycloak_roles.role_uesrs_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=common_const.ORG_ROLE_ORG_MANAGER, token=token,
    )
    if response.status_code != 200:
        globals.logger.error(f"response:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}005"
        message = multi_lang.get_text(
            message_id,
            "オーガナイゼーション管理者ロールのユーザー情報が取得できません")
        raise common.InternalErrorException(message_id=message_id, message=message)

    # User role チェック - オーガナイゼーション管理者は削除不可
    # User role check - organization admin cannot delete
    response_user = json.loads(response.text)
    og_managers = [u.get("id") for u in response_user]
    globals.logger.debug(f"og_managers:{og_managers}")

    if user_id in og_managers:
        message_id = f"400-{MSG_FUNCTION_ID}005"
        message = multi_lang.get_text(
            message_id,
            "オーガナイゼーション管理者は削除できません")
        raise common.BadRequestException(message_id=message_id, message=message)

    response = api_keycloak_users.user_delete(
        realm_name=organization_id, user_id=user_id, token=token
    )
    if response.status_code == 404:
        globals.logger.debug(f"response:{response.text}")
        message_id = f"404-{MSG_FUNCTION_ID}001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーが存在しません")

        raise common.BadRequestException(message_id=message_id, message=message)
    elif response.status_code == 400:
        globals.logger.debug(f"response:{response.text}")
        message_id = f"400-{MSG_FUNCTION_ID}003"
        message = multi_lang.get_text(
            message_id,
            "ユーザー削除に失敗しました(対象ユーザーID:{0})",
            user_id)
        raise common.BadRequestException(message_id=message_id, message=message)

    elif response.status_code != 204:
        globals.logger.debug(f"response:{response.text}")
        message_id = f"500-{MSG_FUNCTION_ID}003"
        message = multi_lang.get_text(
            message_id,
            "ユーザー削除に失敗しました(対象ユーザーID:{0})[{1}]",
            user_id,
            json.loads(response.text)["errorMessage"])

        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)

# =========================================================================
# AI Credential Service Functions
# =========================================================================


@common.platform_exception_handler
def register_credential(body, organization_id, credential_type):
    """
    Credentialを登録

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    credential_name = body.get("credential_name")
    credential_data = body.get("credential_data")
    notes = body.get("notes")

    # バリデーション
    if not credential_name:
        message_id = "400-25007"
        message = multi_lang.get_text(message_id, "credential_nameは必須です")
        raise common.BadRequestException(message_id=message_id, message=message)

    if not credential_data or not isinstance(credential_data, dict):
        message_id = "400-25008"
        message = multi_lang.get_text(
            message_id, "credential_dataは必須でJSON形式である必要があります"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # bedrock-cache の特別処理
    if credential_type == "bedrock-cache":
        # apiKeyにログインキャッシュファイルの内容(JSON文字列)が渡されているか確認
        # Verify that apiKey contains the login cache file content (a JSON string)
        if not _is_valid_bedrock_cache_api_key(credential_data.get("apiKey")):
            message_id = "400-25009"
            message = multi_lang.get_text(
                message_id,
                "bedrock-cacheのapiKeyには、idTokenを含むキャッシュファイル全体のJSON文字列を指定してください。"
                "~/.aws/login/cache/*.json ファイルの内容全体を、そのままapiKeyの値として渡してください。"
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        if not notes:
            notes = "AWS Login Cache (automatic token refresh)"

    # bedrock(手動Credential)の特別処理: regionはフォールバックのデフォルト値を持たないため必須とする
    # bedrock (manual credential) special handling: region has no fallback default, so it is required
    elif credential_type == "bedrock":
        if not credential_data.get("region"):
            message_id = "400-25016"
            message = multi_lang.get_text(
                message_id,
                "bedrockはcredential_data.regionの指定が必須です。"
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    try:
        service = get_ai_credential_service()

        credential_id = service.register_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
            credential_name=credential_name,
            credential_data=credential_data,
            notes=notes,
        )

        globals.logger.debug(
            f"AI Credential registered: id={credential_id}, "
            f"service={credential_type}, org={organization_id}, user={user_id}"
        )

        return common.response_200_ok(
            {
                "credential_id": credential_id,
                "credential_type": credential_type,
                "credential_name": credential_name,
                "status": "active",
                "message": "Credential registered successfully",
            }
        )

    except CredentialAlreadyExists:
        # このcredential_typeには既に1件登録済み（1credential_typeにつき1件のみ許可）。更新はPUTを使う
        # A credential is already registered for this credential_type (only one credential is allowed per type). Use PUT to update it
        message_id = "409-25002"
        message = multi_lang.get_text(
            message_id,
            "Credential for this credential_type is already registered. Use PUT to update it."
        )
        raise common.OtherException(status_code=409, message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to register credential: {e}", exc_info=True)
        message_id = "500-25006"
        message = multi_lang.get_text(
            message_id, "Credential登録に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
def get_credential(organization_id, credential_type):
    """
    Credentialを取得（1credential_typeにつき1件のみ。未登録時も404にせずnullで返す）

    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_ai_credential_service()

        try:
            credential = service.get_credential(
                organization_id=organization_id,
                user_id=user_id,
                credential_type=credential_type,
            )
        except CredentialNotFound:
            # ai-preferenceのGETと同様、未登録時は404にせず全項目nullで返す
            # Mirror the ai-preference GET behavior: return null fields (not a 404) when unregistered
            return common.response_200_ok(
                {
                    "credential_id": None,
                    "credential_type": credential_type,
                    "credential_name": None,
                    "status": None,
                    "expires_at": None,
                    "last_used_at": None,
                    "credential_data_keys": [],
                    "credential_data": {},
                }
            )

        # Credentialデータは、settingsでtype: password以外と定義されている項目のみ値を返す(passwordタイプはマスク)
        # For credential_data, only return values for entries whose settings type is not "password" (password-type entries stay masked)
        return common.response_200_ok(
            {
                "credential_id": credential.credential_id,
                "credential_type": credential.credential_type,
                "credential_name": credential.credential_name,
                "status": credential.status,
                "expires_at": (
                    credential.expires_at.isoformat() if credential.expires_at else None
                ),
                "last_used_at": (
                    credential.last_used_at.isoformat()
                    if credential.last_used_at
                    else None
                ),
                "credential_data_keys": list(credential.credential_data.keys()),
                "credential_data": _visible_credential_data(
                    credential_type, credential.credential_data
                ),
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to get credential: {e}", exc_info=True)
        message_id = "500-25007"
        message = multi_lang.get_text(
            message_id, "Credential取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
def delete_credential(organization_id, credential_type):
    """
    Credentialを削除（このcredential_typeに登録されている1件を削除する）

    認証情報が無くなったAIサービスの設定を残さないため、あわせてこのAIサービスのAI利用設定
    （デフォルトモデル・ピックアップモデル）も削除し、このAIサービスを使用中だった場合は
    現在選択中のAIサービスも未選択に戻す。

    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_ai_credential_service()

        deleted = service.delete_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
        )

        if not deleted:
            message_id = "404-25002"
            message = multi_lang.get_text(message_id, "Credentialが見つかりません")
            raise common.NotFoundException(message_id=message_id, message=message)

        globals.logger.debug(
            f"AI Credential deleted: service={credential_type}, org={organization_id}, user={user_id}"
        )

        # 認証情報が無くなったAIサービスは選択できないため、そのAIサービスの設定も残さない
        get_ai_preference_service().delete_preference(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=credential_type,
        )

        # 削除したAIサービスを使用中だった場合のみ、選択中の状態が未選択に戻る
        current_cleared = get_current_ai_service_service().clear_current(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=credential_type,
        )

        return common.response_200_ok(
            {
                "credential_type": credential_type,
                "current_ai_service_cleared": current_cleared,
                "message": "Credential deleted successfully",
            }
        )

    except common.NotFoundException:
        raise

    except Exception as e:
        globals.logger.error(f"Failed to delete credential: {e}", exc_info=True)
        message_id = "500-25008"
        message = multi_lang.get_text(
            message_id, "Credential削除に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
def update_credential(body, organization_id, credential_type):
    """
    Credentialを更新(全体更新。このcredential_typeに登録されている1件を更新する)

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    credential_name = body.get("credential_name")
    credential_data = body.get("credential_data")
    notes = body.get("notes")

    # 必須フィールドのバリデーション（PUT = 全体更新）
    if not credential_name:
        message_id = "400-25007"
        message = multi_lang.get_text(message_id, "credential_nameは必須です")
        raise common.BadRequestException(message_id=message_id, message=message)

    if not credential_data or not isinstance(credential_data, dict):
        message_id = "400-25008"
        message = multi_lang.get_text(
            message_id, "credential_dataは必須でJSON形式である必要があります"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # bedrock-cache の特別処理
    if credential_type == "bedrock-cache":
        if not _is_valid_bedrock_cache_api_key(credential_data.get("apiKey")):
            message_id = "400-25009"
            message = multi_lang.get_text(
                message_id,
                "bedrock-cacheのapiKeyには、idTokenを含むキャッシュファイル全体のJSON文字列を指定してください。"
                "~/.aws/login/cache/*.json ファイルの内容全体を、そのままapiKeyの値として渡してください。"
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    # bedrock(手動Credential)の特別処理: regionはフォールバックのデフォルト値を持たないため必須とする
    # bedrock (manual credential) special handling: region has no fallback default, so it is required
    elif credential_type == "bedrock":
        if not credential_data.get("region"):
            message_id = "400-25016"
            message = multi_lang.get_text(
                message_id,
                "bedrockはcredential_data.regionの指定が必須です。"
            )
            raise common.BadRequestException(message_id=message_id, message=message)

    try:
        service = get_ai_credential_service()

        updated = service.update_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
            credential_name=credential_name,
            credential_data=credential_data,
            notes=notes,
        )

        if not updated:
            message_id = "404-25003"
            message = multi_lang.get_text(message_id, "Credentialが見つかりません")
            raise common.NotFoundException(message_id=message_id, message=message)

        globals.logger.debug(
            f"AI Credential updated: service={credential_type}, org={organization_id}, user={user_id}"
        )

        # 更新後の情報を取得
        credential = service.get_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
        )

        return common.response_200_ok(
            {
                "credential_id": credential.credential_id,
                "credential_type": credential.credential_type,
                "credential_name": credential.credential_name,
                "status": credential.status,
                "message": "Credential updated successfully",
            }
        )

    except common.NotFoundException:
        raise

    except Exception as e:
        globals.logger.error(f"Failed to update credential: {e}", exc_info=True)
        message_id = "500-25009"
        message = multi_lang.get_text(
            message_id, "Credential更新に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
def verify_credential(organization_id, credential_type):
    """
    Credentialを検証（このcredential_typeに登録されている1件を検証する）

    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_ai_credential_service()

        credential = service.get_credential(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
        )

        # サービスごとの検証ロジック
        verification_result = _verify_by_service(credential_type, credential.credential_data)

        return common.response_200_ok(verification_result)

    except CredentialNotFound:
        message_id = "404-25004"
        message = multi_lang.get_text(message_id, "Credentialが見つかりません")
        raise common.NotFoundException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to verify credential: {e}", exc_info=True)
        message_id = "500-25010"
        message = multi_lang.get_text(
            message_id, "Credential検証に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


def _verify_by_service(credential_type: str, credential_data: dict) -> dict:
    """
    AIサービスごとのCredential検証

    Args:
        credential_type: AIサービスID
        credential_data: Credentialデータ

    Returns:
        検証結果
    """
    if credential_type == "bedrock":
        # AWS Bedrock検証
        import boto3
        from botocore.config import Config

        try:
            # 環境変数からタイムアウト・リトライ設定を読み込み
            read_timeout = int(os.getenv("AI_ASSISTANT_READ_TIMEOUT", "300"))
            connect_timeout = int(os.getenv("AI_ASSISTANT_CONNECT_TIMEOUT", "30"))
            max_attempts = int(os.getenv("AI_ASSISTANT_MAX_ATTEMPTS", "1"))

            session = boto3.Session(
                aws_access_key_id=credential_data.get("accessKeyId"),
                aws_secret_access_key=credential_data.get("secretAccessKey"),
                aws_session_token=credential_data.get("sessionToken"),
                region_name=credential_data.get("region"),
            )
            sts = session.client(
                "sts",
                config=Config(
                    read_timeout=read_timeout,
                    connect_timeout=connect_timeout,
                    retries={"max_attempts": max_attempts, "mode": "standard"},
                ),
            )
            identity = sts.get_caller_identity()

            return {
                "valid": True,
                "message": "Credential is valid",
                "account_id": identity.get("Account"),
                "user_id": identity.get("UserId"),
            }
        except Exception as e:
            return {
                "valid": False,
                "message": f"Credential verification failed: {str(e)}",
            }

    elif credential_type == "bedrock-cache":
        # AWS Login Cache検証
        from services.ai_assistant.aws_session_manager import (
            create_bedrock_session_from_credential_data,
        )

        try:
            # apiKeyにネストされたキャッシュファイルJSON文字列を展開する
            # Unwrap the cache-file JSON string nested under apiKey
            try:
                cache_data = json.loads(credential_data.get("apiKey") or "")
            except (TypeError, ValueError):
                cache_data = None

            if not isinstance(cache_data, dict):
                return {
                    "valid": False,
                    "message": "apiKey does not contain a valid cache file JSON",
                }

            # 必要なフィールドが存在するか確認
            required_fields = ["accessToken", "refreshToken", "idToken"]
            missing_fields = [f for f in required_fields if f not in cache_data]

            if missing_fields:
                return {
                    "valid": False,
                    "message": f"Missing required fields: {', '.join(missing_fields)}",
                }

            # AWS Login Cacheセッションを作成して検証
            region = cache_data.get("region")
            aws_session = create_bedrock_session_from_credential_data(
                credential_data=cache_data,
                region=region,
            )

            # STSで認証情報を検証
            sts = aws_session._session.client("sts")
            identity = sts.get_caller_identity()

            return {
                "valid": True,
                "message": "AWS Login Cache credential is valid",
                "account_id": identity.get("Account"),
                "user_id": identity.get("UserId"),
                "arn": identity.get("Arn"),
            }

        except Exception as e:
            globals.logger.error(f"AWS Login Cache verification failed: {e}", exc_info=True)
            return {
                "valid": False,
                "message": f"AWS Login Cache verification failed: {str(e)}",
            }

    elif credential_type == "openai":
        # OpenAI検証
        return {
            "valid": True,
            "message": "OpenAI verification not implemented yet",
        }

    elif credential_type == "anthropic":
        # Anthropic検証
        return {
            "valid": True,
            "message": "Anthropic validation not implemented yet",
        }

    else:
        return {
            "valid": False,
            "message": f"Validation not supported for service: {credential_type}",
        }


@common.platform_exception_handler
@require_ai_assistant_driver
def list_models(organization_id, credential_type):
    """
    使用可能なモデル一覧を取得

    :param organization_id:
    :type organization_id: str
    :param credential_type:
    :type credential_type: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        # Bedrockのみ対応
        if credential_type not in ["bedrock-cache", "bedrock"]:
            message_id = "400-25010"
            message = multi_lang.get_text(
                message_id, "モデル一覧の取得に対応していないAIサービスです: {0}", credential_type
            )
            raise common.BadRequestException(message_id=message_id, message=message)

        model_service = get_model_service()
        models = model_service.get_bedrock_models(
            organization_id=organization_id,
            user_id=user_id,
            credential_type=credential_type,
        )

        globals.logger.info(
            f"Retrieved {len(models)} models for "
            f"service={credential_type}, org={organization_id}, user={user_id}"
        )

        return common.response_200_ok(
            {
                "models": models,
                "count": len(models),
                "credential_type": credential_type,
            }
        )

    except common.BadRequestException:
        # 未対応のcredential_type(400-25010)を500に潰さずそのまま伝播させる
        # Re-raise the unsupported-credential_type error (400-25010) instead of collapsing it into 500
        raise

    except CredentialNotFound:
        message_id = "404-25005"
        message = multi_lang.get_text(message_id, "Credentialが見つかりません")
        raise common.NotFoundException(message_id=message_id, message=message)

    except Exception as e:
        globals.logger.error(f"Failed to list models: {e}", exc_info=True)
        message_id = "500-25011"
        message = multi_lang.get_text(
            message_id, "モデル一覧取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def get_ai_preference(organization_id, ai_service_id):
    """
    AI利用設定を取得（AIサービスごと）

    :param organization_id:
    :type organization_id: str
    :param ai_service_id:
    :type ai_service_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_ai_preference_service()

        preference = service.get_preference(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=ai_service_id,
        )

        if preference is None:
            # 一度も保存されていない場合は404にせず、空の設定を返す（UIの初回表示をシンプルに扱えるようにする）
            # Return an empty preference instead of 404 when nothing has been saved yet (keeps the UI's first-time view simple)
            return common.response_200_ok(
                {
                    "ai_service_id": ai_service_id,
                    "ai_service_name": _get_ai_service_name(ai_service_id),
                    "model_id": None,
                    "model_name": None,
                    "pickup_model_ids": [],
                }
            )

        return common.response_200_ok(
            {
                "ai_service_id": preference.ai_service_id,
                "ai_service_name": _get_ai_service_name(preference.ai_service_id),
                "model_id": preference.model_id,
                "model_name": preference.model_name,
                "pickup_model_ids": preference.pickup_model_ids,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to get AI preference: {e}", exc_info=True)
        message_id = "500-25012"
        message = multi_lang.get_text(
            message_id, "AI利用設定の取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def update_ai_preference(body, organization_id, ai_service_id):
    """
    AI利用設定を保存（全置換。AIサービスごと）

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str
    :param ai_service_id:
    :type ai_service_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    model_id = body.get("model_id")
    model_name = body.get("model_name")
    pickup_model_ids = body.get("pickup_model_ids", [])

    # バリデーション（PUTは全置換前提のため、model_idは毎回必須）
    # Validation (since PUT is a full replace, model_id is required every time)
    if not model_id:
        message_id = "400-25011"
        message = multi_lang.get_text(message_id, "model_idは必須です")
        raise common.BadRequestException(message_id=message_id, message=message)

    if not isinstance(pickup_model_ids, list):
        message_id = "400-25012"
        message = multi_lang.get_text(
            message_id, "pickup_model_idsはJSON配列である必要があります"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    # 各要素はid(必須)・name(任意)を持つオブジェクトである必要がある(idのみだと表示名がわからず使いにくいため)
    # Each entry must be an object with id (required) and name (optional) (an ID alone lacks a display name and is hard to use)
    if not all(isinstance(item, dict) and item.get("id") for item in pickup_model_ids):
        message_id = "400-25013"
        message = multi_lang.get_text(
            message_id, "pickup_model_idsの各要素はidを含むオブジェクトである必要があります"
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    try:
        service = get_ai_preference_service()

        service.save_preference(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=ai_service_id,
            model_id=model_id,
            model_name=model_name,
            pickup_model_ids=pickup_model_ids,
        )

        globals.logger.debug(
            f"AI preference updated: org={organization_id}, user={user_id}, "
            f"ai_service_id={ai_service_id}, model={model_id}"
        )

        return common.response_200_ok(
            {
                "ai_service_id": ai_service_id,
                "ai_service_name": _get_ai_service_name(ai_service_id),
                "model_id": model_id,
                "model_name": model_name,
                "pickup_model_ids": pickup_model_ids,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to update AI preference: {e}", exc_info=True)
        message_id = "500-25013"
        message = multi_lang.get_text(
            message_id, "AI利用設定の保存に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def get_current_ai_preference(organization_id):
    """
    現在選択中のAIサービスを取得

    :param organization_id:
    :type organization_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    try:
        service = get_current_ai_service_service()

        current = service.get_current(organization_id=organization_id, user_id=user_id)

        if current is None:
            # 一度も保存されていない場合は404にせず、空の設定を返す（他のai-preference系APIと同じ方針）
            # Return an empty preference instead of 404 when nothing has been saved yet (same policy as the other ai-preference APIs)
            return common.response_200_ok(
                {
                    "ai_service_id": None,
                    "ai_service_name": None,
                    "model_id": None,
                    "model_name": None,
                }
            )

        return common.response_200_ok(
            {
                "ai_service_id": current.ai_service_id,
                "ai_service_name": _get_ai_service_name(current.ai_service_id),
                "model_id": current.model_id,
                "model_name": current.model_name,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to get current AI service: {e}", exc_info=True)
        message_id = "500-25014"
        message = multi_lang.get_text(
            message_id, "現在選択中のAIサービスの取得に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)


@common.platform_exception_handler
@require_ai_assistant_driver
def update_current_ai_preference(body, organization_id):
    """
    現在選択中のAIサービスを保存（存在しない場合は新規作成、存在する場合は上書き）

    :param body:
    :type body: dict
    :param organization_id:
    :type organization_id: str

    :rtype: dict
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    body = r.get_json()
    ai_service_id = body.get("ai_service_id")

    if not ai_service_id:
        message_id = "400-25014"
        message = multi_lang.get_text(message_id, "ai_service_idは必須です")
        raise common.BadRequestException(message_id=message_id, message=message)

    if _get_ai_service_name(ai_service_id) is None:
        message_id = "400-25015"
        message = multi_lang.get_text(
            message_id, "ai_service_idの値が不正です: {}", ai_service_id
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    try:
        service = get_current_ai_service_service()

        service.set_current(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=ai_service_id,
        )

        globals.logger.debug(
            f"Current AI service updated: org={organization_id}, user={user_id}, "
            f"ai_service_id={ai_service_id}"
        )

        preference = get_ai_preference_service().get_preference(
            organization_id=organization_id,
            user_id=user_id,
            ai_service_id=ai_service_id,
        )

        return common.response_200_ok(
            {
                "ai_service_id": ai_service_id,
                "ai_service_name": _get_ai_service_name(ai_service_id),
                "model_id": preference.model_id if preference else None,
                "model_name": preference.model_name if preference else None,
            }
        )

    except Exception as e:
        globals.logger.error(f"Failed to update current AI service: {e}", exc_info=True)
        message_id = "500-25015"
        message = multi_lang.get_text(
            message_id, "現在選択中のAIサービスの保存に失敗しました: {}", str(e)
        )
        raise common.InternalErrorException(message_id=message_id, message=message)
