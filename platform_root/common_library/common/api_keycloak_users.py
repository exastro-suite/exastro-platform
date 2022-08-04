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


def user_role_get(realm_name, user_id, client_id, token):
    """ユーザロール情報取得 user role info get
    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        token (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """

    globals.logger.info('Get keycloak user role. realm_name={}, user_id={}, client_id={}'.format(realm_name, user_id, client_id))

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user role get送信")
    # 呼び出し先設定 call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.get(
        "{}/auth/admin/realms/{}/users/{}/role-mappings/clients/{}/composite".format(api_url, realm_name, user_id, client_id),
        headers=header_para
    )
    globals.logger.debug(request_response.text)

    return request_response


def role_uesrs_get(realm_name, client_id, role_name, token):
    """ロール毎のユーザ情報リスト取得 get user info list for each role
    Args:
        realm_name (str): realm name
        client_id (str): client id
        role_name (str): role name
        token (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200 / notfound : .status_code=404)
    """
    globals.logger.info(
        'Get keycloak user list for each role. realm_name={}, client_id={}, role_name={}'.format(realm_name, client_id, role_name)
    )

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("role users get送信")
    # 呼び出し先設定 call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
    request_response = requests.get(
        "{}/auth/admin/realms/{}/clients/{}/roles/{}/users".format(api_url, realm_name, client_id, role_name),
        headers=header_para
    )
    globals.logger.debug(request_response.text)

    return request_response


def user_client_role_mapping_create(realm_name, user_id, client_id, client_roles, token):
    """ユーザークライアントロールマッピング作成 user client role-mapping create

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        client_roles (array): client roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=204)
    """
    globals.logger.info(
        'Create keycloak user client role-mapping. user_id={}, client_id={}, client_roles={}'.format(user_id, client_id, client_roles)
    )

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = client_roles

    globals.logger.debug("user client role-mapping post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        "{}/auth/admin/realms/{}/users/{}/role-mappings/clients/{}".format(api_url, realm_name, user_id, client_id),
        headers=header_para,
        data=json.dumps(data_para)
    )

    globals.logger.debug(request_response.text)

    return request_response


def user_client_role_mapping_delete(realm_name, user_id, client_id, client_roles, token):
    """ユーザークライアントロールマッピング削除 user client role-mapping delete

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        client_roles (array): client roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose (success : .status_code=204)
    """
    globals.logger.info(
        'Delete keycloak user client role-mapping. user_id={}, client_id={}, client_roles={}'.format(user_id, client_id, client_roles)
    )

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = client_roles

    globals.logger.debug("user client role-mapping delete send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.delete(
        "{}/auth/admin/realms/{}/users/{}/role-mappings/clients/{}".format(api_url, realm_name, user_id, client_id),
        headers=header_para,
        data=json.dumps(data_para)
    )

    globals.logger.debug(request_response.text)

    return request_response


def user_get(realm_name, user_name, token):
    """ユーザ情報取得
    Args:
        realm_name (str): realm name
        user_name (str): user name (Noneの時はすべて取得 None is all user)
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user. realm_name={}, user_name={}'.format(realm_name, user_name))

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user get")
    # ユーザ情報取得
    # User information acquisition
    if user_name is None:
        request_response = requests.get("{}/auth/admin/realms/{}/users".format(api_url, realm_name), headers=header_para)
    else:
        request_response = requests.get("{}/auth/admin/realms/{}/users?search={}".format(api_url, realm_name, user_name), headers=header_para)
    globals.logger.debug(request_response.text)

    return request_response


def user_get_by_id(realm_name, user_id, token):
    """ユーザ情報取得(user id指定) User information acquisition (user id specified)
    Args:
        realm_name (str): realm name
        user_id (str): user id
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user. realm_name={}, user_id={}'.format(realm_name, user_id))

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user get by id")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.get("{}/auth/admin/realms/{}/users/{}".format(api_url, realm_name, user_id), headers=header_para)

    return request_response


def get_user_role_mapping(realm_name, user_id, token):
    """ユーザーロールマッピング情報取得
        Get user role mapping information
    Args:
        realm_name (str): realm name
        user_id (str): user id
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user role-mapping. realm_name={}, user_id={}'.format(realm_name, user_id))

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("get user role-mapping")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.get("{}/auth/admin/realms/{}/users/{}/role-mappings".format(api_url, realm_name, user_id), headers=header_para)

    return request_response


def user_reset_password(realm_name, user_id, user_password, token):
    """ユーザパスワード変更 Change user password
    Args:
        realm_name (str): realm name
        user_id (str): user id
        user_password (str): user new password
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=204)
    """
    globals.logger.info('Reset user password. realm_name:{}, user_id:{}'.format(realm_name, user_id))

    # 呼び出し先設定
    # Call destination setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    data_para = {
        "type": "password",
        "value": user_password,
        "temporary": False,
    }

    # ユーザパスワード更新
    # User password update
    request_response = requests.put(
        "{}/auth/admin/realms/{}/users/{}/reset-password".format(api_url, realm_name, user_id),
        headers=header_para,
        data=json.dumps(data_para)
    )
    globals.logger.debug(request_response.text)

    return request_response
