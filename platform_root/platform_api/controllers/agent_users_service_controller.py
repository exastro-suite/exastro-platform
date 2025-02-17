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
import connexion
import ulid
import globals
import json

from common_library.common import common, multi_lang, const, validation, bl_common_service


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


    """Update an agent user

     # noqa: E501

    :param body: 
    :type body: dict | bytes
    :param organization_id: 
    :type organization_id: str
    :param workspace_id: 
    :type workspace_id: str
    :param user_id: 
    :type user_id: 

    :rtype: InlineResponse2002
    """

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
