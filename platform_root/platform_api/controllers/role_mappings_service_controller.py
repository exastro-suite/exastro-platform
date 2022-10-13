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

from common_library.common import common, api_keycloak_tokens, api_keycloak_roles
from common_library.common import validation, check_authority
from common_library.common.db import DBconnector
from common_library.common import multi_lang
import common_library.common.const as common_const

import globals

MSG_FUNCTION_ID = "26"


@common.platform_exception_handler
def role_user_mapping_create(body, organization_id, role_name):  # noqa: E501
    """Add roles to the user role mapping

     # noqa: E501

    :param body:
    :type body: list | bytes
    :param organization_id:
    :type organization_id: str
    :param role_name:
    :type role_name: str

    :rtype: InlineResponse2001
    """
    if connexion.request.is_json:
        # body = [User.from_dict(d) for d in connexion.request.get_json()]  # noqa: E501
        pass
    return 'do some magic!'


@common.platform_exception_handler
def role_user_mapping_delete(body, organization_id, role_name):  # noqa: E501
    """Delete roles from user role mapping

     # noqa: E501

    :param body:
    :type body: list | bytes
    :param organization_id:
    :type organization_id: str
    :param role_name:
    :type role_name: str

    :rtype: InlineResponse2001
    """
    if connexion.request.is_json:
        # body = [User.from_dict(d) for d in connexion.request.get_json()]  # noqa: E501
        pass
    return 'do some magic!'
