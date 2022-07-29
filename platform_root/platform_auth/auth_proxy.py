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
from flask import request
from datetime import datetime
import requests
# import pprint
import json
import jwt
import base64
from urllib.parse import urlparse
import traceback

# User Imports
import globals
import const
import common_library.common.common as common
# import api_keycloak_call
import common_library.common.api_keycloak_call as api_keycloak_call
from common_library.common.db import DBconnector


class auth_proxy:

    jwt_json = None

    response_original = None

    # realm name
    realm = None

    # tokenをjwt変換した内容
    # Content of jwt conversion of token
    token_decode = {}

    # 接続先のClient設定
    # Client settings for connection destination
    token_check_client_id = None

    # トークンチェック用ClientIDのClisentSecret
    # Clisent Secret of Client ID for token check
    token_check_client_secret = None

    # 接続先のClient設定
    # Client settings for connection destination
    user_token_client_id = None

    # ユーザートークン取得用ClientIDのClisentSecret
    # Clisent Secret of Client ID for token check
    user_token_client_secret = None

    # def __init__(self):
    def __init__(self, realm):
        self.realm = realm

        # 接続先のClient設定
        # Client settings for connection destination
        self.token_check_client_id = common.get_token_authentication_client_id(realm)

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(realm)

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            raise common.UserException("organization private information error")

        # トークンチェック用ClientIDのClisentSecret
        # Clisent Secret of Client ID for token check
        self.token_check_client_secret = private.token_check_client_secret

        # 接続先のClient設定
        # Client settings for connection destination
        self.user_token_client_id = common.get_user_token_client_id(realm)

    def check_authorization(self):
        """認証情報チェック Authorization check

        Returns:
            json :
            {
                "result": status_code,
                "info": info json,
                "time": now datetime
            }
        """

        try:
            globals.logger.info('CALLED auth_proxy.call_fnc')

            # methodを取得
            # get method
            method = request.method
            globals.logger.info(f'wsgi method={method}')

            # methodがOPTIONSならstatus 200でリターンを返す（preflight）
            # If method is OPTIONS, return with status 200 (preflight)
            if method == 'OPTIONS':
                status_code = 200
                info = 'Preflight'
                return {"result": status_code, "info": info, "time": str(datetime.utcnow())}

            # bearerを取得
            # Get bearer
            # bearer = environ.get('HTTP_AUTHORIZATION')
            get_auth = request.headers.get('Authorization')
            globals.logger.debug(f'auth={get_auth}')
            # アクセストークンチェックを実行
            # Extract only the token part
            if get_auth:
                # ----ここからアクセストークンチェック処理---- #
                # Access token check process from here

                # トークン部分のみ抽出
                # Extract only the token part
                access_token = self.get_authorization(get_auth, const.AUTH_TYPE_BEARER)
                # 「bearer XXX」の形式で無い場合エラー
                # Error if not in "bearer XXX" format
                if access_token:
                    try:
                        # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
                        # Extract iss from access token and analyze the protocol / host of the token issuer
                        self.token_decode = jwt.decode(access_token, options={"verify_signature": False})

                    except Exception:
                        info = 'bad token'
                        raise common.AuthException(info)

                    globals.logger.debug(f'oken_decode={self.token_decode}')

                    try:
                        iss = self.token_decode.get("iss")
                        if iss is None:
                            # issが無い場合はNGを返す。
                            # If there is no iss, NG is returned.
                            info = 'token check NG'
                            raise common.AuthException(info)

                    except Exception:
                        info = 'bad token format'
                        raise common.AuthException(info)

                    try:
                        iss_parse = urlparse(iss)
                        keycloak_proto = iss_parse.scheme
                        keycloak_host = iss_parse.netloc

                        # アクセストークンのアクティブチェック
                        # Access token active check
                        keycloak_json = {
                            'client_id': self.token_check_client_id,
                            'client_secret': self.token_check_client_secret,
                            'access_token': access_token,
                            'keycloak_proto': keycloak_proto,
                            'keycloak_host': keycloak_host
                        }
                    except Exception:
                        info = 'token parse error'
                        raise common.AuthException(info)

                    # アクセストークンの有効確認
                    active = self.access_token_introspect(self.realm, keycloak_json)

                    if active is not True:
                        # アクティブチェックがFalseならNGを返す
                        # Returns NG if the active check is False
                        info = 'token invalid'
                        raise common.AuthException(info)

                    # ----ここまでアクセストークンチェック処理---- #
                    # Access token check processing so far

                else:
                    # ----ここからBasic認証情報取得処理---- #
                    # basic auth acquisition process from here
                    basic_auth = self.get_authorization(get_auth, const.AUTH_TYPE_BASIC)
                    # 「basic XXX」の形式で無い場合エラー
                    # Error if not in "basic XXX" format
                    if basic_auth:

                        # ユーザID、パスワードを取得
                        # Get user ID and password
                        decode_key_id = base64.b64decode(basic_auth).decode()
                        r = decode_key_id.split(':')
                        if len(r) < 2:
                            # ユーザID、パスワードの値が不正な場合
                            # When the user ID and password values ​​are invalid
                            info = 'User ID and password are not set correctly'
                            raise common.AuthException(info)

                        basic_user_id = r[0]
                        basic_user_password = r[1]

                        try:
                            # アクセストークンを取得
                            # Get an access token
                            access_token = self.access_token_get(self.realm, basic_user_id, basic_user_password)
                            globals.logger.debug(f'access_token_get={access_token}')

                        except common.AuthErrorException:
                            info = 'ID/PW NG'
                            raise common.AuthException(info)

                        try:
                            # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
                            # Extract iss from access token and analyze the protocol / host of the token issuer
                            self.token_decode = jwt.decode(access_token, options={"verify_signature": False})

                        except Exception:
                            info = 'bad token'
                            raise common.AuthException(info)

                        globals.logger.debug(f'oken_decode={self.token_decode}')
                        # ----ここまでBasic認証情報取得処理---- #
                        # basic auth acquisition process up to this point

                    else:
                        info = 'Authorization format is incorrect'
                        raise common.AuthException(info)
            else:
                info = 'not authorization format'
                raise common.AuthException(info)

            token_roles = self.token_decode.get("resource_access").get(self.user_token_client_id)
            globals.logger.debug(f'token_roles={token_roles}')
            if token_roles and "roles" in token_roles:
                roles_str = base64.b64encode("\n".join(token_roles["roles"]).encode()).decode()
            else:
                roles_str = ""
            status_code = 0
            info = {
                "User-Id": self.token_decode.get("sub"),
                "Roles": roles_str,
                "Language": self.token_decode.get("locale"),
            }
            return {"result": status_code, "info": info, "time": str(datetime.utcnow())}

        except Exception as e:
            globals.logger.error(f'Exception : {e.args}')
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            raise

    def get_authorization(self, auth_str, auth_type):
        """認証情報取得 get authorization

        Args:
            auth_str (str): 認証情報 authrization strings
            type (str): "bearer" or "basic"

        Return:
            str : bearer token or userid and passwor
                  None was a unmach auth_type
        """

        try:
            # bearerを取得
            # Get bearer
            if auth_str:
                auths = auth_str.split(' ')
                if len(auths) != 2:
                    return None

                get_auth_type = auths[0]
                get_auth_value = auths[1]

                # 認証の種類が一致しない場合はNoneを返却
                # If the authentication types do not match, return None
                if auth_type != get_auth_type.lower():
                    return None

                ret = get_auth_value

                return ret
            else:
                # 文字列が空の場合は、Noneを返却
                # If the string is empty, return None
                return None

        except Exception:
            raise

    def call_api(self, dest_url, info):
        """API呼び出し Call API

        Args:
            dest_url (str): 呼び出し先のURL URL of the callee
            info (dic): 認証で取得した情報 Information obtained by authentication
            {
                "user_id": user id
            }

        Returns:
            _type_: _description_
        """
        try:

            globals.logger.info('CALLED auth_proxy.call_api')

            # ヘッダにuser_idの付与 addtional header user_id
            post_headers = {
                'organization_id': self.realm,
            }
            post_headers.update(info)

            # method
            request_method = request.method
            globals.logger.debug(f'request_method: {request_method}')

            # パラメータを形成
            # Form parameters
            try:
                request_body = request.json.copy()
                globals.logger.debug(f'request_body: {request_body}')
            except Exception:
                request_body = {}

            # 引数
            # query_string
            query_string = request.query_string
            globals.logger.debug(f'query_string: {query_string}')

            globals.logger.debug(f'CALL dest_url: {dest_url}')

            # リクエストを実行
            # Execute request
            ret = self.main_request(request_method, dest_url, post_headers, request_body, query_string)
            # ----ここまでAPサーバへのリクエスト処理---- #
            # Request processing to the AP server so far

            globals.logger.info(f'return main_request ret={ret}')

            # レスポンスをリターン
            # Return response
            if not ret:
                status_code = 500
                info = 'System Error'
                return {"result": status_code, "info": info, "time": str(datetime.utcnow())}
            else:
                status_code = ret.status_code
                try:
                    info = json.loads(ret.text)
                    result_dump = json.dumps(info)
                    result_encode = result_dump.encode('utf-8')
                    globals.logger.info(f'SUCCESS call_api. status_code={status_code} info={result_encode}')
                except json.JSONDecodeError:
                    info = ret.text
                    globals.logger.info(f'SUCCESS call_api. status_code={status_code} info={info}')
                return {"result": status_code, "info": info, "time": str(datetime.utcnow())}

        except Exception as e:
            globals.logger.error(f'Exception : {e.args}')
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            raise

    def call_fnc(self, func, args):
        """Auth api call

        Args:
            func (_type_): _description_
            args (_type_): _description_
        """
        try:
            globals.logger.info('CALLED auth_proxy.call_fnc')
        except Exception as e:
            globals.logger.error(f'Exception : {e.args}')
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            raise

    def main_request(self, method, url, post_headers, request_body, query_string):
        """
        APサーバへリクエストを実行
        Execute a request to the AP server

        Arguments:
            method (str): method
            url (str): url
            post_headers (dic): post headers
            request_body (str): request body(json)
            query_string (str): query_string

        Returns:
            esponse: HTTP Respose
        """

        globals.logger.info(f'Start main_request. method={method} url={url} request_body={request_body} query_string={query_string}')

        # methodによって、呼び出しの内容を変える
        # Change the content of the call depending on the method
        if method == 'GET':
            ret = requests.get(url, headers=post_headers, params=query_string)

        elif method == 'POST':
            ret = requests.post(url, headers=post_headers, json=request_body, params=query_string)

        elif method == 'PATCH':
            ret = requests.patch(url, headers=post_headers, json=request_body, params=query_string)

        elif method == 'PUT':
            ret = requests.put(url, headers=post_headers, json=request_body, params=query_string)

        elif method == 'DELETE':
            ret = requests.delete(url, headers=post_headers, params=query_string)

        # 取得したレスポンスの内容を退避
        # Save the contents of the acquired response
        self.response_original = ret

        globals.logger.info('SUCCESS main_request.')

        # エンコードしたレスポンスをリターン
        # Return the encoded response
        return ret

    def access_token_get(self, realm, user_name, password):
        """アクセストークン取得 Get access token

        Args:
            realm (str): realm
            user_name (str): user_name
            password (str): password

        Returns:
            str: access_token
        """
        try:
            globals.logger.info('Get access token. method={}, realm={}'.format(request.method, realm))

            # アクセストークン取得
            # get access token
            # access_token = api_keycloak_call.get_user_token(user_name, password, realm)
            access_token_response = api_keycloak_call.keycloak_client_user_get_token(
                realm, self.user_token_client_id, self.user_token_client_secret, user_name, password)

            if access_token_response.status_code != 200:
                raise common.AuthErrorException("client_user_get_token error status:{}, response:{}".format(
                    access_token_response.status_code, access_token_response.text))

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.info('SUCCEED access token.')

            return access_token

        except Exception:
            raise

    def access_token_introspect(self, realm, keycloak_json):
        """アクセストークンの有効確認 Confirmation of access token validity

        Args:
            realm (str): realm

            keyclaok_json (dic): keycloak_json
            {
                "client_id"      : [client id],
                "client_secret"  : [client secret],
                "access_token"   : [access token],
                "keycloak_proto" : [keycloak server protocol],
                "keycloak_host"  : [keycloak server host]
            }

        Returns:
            str: active
        """
        try:
            globals.logger.info('Token Introspection. method={}, realm={}'.format(request.method, realm))

            # パラメータ情報(JSON形式)
            # Parameter information (JSON format)
            client_id = keycloak_json.get("client_id")
            client_secret = keycloak_json.get("client_secret")
            access_token = keycloak_json.get("access_token")
            keycloak_proto = keycloak_json.get("keycloak_proto")
            keycloak_host = keycloak_json.get("keycloak_host")

            # トークンイントロスペクション
            # token introspection
            introspect_response = api_keycloak_call.keycloak_user_token_introspect(
                client_id, client_secret, realm, access_token, keycloak_proto, keycloak_host)

            if introspect_response.status_code != 200:
                raise Exception("keycloak_user_token_introspect error status:{}, response:{}".format(
                    introspect_response.status_code, introspect_response.text))

            active = json.loads(introspect_response.text).get('active')

            globals.logger.info('SUCCEED Token Introspection.')

            return active

        except Exception:
            raise
