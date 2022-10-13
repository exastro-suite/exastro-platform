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


def clients_role_get(realm_name, client_id, role_name, token):
    """クライアントロール情報取得 client role info get

    Args:
        realm_name (str): realm name
        client_id (str): client id
        role_name (str): role name
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak client role. client_id={}, role_name={}'.format(client_id, role_name))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("client role get send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/roles/{role_name}",
        headers=header_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def clients_role_create(realm_name, client_uid, role_name, token, role_options=None):
    """クライアントロール作成 user client role create

    Args:
        realm_name (str): realm name
        client_uid (str): client id
        role_name (str): role name
        toekn (str): token
        description (str): role description
        role_options (json): role options

    Returns:
        Response: HTTP Respose (success : .status_code=204)
    """
    globals.logger.info(
        'Create keycloak client role. client_uid={}, role_name={}'.format(client_uid, role_name)
    )

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = {
        "name": role_name,
    }

    if role_options:
        data_para.update(role_options)

    globals.logger.debug("client role post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        "{}/auth/admin/realms/{}/clients/{}/roles".format(api_url, realm_name, client_uid),
        headers=header_para,
        json=data_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def clients_role_update(realm_name, client_uid, role_name, token, role_options=None):
    """client ロール取得 client roles get
    Args:
        realm_name (str): realm name
        client_uid (str): client id (not client-id)
        role_name (str): role name
        toekn (str): token
        role_options (json): role options
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(
        'Update keycloak client role. client_uid={}, role_name={}'.format(client_uid, role_name)
    )

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = {
        "name": role_name,
    }

    if role_options:
        data_para.update(role_options)

    globals.logger.debug("client role post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.put(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uid}/roles/{role_name}",
        headers=header_para,
        json=data_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def clients_role_composites_get(realm_name, client_uid, role_name, token):
    """クライアントロール情報取得 client role info get

    Args:
        realm_name (str): realm name
        client_uid (str): client uid
        role_name (str): role name
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak client role composites. client_uid={}, role_name={}'.format(client_uid, role_name))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("client role composite get send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uid}/roles/{role_name}/composites",
        headers=header_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def clients_role_composites_create(realm_name, client_uid, role_name, add_roles, token):
    """クライアントロール情報作成 client role composites info create

    Args:
        realm_name (str): realm name
        client_uid (str): client uid
        role_name (str): role name
        add_roles (array): client roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Create keycloak client role composites. client_uid={}, role_name={}'.format(client_uid, role_name))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = [] + add_roles

    globals.logger.debug("client role composite post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uid}/roles/{role_name}/composites",
        headers=header_para,
        json=data_para,
    )

    # globals.logger.debug(request_response.text)

    return request_response


def clients_role_composites_delete(realm_name, client_uid, role_name, del_roles, token):
    """クライアントロール子ロール情報削除 client role composites info delete

    Args:
        realm_name (str): realm name
        client_uid (str): client uid
        role_name (str): role name
        del_roles (array): delete composite roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Delete keycloak client role composites. client_uid={}, role_name={}'.format(client_uid, role_name))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = [] + del_roles

    globals.logger.debug("client role composite delete send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.delete(
        f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_uid}/roles/{role_name}/composites",
        headers=header_para,
        json=data_para,
    )

    # globals.logger.debug(request_response.text)

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
