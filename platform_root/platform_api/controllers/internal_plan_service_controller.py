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

from common_library.common import common, const as common_const
from common_library.common import api_keycloak_tokens, api_keycloak_roles
from common_library.common.db import DBconnector
#from libs import queries_internal_users

MSG_FUNCTION_ID = "XX"

@common.platform_exception_handler
def limits_get(limit_id=None):  # noqa: E501
    """Returns the current limits value

     # noqa: E501

    :param limit_id: filter limit id. (prefix match)
    :type limit_id: str

    :rtype: InlineResponse20011
    """
    return 'do some magic!'
