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
# from crypt import methods
from flask import Flask, request, jsonify
import os
# import cgi
from datetime import datetime
# import requests
# import pprint
# import json
# import re
# import jwt
# import base64
# from urllib.parse import urlparse
# import traceback
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf

# User Imports
import globals
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING
import auth_proxy

# load environ variables
load_dotenv(override=True)

# common_api_host = os.environ.get('AUTH_API_PROTOCOL') + '://' + os.environ.get('AUTH_API_HOST') + ':' + os.environ.get('AUTH_API_PORT')

# realm name
# realm = os.environ.get('REALM_NAME')
# token_check_client_id = os.environ.get('TOKEN_CHECK_CLIENT_ID')
# トークンチェック用ClientIDのClisentSecret
# Clisent Secret of Client ID for token check
# token_check_client_secret = os.environ.get('TOKEN_CHECK_CLIENT_SECRET')

# post_headers = {
#     'Content-Type': 'application/json',
# }
# allow_headers = 'Content-Type,Authorization,X-Authorization'


# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
app.config.from_envvar('CONFIG_API_AUTHC_INFRA_PATH')
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)


@app.route('/alive', methods=["GET"])
def alive():
    """死活監視

    Returns:
        Response: HTTP Response
    """
    return jsonify({"result": "200", "time": str(datetime.now(globals.TZ))}), 200


@app.route('/api/platform/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
def platform_api_call(subpath):
    """Call the platform API after authorization - 認可後にplatform APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        globals.logger.info('call platform api. method={} subpath={}'.format(request.method, subpath))

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/platform/{}".format(
            os.environ['PLATFORM_API_PROTOCOL'], os.environ['PLATFORM_API_HOST'], os.environ['PLATFORM_API_PORT'], subpath)

        # return jsonify({"result": "200", "time": str(datetime.now(globals.TZ))}), 200

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し
        proxy = auth_proxy.auth_proxy()

        # 各種チェック check
        response_json = proxy.call_fnc()
        # 0以外は、終了
        # Non-zero, end
        if response_json.result != 0:
            return jsonify({"result": response_json.result, "info": response_json.info, "time": str(datetime.now(globals.TZ))}), response_json.result

        # api呼び出し call api
        response_json = proxy.call_api(dest_url)
        # 戻り値をそのまま返却
        # Return the return value as it is
        return jsonify({"result": response_json.result, "info": response_json.info, "time": str(datetime.now(globals.TZ))}), response_json.result

    except Exception as e:
        globals.logger.error(f'Exception : {e.args}')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
        status_code = 500
        info = 'System Error'
        return jsonify({"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}), status_code


@app.route('/api/workspaces/<string:workspace_id>/ita/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
def ita_workspace_api_call(workspace_id, subpath):
    """Call the IT-automation API after authorization - 認可後にIT-automation APIを呼び出します

    Args:
        workspace_id (str): workspace id
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        globals.logger.info('call ita workspace api. method={} workspace_id={} subpath={}'.format(request.method, workspace_id, subpath))

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/workspaces/{}/ita/{}".format(
            os.environ['ITA_API_PROTOCOL'], os.environ['ITA_API_HOST'], os.environ['ITA_API_PORT'], workspace_id, subpath)

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し
        proxy = auth_proxy.auth_proxy()

        # 各種チェック check
        response_json = proxy.call_fnc()
        # 0以外は、終了
        # Non-zero, end
        if response_json.result != 0:
            return jsonify({"result": response_json.result, "info": response_json.info, "time": str(datetime.now(globals.TZ))}), response_json.result

        # api呼び出し call api
        response_json = proxy.call_api(dest_url)
        # 戻り値をそのまま返却
        # Return the return value as it is
        return jsonify({"result": response_json.result, "info": response_json.info, "time": str(datetime.now(globals.TZ))}), response_json.result

    except Exception as e:
        globals.logger.error(f'Exception : {e.args}')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
        status_code = 500
        info = 'System Error'
        return jsonify({"result": status_code, "info": info, "time": str(datetime.now(globals.TZ))}), status_code


# @app.route('/<path:path>')
# def application(path):
#     globals.logger.info("path:" + path)
#     globals.logger.info("os.environ:")
#     globals.logger.info(os.environ)
#     globals.logger.info("request.environ:")
#     globals.logger.info(request.environ)
#     globals.logger.info("request.headers:")
#     globals.logger.info(request.headers)

#     proxy_inst = auth_proxy.auth_proxy()

#     proxy_inst.call_api('TEST')
#     return jsonify({"result": "200", "time": str(datetime.now(globals.TZ))}), 200

#     try:
#         globals.logger.info('Start wsgi. environ={}'.format(environ))

