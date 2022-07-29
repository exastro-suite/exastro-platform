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
import traceback

# User Imports
import globals  # 共通的なglobals Common globals


def keycloak_user_role_get(realm_name, user_id, client_id, token):
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


def keycloak_role_uesrs_get(realm_name, client_id, role_name, token):
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


def keycloak_user_client_role_mapping_create(realm_name, user_id, client_id, client_roles, token):
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


def keycloak_user_client_role_mapping_delete(realm_name, user_id, client_id, client_roles, token):
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


def keycloak_clients_get(realm_name, client_id, token):
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

    request_response = requests.get("{}/auth/admin/realms/{}/clients".format(api_url, realm_name),
                                    headers=header_para,
                                    params=query_para,
                                    )

    globals.logger.debug(request_response.text)

    return request_response


def keycloak_client_role_get(realm_name, client_id, role_name, token):
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

    globals.logger.debug(request_response.text)

    return request_response


def keycloak_client_role_create(realm_name, client_uid, role_name, token):
    """クライアントロール作成 user client role create

    Args:
        realm_name (str): realm name
        client_uid (str): client id
        role_name (str): role name
        toekn (str): token

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

    globals.logger.debug("client role post send")
    # 呼び出し先設定 requests setting
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

    request_response = requests.post(
        "{}/auth/admin/realms/{}/clients/{}/roles".format(api_url, realm_name, client_uid),
        headers=header_para,
        data=json.dumps(data_para)
    )

    globals.logger.debug(request_response.text)

    return request_response


def keycloak_client_role_composites_get(realm_name, client_uid, role_name, token):
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

    globals.logger.debug(request_response.text)

    return request_response


def keycloak_client_role_composites_create(realm_name, client_uid, role_name, add_roles, token):
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

    globals.logger.debug(request_response.text)

    return request_response


def keycloak_user_get(realm_name, user_name, token):
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


def keycloak_user_get_by_id(realm_name, user_id, token):
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


def keycloak_get_user_role_mapping(realm_name, user_id, token):
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


def keycloak_user_reset_password(realm_name, user_id, user_password, token):
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


def __keycloak_get_token(realm_name, data_para):
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
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

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


def keycloak_client_user_get_token(realm_name, client_id, client_secret, user_id, user_password, grant_type="password"):
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
    return __keycloak_get_token(realm_name, data_para)


def keycloak_service_account_get_token(realm_name, client_id, client_secret):
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
    return __keycloak_get_token(realm_name, data_para)


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
    return keycloak_client_user_get_token(realm_name, client_id, client_secret, user_name, password)


def keycloak_user_token_introspect(client_id, client_secret, realm_name, access_token, keycloak_proto="", keycloak_host=""):
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
    api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

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
