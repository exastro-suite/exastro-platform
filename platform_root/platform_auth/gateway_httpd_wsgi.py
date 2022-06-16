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
～～このファイルの概要を記載する～～
"""
import os
import requests
import pprint
import json
import re
import jwt
import base64
from urllib.parse import urlparse
import traceback

common_api_host = os.environ.get('AUTH_API_PROTOCOL') + '://' + os.environ.get('AUTH_API_HOST') + ':' + os.environ.get('AUTH_API_PORT')

realm = os.environ.get('REALM_NAME') #realm名(最終的にこっちを使う)
token_check_client_id = os.environ.get('TOKEN_CHECK_CLIENT_ID')
token_check_client_secret = os.environ.get('TOKEN_CHECK_CLIENT_SECRET') #トークンチェック用ClientIDのClisentSecret

post_headers = {
    'Content-Type': 'application/json',
}
allow_headers = 'Content-Type,Authorization,X-Authorization'


def application(environ, start_response):
    """
    ～関数の概要を書く～

    Arguments:
        environ:
        start_response:
    Returns:
        Response: HTTP Resposes
    """
    ###メモ：ここからtry/exceptで囲っていい？
    api_gateway_host = environ.get('API_PROTOCOL') + '://' + environ.get('API_HOST') + ':' + environ.get('API_PORT')
    print(api_gateway_host)
    try:

        print("---------------------ita-wsgi.py START---------------------")
        print(environ)
        # start_response('200 OK', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
        # return [b'TEST OK']

        #nakami = pprint.pprint(environ)    # environの中身を見やすいように整形して表示

        #methodを取得
        method = environ.get('REQUEST_METHOD')
        print(method)

        #methodがOPTIONSならstatus 200でリターンを返す（preflight）
        if method == 'OPTIONS':
            start_response('200 OK', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
            return [b'Preflight']

        #bearerを取得
        bearer = environ.get('HTTP_AUTHORIZATION')

        if bearer: #アクセストークンチェックを実行
            #----ここからアクセストークンチェック処理----#
            #トークン部分のみ抽出
            #メモ：本当にこの取り出し方であってる？「Bearer 」の部分は認証スキームというらしいがそれを取り出すようなそもそものやり方は？
            p = re.compile(r'bearer (.*)', re.IGNORECASE)
            m = re.search(p, bearer)
            #「bearer XXX」の形式で無い場合エラー
            if m is None:
                start_response('404 NG', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
                return [b'Authorization format is incorrect']
            access_token = m.group(1)

            #アクセストークンからissを抽出し、トークン発行元のプロトコル/ホストを解析
            token_decode = jwt.decode(access_token, options={"verify_signature": False})
            iss = token_decode.get("iss")
            if iss is None:
                #issが無い場合はNGを返す。
                start_response('404 NG', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
                return [b'token check NG']
            iss_parse = urlparse(iss)
            keycloak_proto = iss_parse.scheme
            keycloak_host = iss_parse.netloc

            #アクセストークンのアクティブチェック
            payload = {
                'client_id' : token_check_client_id,
                'client_secret' : token_check_client_secret,
                'access_token' : access_token,
                'keycloak_proto' : keycloak_proto,
                'keycloak_host' : keycloak_host
            }

            url = common_api_host + '/{}/user/token/introspect'.format(realm)
            ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
            active = ret.json().get('active')

            if not active == True:
                #アクティブチェックがFalseならNGを返す
                start_response('404 NG', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
                return [b'token check NG']
            #----ここまでアクセストークンチェック処理----#

        else: #アクセストークン取得を実行
            #----ここからアクセストークン取得処理----#
            #ユーザID、パスワードを取得
            decode_key_id = base64.b64decode(environ.get('HTTP_X_AUTHORIZATION','')).decode()
            print('decode_key_id:' + decode_key_id)
            r = decode_key_id.split(':')
            if len(r) < 2:
                #ユーザID、パスワードの値が不正な場合
                start_response('404 NG', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
                return [b'User ID and password are not set correctly']

            user_id = r[0]
            user_password = r[1]
            payload = {
                'user_name' : user_id,
                'password' : user_password
            }

            #アクセストークンを取得
            url = common_api_host + '/{}/user/token'.format(realm)
            print('CALL:' + url)
            ret = requests.post(url, headers=post_headers, data=json.dumps(payload))
            print(ret)
            access_token = ret.json().get('access_token')
            if access_token is None:
                start_response('404 NG', [('Content-type', 'application/json'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
                return [b'ID/PW NG']
            #----ここまでアクセストークン取得処理----#

        #----ここからAPサーバへのリクエスト処理----#
        #パラメータを形成
        length = int(environ.get('CONTENT_LENGTH', 0))
        if length == 0:
            request_body = ''
        else:
            request_body = environ.get('wsgi.input').read(length).decode('utf-8')

        print(request_body)

        #リクエスト先URLを作成
        path_info = environ.get('PATH_INFO')
        api_base = environ.get('API_BASE')
        if path_info.startswith(api_base):
            path_info = path_info[len(api_base)-1:]
        print(path_info)

        url = api_gateway_host + path_info
        print(url)

        #リクエストを実行
        ret = main_request(method, url, request_body)
        #----ここまでAPサーバへのリクエスト処理----#

        #レスポンスをリターン
        #print(ret)
        if not ret:
            start_response('404 OK', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
            return [b'System Error']
        else:
            start_response('200 OK', [('Content-type', 'text/plain'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
            return [ret]

    except Exception as e:
        print((''.join(list(traceback.TracebackException.from_exception(e).format()))))
        start_response('404 NG', [('Content-type', 'application/json'), ('Access-Control-Allow-Origin', '*'), ('Access-Control-Allow-Headers', allow_headers)])
        return [b'System Error']


def main_request(method, url, request_body):
    """
    APサーバへリクエストを実行

    Arguments:
        method (str): method
        url (str): url
        request_body (str): request body(json)

    Returns:
        esponse: HTTP Respose
    """

    print("------main_request START------")

    if method == 'GET':
        ret = requests.get(url)

    elif method == 'POST':
        ret = requests.post(url, headers=post_headers, data=request_body)

    elif method == 'PATCH':
        ret = requests.patch(url, headers=post_headers, data=request_body)

    elif method == 'PUT':
        ret = requests.put(url)

    elif method == 'DELETE':
        ret = requests.delete(url)

    #requestsの結果が例外の場合exceptへ
    try:
        ret.raise_for_status()
    except Exception as e:
        return False

    #レスポンスをエンコード
    result_dump = json.dumps(ret.json())
    result_encode = result_dump.encode('utf-8')

    #エンコードしたレスポンスをリターン
    return result_encode