#         api_gateway_host = environ.get('API_PROTOCOL') + '://' + environ.get('API_HOST') + ':' + environ.get('API_PORT')

#         globals.logger.debug(f'api_gateway_host:[{api_gateway_host}]')

#         # start_response('200 OK', [('Content-type', 'text/plain'),
#         #                           ('Access-Control-Allow-Origin', '*'),
#         #                           ('Access-Control-Allow-Headers', allow_headers)])
#         # return [b'TEST OK']

#         # nakami = pprint.pprint(environ)    # environの中身を見やすいように整形して表示

#         # methodを取得
#         # get method
#         method = environ.get('REQUEST_METHOD')
#         globals.logger.info(f'wsgi method={method}')

#         # methodがOPTIONSならstatus 200でリターンを返す（preflight）
#         # If method is OPTIONS, return with status 200 (preflight)
#         if method == 'OPTIONS':
#             start_response('200 OK', [('Content-type', 'text/plain'),
#                                       ('Access-Control-Allow-Origin', '*'),
#                                       ('Access-Control-Allow-Headers', allow_headers)])
#             return [b'Preflight']

#         # bearerを取得
#         # Get bearer
#         bearer = environ.get('HTTP_AUTHORIZATION')

#         # アクセストークンチェックを実行
#         # Extract only the token part
#         if bearer:
#             # ----ここからアクセストークンチェック処理---- #
#             # Access token check process from here

#             # トークン部分のみ抽出
#             # Extract only the token part
#             # TODO：本当にこの取り出し方であってる？「Bearer 」の部分は認証スキームというらしいがそれを取り出すようなそもそものやり方は？
#             p = re.compile(r'bearer (.*)', re.IGNORECASE)
#             m = re.search(p, bearer)
#             # 「bearer XXX」の形式で無い場合エラー
#             # Error if not in "bearer XXX" format
#             if m is None:
#                 start_response('404 NG', [('Content-type', 'text/plain'),
#                                           ('Access-Control-Allow-Origin', '*'),
#                                           ('Access-Control-Allow-Headers', allow_headers)])
#                 return [b'Authorization format is incorrect']
#             access_token = m.group(1)

#             # アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
#             # Extract iss from access token and analyze the protocol / host of the token issuer
#             token_decode = jwt.decode(access_token, options={"verify_signature": False})
#             iss = token_decode.get("iss")
#             if iss is None:
#                 # issが無い場合はNGを返す。
#                 # If there is no iss, NG is returned.
#                 start_response('404 NG', [('Content-type', 'text/plain'),
#                                           ('Access-Control-Allow-Origin', '*'),
#                                           ('Access-Control-Allow-Headers', allow_headers)])
#                 return [b'token check NG']
#             iss_parse = urlparse(iss)
#             keycloak_proto = iss_parse.scheme
#             keycloak_host = iss_parse.netloc

#             # アクセストークンのアクティブチェック
#             # Access token active check
#             payload = {
#                 'client_id': token_check_client_id,
#                 'client_secret': token_check_client_secret,
#                 'access_token': access_token,
#                 'keycloak_proto': keycloak_proto,
#                 'keycloak_host': keycloak_host
#             }

#             url = common_api_host + '/{}/user/token/introspect'.format(realm)
#             ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
#             active = ret.json().get('active')

#             if active is not True:
#                 # アクティブチェックがFalseならNGを返す
#                 # Returns NG if the active check is False
#                 start_response('404 NG', [('Content-type', 'text/plain'),
#                                           ('Access-Control-Allow-Origin', '*'),
#                                           ('Access-Control-Allow-Headers', allow_headers)])
#                 return [b'token check NG']
#             # ----ここまでアクセストークンチェック処理---- #
#             # Access token check processing so far

#         # アクセストークン取得を実行
#         # Execute access token acquisition
#         else:
#             # ----ここからアクセストークン取得処理---- #
#             # Access token acquisition process from here

#             # ユーザID、パスワードを取得
#             # Get user ID and password
#             decode_key_id = base64.b64decode(environ.get('HTTP_X_AUTHORIZATION', '')).decode()
#             globals.logger.debug(f'wsgi decode_key_id={decode_key_id}')
#             r = decode_key_id.split(':')
#             if len(r) < 2:
#                 # ユーザID、パスワードの値が不正な場合
#                 # When the user ID and password values ​​are invalid
#                 start_response('404 NG', [('Content-type', 'text/plain'),
#                                           ('Access-Control-Allow-Origin', '*'),
#                                           ('Access-Control-Allow-Headers', allow_headers)])
#                 return [b'User ID and password are not set correctly']

#             user_id = r[0]
#             user_password = r[1]
#             payload = {
#                 'user_name': user_id,
#                 'password': user_password
#             }

