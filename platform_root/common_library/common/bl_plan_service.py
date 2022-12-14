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

from contextlib import closing
import json
import inspect
import pymysql
from datetime import datetime

from common_library.common import common, validation, const
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_plan


def organization_limits_get(organization_id, limit_id=None):
    """Returns the current limits value

    Args:
        organization_id (str): organization_id
        limit_id (str, optional): filter limit id. (prefix match). Defaults to None.

    Returns:
        list: limit values
    """
    # plan and plan_limit list get
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:

            parameter = {
                "organization_id": organization_id,
            }
            where = " WHERE organization_id = %(organization_id)s" \
                    " AND start_timestamp <= CURRENT_TIMESTAMP()" \
                    " ORDER BY start_timestamp DESC" \
                    " LIMIT 1"
            cursor.execute(queries_bl_plan.SQL_QUERY_ORGANIZATION_PLAN + where, parameter)
            org_plans = cursor.fetchall()

            if len(org_plans) >= 1:
                plan_id = org_plans[0]["PLAN_ID"]
            else:
                plan_id = const.DEFAULT_PLAN_ID

            parameter = {
                "plan_id": plan_id,
            }
            where = " WHERE plan_id = %(plan_id)s"
            if limit_id is not None:
                parameter["limit_id"] = limit_id
                where = where + " AND limit_id LIKE CONCAT(%(limit_id)s,'%%')"

            cursor.execute(queries_bl_plan.SQL_QUERY_PLAN_LIMITS + where, parameter)
            result_plan_limits = cursor.fetchall()

    data = {}
    for plan_limit in result_plan_limits:
        data[plan_limit["LIMIT_ID"]] = plan_limit["LIMIT_VALUE"]

    return data
