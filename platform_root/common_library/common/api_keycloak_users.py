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
import urllib
import inspect

# User Imports
import globals  # 共通的なglobals Common globals


def __get_keycloak_api_url():
    return "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])


def user_create(realm_name, user_json, token):
    """ユーザー作成 user create
    Args:
        realm_name (str): realm name
        user_json (dict): user create json
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Create keycloak user. realm_name={}, user_name={}'.format(realm_name, user_json["username"]))

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user post")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.post(f"{api_url}/auth/admin/realms/{realm_name}/users", headers=header_para, json=user_json)

    return request_response


def user_get(realm_name, user_name, token, first=0, max=100, search=None):
    """ユーザ情報取得
    Args:
        realm_name (str): realm name
        user_name (str): user name (Noneの時はすべて取得 None is all user)
        toekn (str): token
        first (int): start data position index
        max (int): max get count
        search (str): search user keyword (Noneの時はすべて取得 None is specifies no criteria)
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user. realm_name={}, user_name={}'.format(realm_name, user_name))

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    if user_name is not None:
        query_params = f'?username={urllib.parse.quote(user_name)}&exact=true'
    elif search is not None:
        query_params = f'?search={urllib.parse.quote(search)}&first={first}&max={max}'
    else:
        query_params = f"?first={first}&max={max}"

    globals.logger.debug("user get")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/users{query_params}", headers=header_para)

    return request_response


def user_count_get(realm_name, token, user_name=None, search=None):
    """ユーザー数取得 users count
    Args:
        realm_name (str): realm name
        toekn (str): token
        user_name (str): user name (Noneの時はすべて取得 None is specifies no criteria)
        search (str): search (Noneの時はすべて取得 None is specifies no criteria)
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak users count. realm_name={}, user_name={}, search={}'.format(realm_name, user_name, search))

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    if user_name is not None:
        query_params = f'?username={urllib.parse.quote(user_name)}'
    elif search is not None:
        query_params = f'?search={urllib.parse.quote(search)}'
    else:
        query_params = ""

    globals.logger.debug("users count get")
    # ユーザー数取得
    # users count acquisition
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/users/count{query_params}", headers=header_para)

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
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user get by id")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.get("{}/auth/admin/realms/{}/users/{}".format(api_url, realm_name, user_id), headers=header_para)

    return request_response


def user_update(realm_name, user_id, user_json, token):
    """ユーザー更新 user update
    Args:
        realm_name (str): realm name
        user_id (str): user id
        user_json (dict): user create json
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Update keycloak user. realm_name={}, user_id={}'.format(realm_name, user_id))

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user put")
    # ユーザ情報取得
    # User information acquisition
    request_response = requests.put(f"{api_url}/auth/admin/realms/{realm_name}/users/{user_id}", headers=header_para, json=user_json)

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
    api_url = __get_keycloak_api_url()

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
    # globals.logger.debug(request_response.text)

    return request_response


def service_account_user_get(realm_name, client_id, token):
    """ユーザ情報取得
    Args:
        realm_name (str): realm name
        client_id (str): client id (not client-id)
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info('Get keycloak user. realm_name={}, client_id={}'.format(realm_name, client_id))

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("service account user get")
    # サービスアカウントユーザー情報取得
    # get service account user
    request_response = requests.get(f"{api_url}/auth/admin/realms/{realm_name}/clients/{client_id}/service-account-user", headers=header_para)

    return request_response


def user_delete(realm_name, user_id, token):
    """ユーザー削除 user delete
    Args:
        realm_name (str): realm name
        user_id (str): user id
        toekn (str): token
    Returns:
        Response: HTTP Respose (success : .status_code=200)
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name} realm_name={realm_name}, user_id={user_id}")

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    globals.logger.debug("user delete")
    # ユーザ情報削除
    # User information deletetion
    request_response = requests.delete(f"{api_url}/auth/admin/realms/{realm_name}/users/{user_id}", headers=header_para)

    globals.logger.info(f"### Succeed func:{inspect.currentframe().f_code.co_name}")

    return request_response