#             # アクセストークンを取得
#             # Get an access token
#             url = common_api_host + '/{}/user/token'.format(realm)
#             globals.logger.debug(f'CALL: {url}')
#             ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
#             globals.logger.debug(f'CALL Reponse: {ret}')
#             access_token = ret.json().get('access_token')
#             if access_token is None:
#                 start_response('404 NG', [('Content-type', 'application/json'),
#                                           ('Access-Control-Allow-Origin', '*'),
#                                           ('Access-Control-Allow-Headers', allow_headers)])
#                 return [b'ID/PW NG']
#             # ----ここまでアクセストークン取得処理---- #
#             # Access token acquisition process up to this point

#         # ヘッダにuser_idの付与 addtional header user_id
#         request_post_headers = post_headers.copy
#         request_post_headers.append(
#             {
#                 "user_id": user_id,
#             }
#         )

#         # ----ここからAPサーバへのリクエスト処理---- #
#         # Request processing from here to the AP server

#         # パラメータを形成
#         # Form parameters
#         length = int(environ.get('CONTENT_LENGTH', 0))
#         if length == 0:
#             request_body = ''
#         else:
#             request_body = environ.get('wsgi.input').read(length).decode('utf-8')

#         # 引数
#         # query_string
#         query_string = environ.get('QUERY_STRING')

#         globals.logger.debug(f'request_body: {request_body}')

#         # リクエスト先URLを作成
#         # Create request URL
#         path_info = environ.get('PATH_INFO')
#         api_base = environ.get('API_BASE')
#         if path_info.startswith(api_base):
#             path_info = path_info[len(api_base) - 1:]
#         globals.logger.debug(f'path_info: {path_info}')

#         url = api_gateway_host + path_info
#         globals.logger.debug(f'CALL url: {url}')

#         # リクエストを実行
#         # Execute request
#         ret = main_request(method, url, request_post_headers, request_body, query_string)
#         # ----ここまでAPサーバへのリクエスト処理---- #
#         # Request processing to the AP server so far

#         globals.logger.info(f'SUCCESS wsgi. ret={ret}')

#         # レスポンスをリターン
#         # Return response
#         if not ret:
#             start_response('404 OK', [('Content-type', 'text/plain'),
#                                       ('Access-Control-Allow-Origin', '*'),
#                                       ('Access-Control-Allow-Headers', allow_headers)])
#             return [b'System Error']
#         else:
#             start_response('200 OK', [('Content-type', 'text/plain'),
#                                       ('Access-Control-Allow-Origin', '*'),
#                                       ('Access-Control-Allow-Headers', allow_headers)])
#             return [ret]

#     except Exception as e:
#         globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
#         start_response('404 NG', [('Content-type', 'application/json'),
#                                   ('Access-Control-Allow-Origin', '*'),
#                                   ('Access-Control-Allow-Headers', allow_headers)])
#         return [b'System Error']


# def main_request(method, url, request_post_headers, request_body, query_string):
#     """
#     APサーバへリクエストを実行
#     Execute a request to the AP server

#     Arguments:
#         method (str): method
#         url (str): url
#         request_post_headers (dic): post headers
#         request_body (str): request body(json)
#         query_string (str): query_string

#     Returns:
#         esponse: HTTP Respose
#     """

#     globals.logger.info(f'Start main_request. method={method} url={url} request_body={request_body} query_string={query_string}')

#     if method == 'GET':
#         ret = requests.get(url, headers=request_post_headers, params=query_string)

#     elif method == 'POST':
#         ret = requests.post(url, headers=request_post_headers, data=request_body, params=query_string)

#     elif method == 'PATCH':
#         ret = requests.patch(url, headers=request_post_headers, data=request_body, params=query_string)

#     elif method == 'PUT':
#         ret = requests.put(url, headers=request_post_headers, data=request_body, params=query_string)

#     elif method == 'DELETE':
#         ret = requests.delete(url, headers=request_post_headers, params=query_string)

#     # requestsの結果が例外の場合exceptへ
#     # If the result of requests is an exception, go to except
#     try:
#         ret.raise_for_status()
#     except Exception:
#         return False

#     # レスポンスをエンコード
#     # Encode the response
#     result_dump = json.dumps(ret.json())
#     result_encode = result_dump.encode('utf-8')

#     globals.logger.info('SUCCESS main_request.')

#     # エンコードしたレスポンスをリターン
#     # Return the encoded response
#     return result_encode

if __name__ == '__main__':
    app.run(
        debug=(True if os.environ.get('FLASK_ENV', 'produciton') == 'development' else False),
        host='0.0.0.0',
        port=int(os.environ.get('FLASK_SERVER_PORT', '8001')),
        threaded=True)
