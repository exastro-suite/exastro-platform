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
import json
import inspect

from contextlib import closing

from common_library.common import common, const
from common_library.common.db import DBconnector
from common_library.common import bl_plan_service
from libs import queries_internal_plan

import globals

MSG_FUNCTION_ID = "28"


@common.platform_exception_handler
def internal_organization_limits_get(organization_id, limit_id=None):
    """Returns the current limits value

    Args:
        organization_id (str): organization_id
        limit_id (str, optional): filter limit id. (prefix match). Defaults to None.

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # check organization
    DBconnector().get_organization_private(organization_id)

    # plan and plan_limit list get
    data = bl_plan_service.organization_limits_get(organization_id, limit_id)

    return common.response_200_ok(data)


@common.platform_exception_handler
def limits_get(limit_id=None):
    """Returns the current limits value(all organization)

    Args:
        limit_id (str, optional): filter limit id. (prefix match). Defaults to None.

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # plan and plan_limit list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            cursor.execute(queries_internal_plan.SQL_QUERY_ALL_ORGANIZATION_PLAN_ID)
            org_plans = cursor.fetchall()

            # Get all plan_ids
            plan_ids = list(set([r["PLAN_ID"] if r["PLAN_ID"] is not None else const.DEFAULT_PLAN_ID for r in org_plans]) | {const.DEFAULT_PLAN_ID})

            # Get all limits
            limits = {}

            pln_param = {}
            pln_where = " WHERE plan_id = %(plan_id)s"

            lmt_param = {}
            lmt_where = " WHERE plan_id = %(plan_id)s"
            if limit_id is not None:
                lmt_param["limit_id"] = limit_id
                lmt_where = lmt_where + " AND limit_id LIKE CONCAT(%(limit_id)s,'%%')"

            for plan_id in plan_ids:
                pln_param["plan_id"] = plan_id
                lmt_param["plan_id"] = plan_id

                # check exists plan
                cursor.execute(queries_internal_plan.SQL_QUERY_PLANS + pln_where, pln_param)
                plan = cursor.fetchall()
                if len(plan) == 0:
                    continue

                # get limit value
                cursor.execute(queries_internal_plan.SQL_QUERY_PLAN_LIMITS + lmt_where, lmt_param)
                plan_limits = cursor.fetchall()

                limits[plan_id] = {plan_limit["LIMIT_ID"]: plan_limit["LIMIT_VALUE"] for plan_limit in plan_limits}

    # make response data
    data = [{
            "organization_id": org_plan["ORGANIZATION_ID"],
            "limits": limits[org_plan["PLAN_ID"] if org_plan["PLAN_ID"] is not None and org_plan["PLAN_ID"] in limits else const.DEFAULT_PLAN_ID]
            } for org_plan in org_plans]

    return common.response_200_ok(data)


@common.platform_exception_handler
def plan_item_create(body):  # noqa: E501
    """Create a plan items

    Args:
        body (dict): Request body

    Returns:
        response: HTTP Response
    """

    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_plan_item_get(limit_id):  # noqa: E501
    """Returns of plan item

    Args:
        limit_id (str): limit_id

    Returns:
        response: HTTP Response
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_plan_item_update(body, limit_id):  # noqa: E501
    """Update a plan item

    Args:
        body (dict): Request body
        limit_id (str): limit_id

    Returns:
        response: HTTP Response
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_plan_item_delete(limit_id):  # noqa: E501
    """Delete a plan item

    Args:
        limit_id (str): limit_id

    Returns:
        response: HTTP Response
    """
    return common.response_200_ok(None)
