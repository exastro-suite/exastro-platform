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

# import connexion
import json
import inspect

from common_library.common import common, api_keycloak_tokens, api_keycloak_users
from common_library.common import multi_lang
from common_library.common.db import DBconnector

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
            "preferred_username": user.get("username", ""),
            "name": common.get_username(user.get("firstName"), user.get("lastName"), user.get("username")),
            "enabled": user.get("enabled", False),
            "create_timestamp": common.keycloak_timestamp_to_str(user.get("createdTimestamp")),
        }
        data.append(ret_user)

    globals.logger.debug(f"data:{data}")

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(data)


def user_create(body, organization_id):  # noqa: E501
    """Create creates user
    
    Args:
        body (dict | bytes): _description_
        organization_id (str): _description_. Defaults to None.

    Returns:
        InlineResponse2001: _description_
    """

    return common.response_200_ok(None)