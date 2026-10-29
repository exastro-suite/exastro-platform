#   Copyright 2026 NEC Corporation
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
import globals

from common_library.common import common, bl_notification_service

MSG_FUNCTION_ID = "39"


@common.platform_exception_handler
def notification_job_get(organization_id, workspace_id, notification_id):
    """Get notification job by ID

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        notification_id (str): notification_id

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_notification_service.notification_job_get(
        organization_id, workspace_id, notification_id
    )

    return common.response_200_ok(data)


@common.platform_exception_handler
def notification_job_list(organization_id, workspace_id, page_size=100,
                         current_page=1, notification_status=None,
                         func_id=None, destination_id=None,
                         from_date=None, to_date=None):
    """Get notification job list

    Args:
        organization_id (str): organization_id
        workspace_id (str): workspace_id
        page_size (int): records per page (default: 100)
        current_page (int): current page number (default: 1)
        notification_status (str): filter by notification status
        func_id (str): filter by function ID
        destination_id (str): filter by destination ID
        from_date (str): filter by date range (from)
        to_date (str): filter by date range (to)

    Returns:
        Response: http response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = bl_notification_service.notification_job_list(
        organization_id, workspace_id, page_size, current_page,
        notification_status, func_id, destination_id,
        from_date, to_date
    )

    return common.response_200_ok(data)
