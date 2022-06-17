# Copyright 2022 NEC Corporation#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

"""
WSGI main module
"""
from flask import Flask, request
import os
import requests
# import pprint
import json
import re
import jwt
import base64
from urllib.parse import urlparse
import traceback
import logging
from logging.config import dictConfig as dictLogConf

# User Imports
import globals
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING

common_api_host = os.environ.get('AUTH_API_PROTOCOL') + '://' + os.environ.get('AUTH_API_HOST') + ':' + os.environ.get('AUTH_API_PORT')

# realm name
realm = os.environ.get('REALM_NAME')
token_check_client_id = os.environ.get('TOKEN_CHECK_CLIENT_ID')
# トークンチェック用ClientIDのClisentSecret
# Clisent Secret of Client ID for token check
token_check_client_secret = os.environ.get('TOKEN_CHECK_CLIENT_SECRET')

post_headers = {
    'Content-Type': 'application/json',
}
allow_headers = 'Content-Type,Authorization,X-Authorization'


# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
app.config.from_envvar('CONFIG_API_AUTHC_INFRA_PATH')
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)


def application(environ, start_response):
    """
    wsgi main application

    Arguments:
        environ:
        start_response:
    Returns:
        Response: HTTP Resposes
    """
    try:
        globals.logger.info('Start wsgi. environ={}'.format(environ))

        api_gateway_host = environ.get('API_PROTOCOL') + '://' + environ.get('API_HOST') + ':' + environ.get('API_PORT')

        globals.logger.debug(f'api_gateway_host:[{api_gateway_host}]')

        # start_response('200 OK', [('Content-type', 'text/plain'),
        #                           ('Access-Control-Allow-Origin', '*'),
        #                           ('Access-Control-Allow-Headers', allow_headers)])
        # return [b'TEST OK']

        # nakami = pprint.pprint(environ)    # environの中身を見やすいように整形して表示

        # methodを取得
        # get method
        method = environ.get('REQUEST_METHOD')
        globals.logger.info(f'wsgi method={method}')

        # methodがOPTIONSならstatus 200でリターンを返す（preflight）
        # If method is OPTIONS, return with status 200 (preflight)
        if method == 'OPTIONS':
            start_response('200 OK', [('Content-type', 'text/plain'),
                                      ('Access-Control-Allow-Origin', '*'),
                                      ('Access-Control-Allow-Headers', allow_headers)])
            return [b'Preflight']

        # bearerを取得
        # Get bearer
        bearer = environ.get('HTTP_AUTHORIZATION')

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
                start_response('404 NG', [('Content-type', 'text/plain'),
                                          ('Access-Control-Allow-Origin', '*'),
                                          ('Access-Control-Allow-Headers', allow_headers)])
                return [b'Authorization format is incorrect']
            access_token = m.group(1)

            # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
            # Extract iss from access token and analyze the protocol / host of the token issuer
            token_decode = jwt.decode(access_token, options={"verify_signature": False})
            iss = token_decode.get("iss")
            if iss is None:
                # issが無い場合はNGを返す。
                # If there is no iss, NG is returned.
                start_response('404 NG', [('Content-type', 'text/plain'),
                                          ('Access-Control-Allow-Origin', '*'),
                                          ('Access-Control-Allow-Headers', allow_headers)])
                return [b'token check NG']
            iss_parse = urlparse(iss)
            keycloak_proto = iss_parse.scheme
            keycloak_host = iss_parse.netloc

            # アクセストークンのアクティブチェック
            # Access token active check
            payload = {
                'client_id': token_check_client_id,
                'client_secret': token_check_client_secret,
                'access_token': access_token,
                'keycloak_proto': keycloak_proto,
                'keycloak_host': keycloak_host
            }

            url = common_api_host + '/{}/user/token/introspect'.format(realm)
            ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
            active = ret.json().get('active')

            if active is not True:
                # アクティブチェックがFalseならNGを返す
                # Returns NG if the active check is False
                start_response('404 NG', [('Content-type', 'text/plain'),
                                          ('Access-Control-Allow-Origin', '*'),
                                          ('Access-Control-Allow-Headers', allow_headers)])
                return [b'token check NG']
            # ----ここまでアクセストークンチェック処理---- #
            # Access token check processing so far

        # アクセストークン取得を実行
        # Execute access token acquisition
        else:
            # ----ここからアクセストークン取得処理---- #
            # Access token acquisition process from here

            # ユーザID、パスワードを取得
            # Get user ID and password
            decode_key_id = base64.b64decode(environ.get('HTTP_X_AUTHORIZATION', '')).decode()
            globals.logger.debug(f'wsgi decode_key_id={decode_key_id}')
            r = decode_key_id.split(':')
            if len(r) < 2:
                # ユーザID、パスワードの値が不正な場合
                # When the user ID and password values ​​are invalid
                start_response('404 NG', [('Content-type', 'text/plain'),
                                          ('Access-Control-Allow-Origin', '*'),
                                          ('Access-Control-Allow-Headers', allow_headers)])
                return [b'User ID and password are not set correctly']

            user_id = r[0]
            user_password = r[1]
            payload = {
                'user_name': user_id,
                'password': user_password
            }

            # アクセストークンを取得
            # Get an access token
            url = common_api_host + '/{}/user/token'.format(realm)
            globals.logger.debug(f'CALL: {url}')
            ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
            globals.logger.debug(f'CALL Reponse: {ret}')
            access_token = ret.json().get('access_token')
            if access_token is None:
                start_response('404 NG', [('Content-type', 'application/json'),
                                          ('Access-Control-Allow-Origin', '*'),
                                          ('Access-Control-Allow-Headers', allow_headers)])
                return [b'ID/PW NG']
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
        length = int(environ.get('CONTENT_LENGTH', 0))
        if length == 0:
            request_body = ''
        else:
            request_body = environ.get('wsgi.input').read(length).decode('utf-8')

        # 引数
        # query_string
        query_string = environ.get('QUERY_STRING')

        globals.logger.debug(f'request_body: {request_body}')

        # リクエスト先URLを作成
        # Create request URL
        path_info = environ.get('PATH_INFO')
        api_base = environ.get('API_BASE')
        if path_info.startswith(api_base):
            path_info = path_info[len(api_base) - 1:]
        globals.logger.debug(f'path_info: {path_info}')

        url = api_gateway_host + path_info
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
            start_response('404 OK', [('Content-type', 'text/plain'),
                                      ('Access-Control-Allow-Origin', '*'),
                                      ('Access-Control-Allow-Headers', allow_headers)])
            return [b'System Error']
        else:
            start_response('200 OK', [('Content-type', 'text/plain'),
                                      ('Access-Control-Allow-Origin', '*'),
                                      ('Access-Control-Allow-Headers', allow_headers)])
            return [ret]

    except Exception as e:
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
        start_response('404 NG', [('Content-type', 'application/json'),
                                  ('Access-Control-Allow-Origin', '*'),
                                  ('Access-Control-Allow-Headers', allow_headers)])
        return [b'System Error']


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
