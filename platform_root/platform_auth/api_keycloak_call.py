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

import inspect
import os
import json
import requests
import traceback

# User Imports
import globals


class AuthErrorException(Exception):
    pass


def keycloak_user_role_get(realm_name, user_id, client_id, token_user, token_password, token_realm):
    """ユーザロール情報取得 user role info get
    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        token_user (str): token user name
        token_password (str): token user password
        token_realm (str): token realm name
    Returns:
        Response: HTTP Respose
    """

    try:
        globals.logger.info('Get keycloak user role. realm_name={}, user_id={}, client_id={}'.format(realm_name, user_id, client_id))

        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm)),
        }

        globals.logger.debug("user role get送信")
        # 呼び出し先設定 call destination setting
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
        request_response = requests.get(
            "{}/auth/admin/realms/{}/users/{}/role-mappings/clients/{}/composite".format(api_url, realm_name, user_id, client_id),
            headers=header_para
        )
        globals.logger.debug(request_response.text)
        
        # 取得できない場合は、Exceptionを発行する if it cannot be obtained, an Exception will be thrown
        if request_response.status_code != 200:
            raise Exception("get user role error status:{}, response:{}".format(request_response.status_code, request_response.text))

        response_data = json.loads(request_response.text)

        return response_data
    
    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def keycloak_role_uesrs_get(realm_name, client_id, role_name, token_user, token_password, token_realm):
    """ロール毎のユーザ情報リスト取得 get user info list for each role
    Args:
        realm_name (str): realm name
        client_id (str): client id
        role_name (str): role name
        token_user (str): token user name
        token_password (str): token user password
        token_realm (str): token realm name
    Returns:
        Response: HTTP Respose
    """

    try:
        globals.logger.info(
            'Get keycloak user list for each role. realm_name={}, client_id={}, role_name={}'.format(realm_name, client_id, role_name)
        )

        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm)),
        }

        globals.logger.debug("role users get送信")
        # 呼び出し先設定 call destination setting
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])
        request_response = requests.get(
            "{}/auth/admin/realms/{}/clients/{}/roles/{}/users".format(api_url, realm_name, client_id, role_name),
            headers=header_para
        )
        globals.logger.debug(request_response.text)
        
        # 取得できない場合は、Exceptionを発行する if it cannot be obtained, an Exception will be thrown
        if request_response.status_code == 404:
            # 404の場合は0件で返す In case of 404, return []
            return []
        elif request_response.status_code != 200:
            raise Exception("get role users error status:{}, response:{}".format(request_response.status_code, request_response.text))

        response_data = json.loads(request_response.text)

        return response_data
    
    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def keycloak_user_client_role_mapping_create(realm_name, user_id, client_id, client_roles, token):
    """ユーザークライアントロールマッピング作成 user client role-mapping create

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        client_roles (array): client roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose
    """

    try:
        globals.logger.info(
            'Create keycloak user client role-mapping. user_id={}, client_id={}, client_roles={}'.format(user_id, client_id, client_roles)
        )
        
        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(token),
        }

        data_para = client_roles

        globals.logger.debug("user client role-mapping post 送信")
        # 呼び出し先設定 requests setting
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        request_response = requests.post(
            "{}/auth/admin/realms/{}/users/{}/role-mappings/clients/{}".format(api_url, realm_name, user_id, client_id),
            headers=header_para,
            data=json.dumps(data_para)
        )

        globals.logger.debug(request_response.text)

        # 正常終了以外はエラー not normal end to error
        if request_response.status_code != 204:
            raise Exception(
                "{} error status:{}, response:{}".format(inspect.currentframe().f_code.co_name, request_response.status_code, request_response.text))

        globals.logger.debug("user client role-mapping create Succeed!")

        # 正常応答 normal return
        return request_response.text

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def keycloak_user_client_role_mapping_delete(realm_name, user_id, client_id, client_roles, token):
    """ユーザークライアントロールマッピング削除 user client role-mapping delete

    Args:
        realm_name (str): realm name
        user_id (str): user id
        client_id (str): client id
        client_roles (array): client roles array
        toekn (str): token

    Returns:
        Response: HTTP Respose
    """

    try:
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

        # 正常終了以外はエラー not normal end to error
        if request_response.status_code != 204:
            raise Exception(
                "{} error status:{}, response:{}".format(inspect.currentframe().f_code.co_name, request_response.status_code, request_response.text))

        globals.logger.debug("user client role-mapping delete Succeed!")

        # 正常応答 normal return
        return request_response.text

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def keycloak_client_role_get(realm_name, client_id, role_name, token):
    """クライアントロール情報取得 client role create get

    Args:
        realm_name (str): realm name
        client_id (str): client id
        role_name (str): role name
        toekn (str): token

    Returns:
        Response: HTTP Respose
    """

    try:
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

        # 正常終了以外はエラー not normal end to error
        if request_response.status_code != 200:
            raise Exception(
                "{} error status:{}, response:{}".format(inspect.currentframe().f_code.co_name, request_response.status_code, request_response.text))

        globals.logger.debug("client role get Succeed!")

        # 正常応答 normal return
        return request_response.text

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


