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
import json
import inspect

from common_library.common import common

import globals

MSG_FUNCTION_ID = "21"


@common.platform_exception_handler
def user_list(organization_id):
    """List returns list of roles

    Args:
        organization_id (str): organization id

    Returns:
        InlineResponse2004: _description_
    """

    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    return 'do some magic!'
