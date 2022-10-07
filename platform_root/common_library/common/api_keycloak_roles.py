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


def clients_roles_get(realm_name, client_id, token, briefRepresentation=True):
    """client ロール取得 client roles get
    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token
        briefRepresentation (bool): True:brief   False:All
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f'Get keycloak composite-roles. realm_name={realm_name}, client_id={client_id}')

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 今後の追加も考慮して作成
    # Created with future additions in mind
    add_query = ""
    if not briefRepresentation:
        if add_query:
            add_query += "&"
        else:
            add_query += "?"
        add_query += f"briefRepresentation={briefRepresentation}"

    globals.logger.debug("client roles get")
    # 情報取得
    # information acquisition
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/roles{add_query}", headers=header_para)

    return request_response


def clients_composite_roles_get(realm_name, client_id, role_name, token):
    """client 子ロール取得 client composite roles get
    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        role_name (str): role name
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f'Get keycloak composite-roles. realm_name={realm_name}, client_id={client_id}, role_name={role_name}')

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("composite-roles get")
    # 情報取得
    # information acquisition
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/roles/{role_name}/composites", headers=header_para)

    return request_response


def realm_role_get(realm_name, role_name, token):
    """realmロール情報取得 realm role info get

    Args:
        realm_name (str): realm name
        role_name (str): role name
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f'Get keycloak realm role. realm_name={realm_name}, role_name={role_name}')

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("realm role get send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(
        "{}/auth/admin/realms/{}/roles/{}".format(api_url, realm_name, role_name),
        headers=header_para
    )

    # globals.logger.debug(request_response.text)

    return request_response
