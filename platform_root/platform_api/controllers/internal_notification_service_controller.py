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

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

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

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    globals.logger.debug(f"event_type_true:{event_type_true} --- event_type_false:{event_type_false}")

    data = bl_notification_service.settings_notification_list(organization_id, workspace_id, event_type_true, event_type_false)

    return common.response_200_ok(data)

