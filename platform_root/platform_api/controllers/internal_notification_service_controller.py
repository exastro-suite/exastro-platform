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
import inspect

from common_library.common import common
from common_library.common import bl_notification_service


import globals

MSG_FUNCTION_ID = "34"


@common.platform_exception_handler
def internal_settings_destination_get(organization_id, workspace_id, destination_id):  # noqa: E501
    """List returns list of settings notifications

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        destination_id (str): destination_id

    Returns:
        Response: http response
    """

    # internal-apiのget methodの呼び出しログはDEBUGとする
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_notification_service.settings_destination_get(organization_id, workspace_id, destination_id)

    return common.response_200_ok(data)


@common.platform_exception_handler
def internal_settings_notification_list(organization_id, workspace_id, event_type_true=None, event_type_false=None):  # noqa: E501
    """List returns list of settings notifications

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        event_type_true (str): event_type true item_name (delimit |(pipe))
        event_type_false (str): event_type false item_name (delimit |(pipe))

    Returns:
        Response: http response
    """

    # internal-apiのget methodの呼び出しログはDEBUGとする
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    globals.logger.debug(f"event_type_true:{event_type_true} --- event_type_false:{event_type_false}")

    data = bl_notification_service.settings_notification_list(organization_id, workspace_id, event_type_true, event_type_false)

    return common.response_200_ok(data)


@common.platform_exception_handler
def internal_notification_register(body, organization_id, workspace_id):  # noqa: E501
    """Register for message notifications

    Args:
        body (dict): json
        organization_id (str): organization_id
        workspace_id (str): workspace_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # body = connexion.request.get_json()
    user_id = connexion.request.headers.get("User-id")

    # validation check
    validate = bl_notification_service.validate_notification_register(body)
    if not validate.ok:
        return common.response_validation_error(validate)

    # register
    bl_notification_service.notification_register(body, organization_id, workspace_id, user_id)

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def internal_notification_list(organization_id, workspace_id, page_size=None, current_page=None, details_info=None, func_id=None, match=None, like_before=None, like_after=None, like_all=None):  # noqa: E501
    """Returns a list of message notifications

    Args:
        :param organization_id:
        :type organization_id: str
        :param workspace_id:
        :type workspace_id: str
        :param page_size: Maximum number of return values ​​at one time (default: 100)
        :type page_size: float
        :param current_page: Current display page (default: 1)
        :type current_page: float
        :param details_info: With message output
        :type details_info: bool
        :param func_id: Filter by function ID
        :type func_id: str
        :param match: Specify exact match condition
        :type match: str
        :param like_before: Specifying conditions for beginning match
        :type like_before: str
        :param like_after: Specifying conditions for suffix match
        :type like_after: str
        :param like_all: Specifying conditions for fuzzy search
        :type like_all: str

    Returns:
        Response: http response
    """

    # internal-apiのget methodの呼び出しログはDEBUGとする
    globals.logger.debug(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_notification_service.notification_list(organization_id, workspace_id, page_size, current_page, details_info, func_id, match, like_before, like_after, like_all)

    return common.response_200_ok(data)