# def keycloak_client_secret_get(realm_name, client_id, token_user, token_password, token_realm_name):
#     """client sercret 取得
#     Args:
#         realm_name (str): realm name
#         client_id (str): client id
#         toekn_user (str): token 取得用 user name
#         toekn_password (str): token 取得用 user password
#         toekn_realm_name (str): token 取得用 realm name
#     Returns:
#         str: secret id
#     """

#     try:
#         globals.logger.debug('------------------------------------------------------')
#         globals.logger.debug('CALL keycloak_client_secret_get: id_of_client:{}'.format(client_id))
#         globals.logger.debug('------------------------------------------------------')

#         # 呼び出し先設定
#         api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

#         header_para = {
#             "Content-Type": "application/json",
#             "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm_name)),
#         }

#         globals.logger.debug("client secret get")
#         # Client作成
#         request_response = requests.get(
#             "{}/auth/admin/realms/{}/clients/{}/client-secret".format(api_url, realm_name, client_id),
#             headers=header_para
#         )
#         globals.logger.debug(request_response.text)
        
#         # 取得できない場合は、Exceptionを発行する
#         if request_response.status_code != 200:
#             raise Exception("client_secret_get error status:{}, response:{}".format(request_response.status_code, request_response.text))
#         globals.logger.debug("client secret get Succeed!")
        
#         json_ret = json.loads(request_response.text)
#         # 正常応答
#         return json_ret["value"]

#     except Exception as e:
#         globals.logger.debug(e.args)
#         globals.logger.debug(traceback.format_exc())
#         raise

def keycloak_user_get(realm_name, user_name, token_user, token_password, token_realm_name):
    """ユーザ情報取得
    Args:
        realm_name (str): realm name
        user_name (str): user name (Noneの時はすべて取得 None is all user)
        toekn_user (str): token 取得用 user name
        toekn_password (str): token 取得用 user password
        toekn_realm_name (str): token 取得用 realm name
    Returns:
        Response: HTTP Respose
    """

    try:
        globals.logger.info('Get keycloak user. realm_name={}, user_name={}'.format(realm_name, user_name))

        # 呼び出し先設定
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm_name)),
        }

        globals.logger.debug("user get")
        # ユーザ情報取得
        if user_name is None:
            request_response = requests.get("{}/auth/admin/realms/{}/users".format(api_url, realm_name), headers=header_para)
        else:
            request_response = requests.get("{}/auth/admin/realms/{}/users?search={}".format(api_url, realm_name, user_name), headers=header_para)
        globals.logger.debug(request_response.text)
        
        # 取得できない場合は、Exceptionを発行する
        if request_response.status_code != 200:
            raise Exception("user_get error status:{}, response:{}".format(request_response.status_code, request_response.text))
        globals.logger.debug("user get Succeed!")
        
        user_info = json.loads(request_response.text)
        # 正常応答
        return user_info

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def keycloak_user_get_by_id(realm_name, user_id, token_user, token_password, token_realm_name):
    """ユーザ情報取得(user id指定)
    Args:
        realm_name (str): realm name
        user_id (str): user id
        toekn_user (str): token 取得用 user name
        toekn_password (str): token 取得用 user password
        toekn_realm_name (str): token 取得用 realm name
    Returns:
        Response: HTTP Respose
    """

    try:
        globals.logger.info('Get keycloak user. realm_name={}, user_id={}'.format(realm_name, user_id))

        # 呼び出し先設定
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        header_para = {
            "Content-Type": "application/json",
            "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm_name)),
        }

        globals.logger.debug("user get by id")
        # ユーザ情報取得
        request_response = requests.get("{}/auth/admin/realms/{}/users/{}".format(api_url, realm_name, user_id), headers=header_para)
        # globals.logger.debug(request_response.text)
        
        # 取得できない場合は、Exceptionを発行する
        if request_response.status_code != 200:
            raise Exception("user_get_by_id error status:{}, response:{}".format(request_response.status_code, request_response.text))
        globals.logger.debug("user get by id Succeed!")
        
        user_info = json.loads(request_response.text)

        # 正常応答
        return user_info

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


# def keycloak_user_reset_password(realm_name, user_id, user_password, token_user, token_password, token_realm_name):
#     """ユーザパスワード変更
#     Args:
#         realm_name (str): realm name
#         user_id (str): user id
#         user_password (str): user new password
#         toekn_user (str): token 取得用 user name
#         toekn_password (str): token 取得用 user password
#         toekn_realm_name (str): token 取得用 realm name
#     Returns:
#         なし
#     """

#     try:
#         globals.logger.debug('------------------------------------------------------')
#         globals.logger.debug('CALL keycloak_user_reset_password: realm_name:{}, user_id:{}'.format(realm_name, user_id))
#         globals.logger.debug('------------------------------------------------------')

#         # 呼び出し先設定
#         api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

