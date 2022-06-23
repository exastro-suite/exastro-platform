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
import os
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
# import api_keycloak_call
import common_library.common.api_keycloak_call as api_keycloak_call


class auth_proxy:

    jwt_json = None

    response_original = None

    # TODO: realm name パスにrealmを入れるようになったらここは削除
    realm = os.environ.get('REALM_NAME')

    # TODO: client id や secretについても一時的に環境変数で実施
    token_check_client_id = os.environ.get('TOKEN_CHECK_CLIENT_ID')

    # トークンチェック用ClientIDのClisentSecret
    # Clisent Secret of Client ID for token check
    token_check_client_secret = os.environ.get('TOKEN_CHECK_CLIENT_SECRET')

    # def __init__(self):

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
                return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

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
                        token_decode = jwt.decode(access_token, options={"verify_signature": False})

                    except Exception:
                        status_code = 401
                        info = 'bad token'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

                    globals.logger.debug(f'oken_decode={token_decode}')

                    iss = token_decode.get("iss")
                    if iss is None:
                        # issが無い場合はNGを返す。
                        # If there is no iss, NG is returned.
                        status_code = 401
                        info = 'token check NG'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

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

                    # アクセストークンの有効確認
                    active = self.access_token_introspect(self.realm, keycloak_json)

                    if active is not True:
                        # アクティブチェックがFalseならNGを返す
                        # Returns NG if the active check is False
                        status_code = 401
                        info = 'token invalid'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}
                    # ----ここまでアクセストークンチェック処理---- #
                    # Access token check processing so far
                    user_id = token_decode.get("preferred_username")

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
                        globals.logger.debug(f'wsgi decode_key_id={decode_key_id}')
                        r = decode_key_id.split(':')
                        if len(r) < 2:
                            # ユーザID、パスワードの値が不正な場合
                            # When the user ID and password values ​​are invalid
                            status_code = 401
                            info = 'User ID and password are not set correctly'
                            return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

                        user_id = r[0]
                        user_password = r[1]

                        try:
                            # アクセストークンを取得
                            # Get an access token
                            access_token = self.access_token_get(self.realm, user_id, user_password)
                            globals.logger.debug(f'access_token_get={access_token}')

                        except api_keycloak_call.AuthErrorException:
                            status_code = 401
                            info = 'ID/PW NG'
                            return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}
                        # ----ここまでBasic認証情報取得処理---- #
                        # basic auth acquisition process up to this point
                    else:
                        status_code = 401
                        info = 'Authorization format is incorrect'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}
            else:
                status_code = 401
                info = 'not authorization format'
                return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

            status_code = 0
            info = {"user_id": user_id}
            return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

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
                    error = 'Invalid authorization header'
                    globals.logger.info(error)
                    raise Exception(error)

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
                'user_id': info['user_id'],
            }

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
                return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}
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
                return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}

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

        self.response_original = ret

        globals.logger.info('SUCCESS main_request.')

        # エンコードしたレスポンスをリターン
        # Return the encoded response
        return ret

    def access_token_get(self, realm, user_name, password):
        """アクセストークン取得

        Args:
            realm (str): realm
            user_name (str): user_name
            password (str): password

        Returns:
            str: access_token
        """
        try:
            globals.logger.info('Get access token. method={}, realm={}'.format(request.method, realm))

            # アクセストークン取得 get access token
            access_token = api_keycloak_call.get_user_token(user_name, password, realm)

            globals.logger.info('SUCCEED access token.')

            return access_token

        except Exception:
            raise

    def access_token_introspect(self, realm, keycloal_json):
        """アクセストークンの有効確認

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
            client_id = keycloal_json.get("client_id")
            client_secret = keycloal_json.get("client_secret")
            access_token = keycloal_json.get("access_token")
            keycloak_proto = keycloal_json.get("keycloak_proto")
            keycloak_host = keycloal_json.get("keycloak_host")

            # トークンイントロスペクション token introspection
            active = api_keycloak_call.keycloak_user_token_introspect(client_id, client_secret, realm, access_token, keycloak_proto, keycloak_host)

            globals.logger.info('SUCCEED Token Introspection.')

            return active

        except Exception:
            raise
