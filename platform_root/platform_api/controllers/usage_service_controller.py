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
from contextlib import closing
import inspect
import globals

from common_library.common import common
from common_library.common import resources
from common_library.common import const as common_const
from common_library.common.db import DBconnector
from libs import queries_organizations

MSG_FUNCTION_ID = "29"


@common.platform_exception_handler
def organization_usage_get(organization_id, id=None):
    """Returns the current value of resource

    Args:
        organization_id (_type_): _description_
        limit_id (_type_, optional): _description_. Defaults to None.

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # check organization
    DBconnector().get_organization_private(organization_id)

    if id:
        ids = [i for i in common_const.ALL_RESOURCE_COUNT if i.startswith(id)]
    else:
        ids = common_const.ALL_RESOURCE_COUNT

    data = []

    rc = resources.counter(organization_id)
    for resource_id in ids:
        usage = {
            "id": resource_id,
            "current_value": rc(resource_id),
        }
        data.append(usage)

    return common.response_200_ok(data)


@common.platform_exception_handler
def usage_list(organization_id=None, id=None):
    """List returns list of current value of resource

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    if organization_id:
        organization_ids = [organization_id,]
    else:
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:

                # DB取得
                # select organization
                cursor.execute(queries_organizations.SQL_QUERY_ORGANIZATIONS)
                result = cursor.fetchall()

        organization_ids = []
        for row in result:
            organization_ids.append(row["ORGANIZATION_ID"])

    if id:
        ids = [i for i in common_const.ALL_RESOURCE_COUNT if i.startswith(id)]
    else:
        ids = common_const.ALL_RESOURCE_COUNT

    data = []

    for org_id in organization_ids:
        org_data = {
            "organization_id": org_id,
            "usages": [],
        }

        rc = resources.counter(org_id)
        for resource_id in ids:
            usage = {
                "id": resource_id,
                "current_value": rc(resource_id),
            }
            org_data["usages"].append(usage)

        data.append(org_data)

    return common.response_200_ok(data)
