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

# import inspect
import os
import requests

from common_library.common import common

# User Imports
import globals  # 共通的なglobals Common globals


def health():
    """Get Keycloak health

    Returns:
        Response: api call response
    """
    globals.logger.debug('Get keycloak health')

    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(f"{api_url}/auth/health")

    return request_response


def serverinfo(token):
    """Get Keycloak Server info

    Args:
        token (str): access token

    Returns:
        Response: api call response
    """
    globals.logger.info('Get keycloak serverinfo')

    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    request_response = requests.get(f"{api_url}/auth/admin/serverinfo", headers=header_para)

    return request_response