#         header_para = {
#             "Content-Type": "application/json",
#             "Authorization": "Bearer {}".format(get_user_token(token_user, token_password, token_realm_name)),
#         }

#         data_para = {
#             "type": "password",
#             "value": user_password,
#             "temporary": False,
#         }

#         globals.logger.debug("keycloak_user_reset_password")
#         # ユーザパスワード更新
#         request_response = requests.put(
#             "{}/auth/admin/realms/{}/users/{}/reset-password".format(api_url, realm_name, user_id),
#             headers=header_para,
#             data=json.dumps(data_para)
#         )
#         globals.logger.debug(request_response.text)
        
#         # 更新できない場合は、Exceptionを発行する
#         if request_response.status_code != 204:
#             raise Exception("keycloak_user_reset_password error status:{}, response:{}".format(request_response.status_code, request_response.text))
#         globals.logger.debug("keycloak_user_reset_password id Succeed!")
        
#         # 正常応答
#         return

#     except Exception as e:
#         globals.logger.debug(e.args)
#         globals.logger.debug(traceback.format_exc())
#         raise


def keycloak_client_user_get_token(realm_name, client_id, client_secret, user_id, user_password):
    """client user token取得

    Args:
        realm_name (str): realm name
        client_id (str): client id(client name)
        client_secret (str): client secret
        user_id (str): user id
        user_password (str): user pasword

    Raises:
        Exception: error

    Returns:
        json: token json
    """
    try:
        globals.logger.info('Get keycloak client user token. realm_name={}, client_id={}, user_id={}'.format(realm_name, client_id, user_id))

        # 呼び出し先設定
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        header_para = {
            "Content-Type": "application/x-www-form-urlencoded",
        }

        data_para = [
            "client_id={}".format(client_id),
            # "client_secret={}".format(client_secret),
            "username={}".format(user_id),
            "password={}".format(user_password),
            "grant_type=password",
        ]

        # その他のオプション値はすべてそのまま受け渡す
        if client_secret is not None:
            data_para.append("client_secret={}".format(client_secret))

        globals.logger.debug("get token")
        # token情報取得
        request_response = requests.post(
            "{}/auth/realms/{}/protocol/openid-connect/token".format(api_url, realm_name),
            headers=header_para,
            data="&".join(data_para)
        )
        # 取得できない場合は、Exceptionを発行する
        if request_response.status_code != 200:
            raise AuthErrorException("client_user_get_token error status:{}, response:{}".format(request_response.status_code, request_response.text))

        globals.logger.debug("get token Succeed!")

        json_ret = json.loads(request_response.text)

        # 正常応答
        return json_ret["access_token"]

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise


def get_user_token(user_name, password, realm_name):
    """user token取得
    Args:
        user_name (str): user name
        password (str): user password
        realm_name (str): realm name
    Returns:
        str: token
    """
    try:
        globals.logger.info('Get keycloak client user token. realm_name={}, user_name={}'.format(realm_name, user_name))

        # 下位の取得ロジックを呼びだし
        return keycloak_client_user_get_token(realm_name, "admin-cli", None, user_name, password)

    except Exception as e:
        globals.logger.error(e.args)
        globals.logger.error(traceback.format_exc())
        raise


def keycloak_user_token_introspect(client_id, client_secret, realm_name, access_token, keycloak_proto="", keycloak_host=""):
    """user token introspect実行
    Args:
        client_id (str): client id
        client_secret (str): client secret
        realm_name (str): realm name
        access_token (str): access token
        keycloak_proto (str): keycloak server protocol
        keycloak_host (str): keycloak server host
    Returns:
        boolean: token active
    """
    try:
        globals.logger.info('introspect keycloak user token. realm_name={}, client_id={}'.format(realm_name, client_id))

        data_para = [
            "client_id={}".format(client_id),
            "client_secret={}".format(client_secret),
            "token={}".format(access_token)
        ]

        # 呼び出し先設定
        api_url = "{}://{}:{}".format(os.environ['API_KEYCLOAK_PROTOCOL'], os.environ['API_KEYCLOAK_HOST'], os.environ['API_KEYCLOAK_PORT'])

        header_para = {
            "Content-Type": "application/x-www-form-urlencoded"
        }

        # keycloak_proto/keycloak_hostをheaderに設定
        if keycloak_proto and keycloak_host:
            header_para["X-Forwarded-Proto"] = keycloak_proto
            header_para["X-Forwarded-Host"] = keycloak_host

        request_response = requests.post(
            "{}/auth/realms/{}/protocol/openid-connect/token/introspect".format(api_url, realm_name),
            headers=header_para,
            data="&".join(data_para)
        )
        # # 取得できない場合は、Exceptionを発行する
        if request_response.status_code != 200:
            raise Exception("keycloak_user_token_introspect error status:{}, response:{}".format(request_response.status_code, request_response.text))

        json_ret = json.loads(request_response.text)

        # # 正常応答
        return json_ret['active']

    except Exception as e:
        globals.logger.debug(e.args)
        globals.logger.debug(traceback.format_exc())
        raise
