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

# User Imports
import globals  # 共通的なglobals Common globals


def realm_create(realm_json, token):
    """realm作成

    Args:
        realm_name (str): realm name
        realm_opt (dict): パラメータのオプション値(json)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user role. realm_name={}'.format(realm_json["id"]))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = realm_json

    globals.logger.debug("realms post send")
    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.post("{}/auth/admin/realms".format(api_url), headers=header_para, json=data_para)

    globals.logger.debug(request_response.text)

    # 応答をそのまま返却
    # return response as is
    return request_response
