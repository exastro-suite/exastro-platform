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
from flask import Flask, request, jsonify
import os
from datetime import datetime
import requests
# import pprint
import json
import re
import jwt
import base64
from urllib.parse import urlparse
import traceback
from dotenv import load_dotenv  # python-dotenv
import logging

# User Imports
import globals
import common
import api_keycloak_call


class auth_proxy:

    jwt_json = None
    
    # def __init__(self):
    
    def call_api(self, dest_url):

        try:

            globals.logger.info('CALLED auth_proxy.call_api')

            # ヘッダにuser_idの付与 addtional header user_id
            request_post_headers = post_headers.copy
            post_headers = {
                'Content-Type': 'application/json',
                # 'user_id': user_id,
            }

            # パラメータを形成
            # Form parameters
            request_body = request.json.copy()
            globals.logger.debug(f'request_body: {request_body}')

            # 引数
            # query_string
            query_string = request.query_string
            globals.logger.debug(f'request_body: {request_body}')

            url = path_info
            globals.logger.debug(f'CALL dest_url: {dest_url}')

            # リクエストを実行
            # Execute request
            ret = main_request(method, url, post_headers, request_body, query_string)
            # ----ここまでAPサーバへのリクエスト処理---- #
            # Request processing to the AP server so far

            globals.logger.info(f'SUCCESS wsgi. ret={ret}')

            # レスポンスをリターン
            # Return response
            if not ret:
                # start_response('404 OK', [('Content-type', 'text/plain'),
                #                           ('Access-Control-Allow-Origin', '*'),
                #                           ('Access-Control-Allow-Headers', allow_headers)])
                # return [b'System Error']
                info = 'System Error'
                return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
            else:
                # start_response('200 OK', [('Content-type', 'text/plain'),
                #                           ('Access-Control-Allow-Origin', '*'),
                #                           ('Access-Control-Allow-Headers', allow_headers)])
                # return [ret]
                info = ret
                return jsonify({"result": "200 OK", "info": info, "time": str(datetime.now(globals.TZ))}), 200


        return None
    
    def call_fnc(self, func, args):

        try:
            globals.logger.info('CALLED auth_proxy.call_fnc')

            # 環境変数取得
            # Get environment variables
            environ = os.environ

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
            globals.logger.debug(f'wsgi auth={get_auth}')
            # アクセストークンチェックを実行
            # Extract only the token part
            if get_auth:
                # ----ここからアクセストークンチェック処理---- #
                # Access token check process from here

                # トークン部分のみ抽出
                # Extract only the token part
                access_token = self.get_authorization("bearer", get_auth)
                # 「bearer XXX」の形式で無い場合エラー
                # Error if not in "bearer XXX" format
                if access_token:
                    # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
                    # Extract iss from access token and analyze the protocol / host of the token issuer
                    token_decode = jwt.decode(access_token, options={"verify_signature": False})
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
                        'client_id': token_check_client_id,
                        'client_secret': token_check_client_secret,
                        'access_token': access_token,
                        'keycloak_proto': keycloak_proto,
                        'keycloak_host': keycloak_host
                    }

                    # アクセストークンの有効確認
                    active = access_token_introspect(realm, keycloak_json)

                    if active is not True:
                        # アクティブチェックがFalseならNGを返す
                        # Returns NG if the active check is False
                        status_code = 401
                        info = 'token invalid'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))} 
                    # ----ここまでアクセストークンチェック処理---- #
                    # Access token check processing so far
                    user_id = ""

                else:
                    # ----ここからBasic認証情報取得処理---- #
                    # basic auth acquisition process from here
                    basic_auth = self.get_authorization("basic", get_auth)
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

                        # アクセストークンを取得
                        # Get an access token
                        access_token = access_token_get(realm, user_id, user_password)
                        if access_token is None:
                            status_code = 401
                            info = 'ID/PW NG'
                            return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))} 
                        # ----ここまでBasic認証情報取得処理---- #
                        # basic auth acquisition process up to this point
                    else
                        status_code = 401
                        info = 'Authorization format is incorrect'
                        return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))} 
            else
                status_code = 401
                info = 'not authorization format'
                return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))} 

            status_code = 0
            info = {
                    "user_id": user_id,
                }
            return {"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))} 

        except Exception as e:
            globals.logger.error(f'Exception : {e.args}')
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            raise

    def before_first_request():
        globals.logger.info('before_first_request time:{}'.format(str(datetime.now(globals.TZ))))
        """
        wsgi main application

        Arguments:
            environ:
            start_response:
        Returns:
            Response: HTTP Resposes
        """
        try:
            globals.logger.info('Start wsgi.')

            # environ = request.environ
            environ = os.environ

            api_gateway_host = environ.get('AUTH_API_PROTOCOL') + '://' + environ.get('AUTH_API_HOST') + ':' + environ.get('AUTH_API_PORT')

            globals.logger.debug(f'api_gateway_host:[{api_gateway_host}]')

            # start_response('200 OK', [('Content-type', 'text/plain'),
            #                           ('Access-Control-Allow-Origin', '*'),
            #                           ('Access-Control-Allow-Headers', allow_headers)])
            # return [b'TEST OK']

            # nakami = pprint.pprint(environ)    # environの中身を見やすいように整形して表示

            # methodを取得
            # get method
            # method = environ.get('REQUEST_METHOD')
            method = request.method
            globals.logger.info(f'wsgi method={method}')

            for head in request.headers:
                globals.logger.debug(f'headers:[{head}]')

            # methodがOPTIONSならstatus 200でリターンを返す（preflight）
            # If method is OPTIONS, return with status 200 (preflight)
            if method == 'OPTIONS':
                # start_response('200 OK', [('Content-type', 'text/plain'),
                #                           ('Access-Control-Allow-Origin', '*'),
                #                           ('Access-Control-Allow-Headers', allow_headers)])
                # return [b'Preflight']
                info = 'Preflight'
                return jsonify({"result": "200 OK", "info": info, "time": str(datetime.now(globals.TZ))}), 200

            # bearerを取得
            # Get bearer
            # bearer = environ.get('HTTP_AUTHORIZATION')
            bearer = request.headers.get('Authorization')
            globals.logger.info(f'wsgi bearer={bearer}')
            # アクセストークンチェックを実行
            # Extract only the token part
            if bearer:
                # ----ここからアクセストークンチェック処理---- #
                # Access token check process from here

                # トークン部分のみ抽出
                # Extract only the token part
                # TODO：本当にこの取り出し方であってる？「Bearer 」の部分は認証スキームというらしいがそれを取り出すようなそもそものやり方は？
                p = re.compile(r'bearer (.*)', re.IGNORECASE)
                m = re.search(p, bearer)
                # 「bearer XXX」の形式で無い場合エラー
                # Error if not in "bearer XXX" format
                if m is None:
                    # start_response('404 NG', [('Content-type', 'text/plain'),
                    #                           ('Access-Control-Allow-Origin', '*'),
                    #                           ('Access-Control-Allow-Headers', allow_headers)])
                    # return [b'Authorization format is incorrect']
                    info = 'Authorization format is incorrect'
                    return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
                access_token = m.group(1)
                # access_token = bearer

                # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
                # Extract iss from access token and analyze the protocol / host of the token issuer
                token_decode = jwt.decode(access_token, options={"verify_signature": False})
                iss = token_decode.get("iss")
                if iss is None:
                    # issが無い場合はNGを返す。
                    # If there is no iss, NG is returned.
                    # start_response('404 NG', [('Content-type', 'text/plain'),
                    #                           ('Access-Control-Allow-Origin', '*'),
                    #                           ('Access-Control-Allow-Headers', allow_headers)])
                    # return [b'token check NG']
                    info = 'token check NG'
                    return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
                iss_parse = urlparse(iss)
                keycloak_proto = iss_parse.scheme
                keycloak_host = iss_parse.netloc

                # アクセストークンのアクティブチェック
                # Access token active check
                keycloak_json = {
                    'client_id': token_check_client_id,
                    'client_secret': token_check_client_secret,
                    'access_token': access_token,
                    'keycloak_proto': keycloak_proto,
                    'keycloak_host': keycloak_host
                }

                # アクセストークンの有効確認
                active = access_token_introspect(realm, keycloak_json)

                if active is not True:
                    # アクティブチェックがFalseならNGを返す
                    # Returns NG if the active check is False
                    # start_response('404 NG', [('Content-type', 'text/plain'),
                    #                           ('Access-Control-Allow-Origin', '*'),
                    #                           ('Access-Control-Allow-Headers', allow_headers)])
                    # return [b'token check NG']
                    info = 'token check NG'
                    return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
                # ----ここまでアクセストークンチェック処理---- #
                # Access token check processing so far
                user_id = ""

            # アクセストークン取得を実行
            # Execute access token acquisition
            else:
                # ----ここからアクセストークン取得処理---- #
                # Access token acquisition process from here

                # ユーザID、パスワードを取得
                # Get user ID and password
                # decode_key_id = base64.b64decode(environ.get('HTTP_X_AUTHORIZATION', '')).decode()
                # auth = request.headers["HTTP_X_AUTHORIZATION"]
                auth = HTTPBasicAuth()
                decode_key_id = base64.b64decode(auth).decode()
                globals.logger.debug(f'wsgi decode_key_id={decode_key_id}')
                r = decode_key_id.split(':')
                if len(r) < 2:
                    # ユーザID、パスワードの値が不正な場合
                    # When the user ID and password values ​​are invalid
                    # start_response('404 NG', [('Content-type', 'text/plain'),
                    #                           ('Access-Control-Allow-Origin', '*'),
                    #                           ('Access-Control-Allow-Headers', allow_headers)])
                    # return [b'User ID and password are not set correctly']
                    info = 'User ID and password are not set correctly'
                    return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404

                user_id = r[0]
                user_password = r[1]

                # アクセストークンを取得
                # Get an access token
                access_token = access_token_get(realm, user_id, user_password)
                if access_token is None:
                    # start_response('404 NG', [('Content-type', 'application/json'),
                    #                           ('Access-Control-Allow-Origin', '*'),
                    #                           ('Access-Control-Allow-Headers', allow_headers)])
                    # return [b'ID/PW NG']
                    info = 'ID/PW NG'
                    return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
                # ----ここまでアクセストークン取得処理---- #
                # Access token acquisition process up to this point

            # ヘッダにuser_idの付与 addtional header user_id
            request_post_headers = post_headers.copy
            request_post_headers.append(
                {
                    "user_id": user_id,
                }
            )

            # ----ここからAPサーバへのリクエスト処理---- #
            # Request processing from here to the AP server

            # パラメータを形成
            # Form parameters
            # length = int(environ.get('CONTENT_LENGTH', 0))
            # if length == 0:
            #     request_body = ''
            # else:
            #     request_body = environ.get('wsgi.input').read(length).decode('utf-8')
            request_body = request.json.copy()

            # 引数
            # query_string
            # query_string = environ.get('QUERY_STRING')
            query_string = request.query_string

            globals.logger.debug(f'request_body: {request_body}')

            # リクエスト先URLを作成
            # Create request URL
            # path_info = environ.get('PATH_INFO')
            path_info = request.url
            # api_base = environ.get('API_BASE')
            # if path_info.startswith(api_base):
            #     path_info = path_info[len(api_base) - 1:]
            globals.logger.debug(f'path_info: {path_info}')

            # url = api_gateway_host + path_info
            url = path_info
            globals.logger.debug(f'CALL url: {url}')

            # リクエストを実行
            # Execute request
            ret = main_request(method, url, request_post_headers, request_body, query_string)
            # ----ここまでAPサーバへのリクエスト処理---- #
            # Request processing to the AP server so far

            globals.logger.info(f'SUCCESS wsgi. ret={ret}')

            # レスポンスをリターン
            # Return response
            if not ret:
                # start_response('404 OK', [('Content-type', 'text/plain'),
                #                           ('Access-Control-Allow-Origin', '*'),
                #                           ('Access-Control-Allow-Headers', allow_headers)])
                # return [b'System Error']
                info = 'System Error'
                return jsonify({"result": "404 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 404
            else:
                # start_response('200 OK', [('Content-type', 'text/plain'),
                #                           ('Access-Control-Allow-Origin', '*'),
                #                           ('Access-Control-Allow-Headers', allow_headers)])
                # return [ret]
                info = ret
                return jsonify({"result": "200 OK", "info": info, "time": str(datetime.now(globals.TZ))}), 200

        except Exception as e:
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            # start_response('404 NG', [('Content-type', 'application/json'),
            #                           ('Access-Control-Allow-Origin', '*'),
            #                           ('Access-Control-Allow-Headers', allow_headers)])
            # return [b'System Error']
            info = 'System Error'
            return jsonify({"result": "500 NG", "info": info, "time": str(datetime.now(globals.TZ))}), 500


    def main_request(method, url, request_post_headers, request_body, query_string):
        """
        APサーバへリクエストを実行
        Execute a request to the AP server

        Arguments:
            method (str): method
            url (str): url
            request_post_headers (dic): post headers
            request_body (str): request body(json)
            query_string (str): query_string

        Returns:
            esponse: HTTP Respose
        """

        globals.logger.info(f'Start main_request. method={method} url={url} request_body={request_body} query_string={query_string}')

        if method == 'GET':
            ret = requests.get(url, headers=request_post_headers, params=query_string)

        elif method == 'POST':
            ret = requests.post(url, headers=request_post_headers, data=request_body, params=query_string)

        elif method == 'PATCH':
            ret = requests.patch(url, headers=request_post_headers, data=request_body, params=query_string)

        elif method == 'PUT':
            ret = requests.put(url, headers=request_post_headers, data=request_body, params=query_string)

        elif method == 'DELETE':
            ret = requests.delete(url, headers=request_post_headers, params=query_string)

        # requestsの結果が例外の場合exceptへ
        # If the result of requests is an exception, go to except
        try:
            ret.raise_for_status()
        except Exception:
            return False

        # レスポンスをエンコード
        # Encode the response
        result_dump = json.dumps(ret.json())
        result_encode = result_dump.encode('utf-8')

        globals.logger.info('SUCCESS main_request.')

        # エンコードしたレスポンスをリターン
        # Return the encoded response
        return result_encode


    def access_token_get(realm, user_name, password):
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

        except Exception as e:
            return common.serverError(e)


    def access_token_introspect(realm, keycloal_json):
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

        except Exception as e:
            return common.serverError(e)
