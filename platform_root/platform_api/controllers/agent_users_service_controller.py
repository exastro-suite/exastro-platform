#   Copyright 2025 NEC Corporation
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

import inspect
import globals
import json

from common_library.common import common, multi_lang, validation
from common_library.common import api_keycloak_tokens, api_keycloak_users, api_keycloak_roles
from common_library.common.db import DBconnector

from common_library.common import bl_agent_user


@common.platform_exception_handler
def agent_user_create(body, organization_id, workspace_id):  # noqa: E501
    """Create an agent user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # request parameter
    req_username = body.get("username")
    req_agent_user_type = body.get("agent_user_type")
    req_description = body.get("description")

    # validation check
    validate = validation.validate_user_name(req_username)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    validate = validation.validate_agent_user_type(req_agent_user_type)
    if not validate.ok:
        return common.response_status(validate.status_code, None, validate.message_id, validate.base_message, *validate.args)

    validate = validation.validate_user_description(req_description)
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

    # create user
    user_json = bl_agent_user.agent_user_create_parameter(req_username, req_agent_user_type, req_description)

    resp_user_create = api_keycloak_users.user_create(
        realm_name=organization_id, user_json=user_json, token=token
    )
    if resp_user_create.status_code == 409:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "409-25001"
        message = multi_lang.get_text(
            message_id,
            "指定されたユーザーはすでに存在しているため作成できません。[{0}]",
            json.loads(resp_user_create.text)["errorMessage"])

        raise common.BadRequestException(message_id=message_id, message=message)

    elif resp_user_create.status_code == 400:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "400-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました({0})",
            common.get_response_error_message(resp_user_create.text))
        raise common.BadRequestException(message_id=message_id, message=message)

    elif resp_user_create.status_code != 201:
        globals.logger.debug(f"response:{resp_user_create.text}")
        message_id = "500-25002"
        message = multi_lang.get_text(
            message_id,
            "ユーザー作成に失敗しました(対象ユーザー:{0})",
            req_username)

        raise common.InternalErrorException(message_id=message_id, message=message)

    # get created user
    resp_get_user = api_keycloak_users.user_get(
        realm_name=organization_id, user_name=req_username, token=token
    )
    if resp_get_user.status_code != 200:
        globals.logger.error(f"response.status_code:{resp_get_user.status_code}")
        globals.logger.error(f"response.text:{resp_get_user.text}")
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            req_username
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    user_info = json.loads(resp_get_user.text)
    if len(user_info) == 0:
        message_id = "500-25001"
        message = multi_lang.get_text(
            message_id,
            "ユーザーの取得に失敗しました(対象ID:{0})",
            req_username
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    # get role
    role_name = bl_agent_user.agent_user_role_name(workspace_id, req_agent_user_type)
    
    resp_get_role = api_keycloak_roles.clients_role_get(
        realm_name=organization_id, client_id=private.user_token_client_id, role_name=role_name, token=token,
    )
    if resp_get_role.status_code != 200:
        globals.logger.debug(f"response:{resp_get_role.text}")
        message_id = "500-24001"
        raise common.InternalErrorException(
            None, message_id, multi_lang.get_text(message_id, "ワークスペースロールの取得に失敗しました(対象ID:{0})", role_name)
        )

    client_role = json.loads(resp_get_role.text)

    # create role mapping
    resp_get_user = api_keycloak_roles.user_client_role_mapping_create(
        realm_name=organization_id, user_id=user_info[0].get("id"), client_id=private.user_token_client_id,
        client_roles=[client_role], token=token
    )
    if resp_get_user.status_code not in [200, 204]:
        globals.logger.error(f"response.status_code:{resp_get_user.status_code}")
        globals.logger.error(f"response.text:{resp_get_user.text}")
        message_id = "500-26002"
        message = multi_lang.get_text(
            message_id,
            "ロール設定に失敗しました(対象ID:{0} client:{1} username:{2})",
            organization_id,
            private.user_token_client_clientid,
            req_username
        )
        raise common.InternalErrorException(message_id=message_id, message=message)

    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete an agent user

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_list(organization_id, workspace_id):  # noqa: E501
    """List returns list of agent users

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_token_create(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Create an agent user token

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_token_delete(organization_id, workspace_id, user_id):  # noqa: E501
    """Delete agent user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_token_list(organization_id, workspace_id, user_id):  # noqa: E501
    """List returns list of agent user tokens

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def agent_user_update(body, organization_id, workspace_id, user_id):  # noqa: E501
    """Update an agent user

    Args:
        body (dict): Request body(json)
        organization_id (str): organization id
        workspace_id (str): workspace id
        user_id (str): user id

    Returns:
        Response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)


@common.platform_exception_handler
def get_agent_user(organization_id, workspace_id, user_id):  # noqa: E501
    """returns an agent user

    Args:
        organization_id (_type_): _description_
        workspace_id (_type_): _description_
        user_id (_type_): _description_

    Returns:
        Response: HTTP Response
    """
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")
    return common.response_200_ok(None)
