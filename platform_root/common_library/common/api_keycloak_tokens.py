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
import inspect
import requests

# User Imports
import globals  # 共通的なglobals Common globals


def __get_keycloak_api_url():
    return "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])


def __get_token(realm_name, data_para):
    """ token取得 Get token

    Args:
        realm_name (str): realm name
        data_para (dictionary):

    Raises:
        Exception: error

    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/x-www-form-urlencoded",
    }

    globals.logger.debug("get token")
    # token情報取得
    # Get token information
    request_response = requests.post(
        "{}/auth/realms/{}/protocol/openid-connect/token".format(api_url, realm_name),
        headers=header_para,
        data="&".join(data_para)
    )

    return request_response


def client_user_get_token(realm_name, client_id, client_secret, user_id, user_password, grant_type="password"):
    """client user token取得 Get client user token

    Args:
        realm_name (str): realm name
        client_id (str): client id(client name)
        client_secret (str): client secret
        user_id (str): user id
        user_password (str): user pasword

    Raises:
        Exception: error

    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    globals.logger.info('Get keycloak client user token. realm_name={}, client_id={}, user_id={}'.format(realm_name, client_id, user_id))

    # 呼び出し先設定
    # Call destination setting

    data_para = [
        "client_id={}".format(client_id),
        # "client_secret={}".format(client_secret),
        "username={}".format(user_id),
        "password={}".format(user_password),
        "grant_type={}".format(grant_type),
    ]

    # その他のオプション値はすべてそのまま受け渡す
    # Pass all other option values ​​as they are
    if client_secret is not None:
        data_para.append("client_secret={}".format(client_secret))

    # 下位の取得ロジックを呼びだし
    # Call the lower acquisition logic
    return __get_token(realm_name, data_para)


def service_account_get_token(realm_name, client_id, client_secret):
    """service account token取得 Get service account token

    Args:
        realm_name (str): realm name
        client_id (str): client id(client name)
        client_secret (str): client secret

    Raises:
        Exception: error

    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    globals.logger.info('Get keycloak service account token. realm_name={}'.format(realm_name))

    # 呼び出し先設定
    # Call destination setting
    data_para = [
        "client_id={}".format(client_id),
        "grant_type=client_credentials",
    ]

    # その他のオプション値はすべてそのまま受け渡す
    # Pass all other option values ​​as they are
    if client_secret is not None:
        data_para.append("client_secret={}".format(client_secret))

    # 下位の取得ロジックを呼びだし
    # Call the lower acquisition logic
    return __get_token(realm_name, data_para)


def get_user_token(user_name, password, realm_name, client_id="admin-cli", client_secret=None):
    """user token取得 Get user token
    Args:
        user_name (str): user name
        password (str): user password
        realm_name (str): realm name
    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    globals.logger.info('Get keycloak client user token. realm_name={}, client_id={}, user_name={}'.format(realm_name, client_id, user_name))

    # 下位の取得ロジックを呼びだし
    # Call the lower acquisition logic
    return client_user_get_token(realm_name, client_id, client_secret, user_name, password)


def user_token_introspect(client_id, client_secret, realm_name, access_token, keycloak_proto="", keycloak_host=""):
    """user token introspect実行 Run user token introspect
    Args:
        client_id (str): client id
        client_secret (str): client secret
        realm_name (str): realm name
        access_token (str): access token
        keycloak_proto (str): keycloak server protocol
        keycloak_host (str): keycloak server host
    Returns:
        Response: HTTP Respose (success : .status_code=200, active=json.loads(.text).get("active"))
    """
    globals.logger.info('introspect keycloak user token. realm_name={}, client_id={}'.format(realm_name, client_id))

    data_para = [
        "client_id={}".format(client_id),
        "client_secret={}".format(client_secret),
        "token={}".format(access_token)
    ]

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/x-www-form-urlencoded"
    }

    # keycloak_proto/keycloak_hostをheaderに設定
    # Set keycloak_proto / keycloak_host to header
    if keycloak_proto and keycloak_host:
        header_para["X-Forwarded-Proto"] = keycloak_proto
        header_para["X-Forwarded-Host"] = keycloak_host

    request_response = requests.post(
        "{}/auth/realms/{}/protocol/openid-connect/token/introspect".format(api_url, realm_name),
        headers=header_para,
        data="&".join(data_para)
    )

    return request_response


def offline_sessions_delete(realm_name, user_id, client_id, token):
    """offline-session (refresh token)削除 Delete offline-session

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id(not client name)
        toekn (str): token

    Raises:
        Exception: error

    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    globals.logger.info(f"# func:{inspect.currentframe().f_code.co_name}")
    globals.logger.info(f' realm_name={realm_name}, user_id={user_id}, client_id={client_id}')

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # offline-session (refresh token)削除
    # Delete offline-session
    request_response = requests.delete(
        f"{api_url}/auth/admin/realms/{realm_name}/users/{user_id}/consents/{client_id}",
        headers=header_para
    )

    globals.logger.info(f"# Succeed func:{inspect.currentframe().f_code.co_name}")

    return request_response


def offline_sessions_get(realm_name, user_id, client_id, token):
    """offline-session (refresh token)取得 Get offline-session

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id(not client name)
        toekn (str): token

    Raises:
        Exception: error

    Returns:
        Response: HTTP Respose (success : .status_code=200, token=json.loads(.text)["access_token"])
    """
    globals.logger.info(f"# func:{inspect.currentframe().f_code.co_name}")
    globals.logger.info(f' realm_name={realm_name}, user_id={user_id}, client_id={client_id}')

    # 呼び出し先設定
    # Call destination setting
    api_url = __get_keycloak_api_url()

    header_para = {
        "Content-Type": "application/json",
        "Authorization": "Bearer {}".format(token),
    }

    # offline-session (refresh token)取得
    # Get offline-session
    request_response = requests.get(
        f"{api_url}/auth/admin/realms/{realm_name}/users/{user_id}/offline-sessions/{client_id}",
        headers=header_para
    )

    globals.logger.info(f"# Succeed func:{inspect.currentframe().f_code.co_name}")

    # 下位の取得ロジックを呼びだし
    # Call the lower acquisition logic
    return request_response
