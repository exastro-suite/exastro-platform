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

from common_library.common import common, api_keycloak_tokens, api_keycloak_users
from common_library.common import validation
from common_library.common import multi_lang
from common_library.common.db import DBconnector
import common_library.common.const as common_const
from common_library.common import bl_plan_service
from common_library.common import resources

import globals

MSG_FUNCTION_ID = "25"


@common.platform_exception_handler
def user_list(organization_id, first=0, max=100, search=None):
    """List returns list of roles

    Args:
        organization_id (str): organization id

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
        InlineResponse2001: _description_
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
            message_id='400-000002', message='リクエストボディのパラメータ({})が不正です。'.format('Json')
        )

    user_name = body.get("username")
    user_email = body.get("email")
    user_firstName = body.get("firstName")
    user_lastName = body.get("lastName")
    password_temporary = body.get("password_temporary", "True")
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
    validate = validation.validate_password_temporary(password_temporary)
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
            "指定されたユーザーはすでに存在しているため作成できません。")

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
            common.get_response_error_message(u_create.text))

        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)
