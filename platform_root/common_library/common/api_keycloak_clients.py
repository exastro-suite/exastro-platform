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
import json
import requests

# User Imports
import globals  # 共通的なglobals Common globals


def client_create(realm_name, client_json, token):
    """クライアント作成 client create

    Args:
        realm_name (str): realm name
        client_json (disct): client create parameter
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Post keycloak clients. client_id={}'.format(client_json.get("clientId")))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(f"{api_url}/auth/admin/realms/{realm_name}/clients",
                                     headers=header_para,
                                     json=client_json,
                                     )

    return request_response


def clients_get(realm_name, client_id, token):
    """クライアント情報取得 client info get

    Args:
        realm_name (str): realm name
        client_id (str): client id
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak client role. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # client_idが指定されている場合は、querystringで条件を設定
    # If client_id is specified, set the condition with querystring
    if client_id:
        query_para = {
            "clientId": client_id,
        }
    else:
        query_para = None

    globals.logger.debug("client get send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients",
                                    headers=header_para,
                                    params=query_para,
                                    )

    # globals.logger.debug(request_response.text)

    return request_response


def client_secret_create(realm_name, client_id, token):
    """クライアントシークレット作成 client secret create

    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Post keycloak clients secret. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/client-secret",
                                     headers=header_para,
                                     )

    return request_response


def client_secret_get(realm_name, client_id, token):
    """クライアントシークレット取得 client secret get

    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak clients secret. client_id={}'.format(client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/client-secret",
                                    headers=header_para,
                                    )

    return request_response


def client_role_get(realm_name, client_id, role_name, token):
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
        "{}/auth/admin/realms/{}/clients/{}/roles/{}".format(api_url, realm_name, client_id, role_name),
        headers=header_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def client_role_create(realm_name, client_uid, role_name, token, description="", kind=""):
    """クライアントロール作成 user client role create

    Args:
        realm_name (str): realm name
        client_uid (str): client id
        role_name (str): role name
        toekn (str): token
        description (str): role description
        kind (str): role kind

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

    if description:
        data_para["description"] = description
    if kind:
        data_para["attributes"] = {"kind": [kind, ], }

    globals.logger.debug("client role post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        "{}/auth/admin/realms/{}/clients/{}/roles".format(api_url, realm_name, client_uid),
        headers=header_para,
        data=json.dumps(data_para)
    )

    # globals.logger.debug(request_response.text)

    return request_response


def client_role_composites_get(realm_name, client_uid, role_name, token):
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
        "{}/auth/admin/realms/{}/clients/{}/roles/{}/composites".format(api_url, realm_name, client_uid, role_name),
        headers=header_para
    )

    # globals.logger.debug(request_response.text)

    return request_response


def client_role_composites_create(realm_name, client_uid, role_name, add_roles, token):
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
        "{}/auth/admin/realms/{}/clients/{}/roles/{}/composites".format(api_url, realm_name, client_uid, role_name),
        headers=header_para,
        data=json.dumps(data_para),
    )

    # globals.logger.debug(request_response.text)

    return request_response
