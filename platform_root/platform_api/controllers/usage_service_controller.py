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
import inspect
import globals

from common_library.common import common

MSG_FUNCTION_ID = "29"


def organization_usage_get(organization_id, id=None):
    """Returns the current value of resource

    Args:
        organization_id (_type_): _description_
        limit_id (_type_, optional): _description_. Defaults to None.

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = []
    return common.response_200_ok(data)


def usage_list(organization_id=None, id=None):
    """List returns list of current value of resource

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = []
    return common.response_200_ok(data)
