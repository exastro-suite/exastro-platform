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
import requests
# import pprint
import json
import jwt
import base64
from urllib.parse import urlparse
import traceback
import re
import inspect
from multipart import multipart
import werkzeug.exceptions

# User Imports
import globals
import const
import common_library.common.common as common
import common_library.common.const as common_const
# import api_keycloak_tokens
import config.auth.auth_pattern as auth_pattern
# import api_keycloak_call
import common_library.common.api_keycloak_tokens as api_keycloak_tokens
from common_library.common import multi_lang


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

    # 監査ログ用の情報収集変数
    # Information collection variables for audit logs
    request_forms = {}
    request_files = {}

    # def __init__(self):
    def __init__(self, realm, token_check_client_id, token_check_client_secret, user_token_client_id, user_token_client_secret, response_chunk_byte):
        """初期化処理 initialize setting

        Args:
            realm (str): realm name
            token_check_client_id (str): token check client id
            token_check_client_secret (str): token check client secret
            user_token_client_id (str): user token check client id
            response_chunk_byte (int): response chunk byte size

        """
        self.realm = realm

        # 接続先のClient設定
        # Client settings for connection destination
        self.token_check_client_id = token_check_client_id
        self.token_check_client_secret = token_check_client_secret
        self.user_token_client_id = user_token_client_id
        self.user_token_client_secret = user_token_client_secret
        self.response_chunk_byte = response_chunk_byte

        self.request_forms = {}
        self.request_files = {}

    def check_authorization(self, stream_mode=False):  # noqa: C901
        """認証情報チェック Authorization check

        Args:
            stream_mode (bool) :    True is stream mode (submit form authorization)
                                    False is not stream mode (header authorization)

        Returns:
            json :
            {
                "result": status_code,
                "info": info json,
                "time": now datetime
            }
        """

        globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name}")

        # methodを取得
        # get method
        method = request.method
        globals.logger.debug(f'wsgi method={method}')

        # methodがOPTIONSならstatus 200でリターンを返す（preflight）
        # If method is OPTIONS, return with status 200 (preflight)
        if method == 'OPTIONS':
            status_code = 200
            info = 'Preflight'
            return {"result": status_code, "data": info}

        # bearerを取得
        # Get bearer
        # bearer = environ.get('HTTP_AUTHORIZATION')
        if stream_mode:
            get_auth = request.headers.get('Authorization')
            # ヘッダーがあれば、ヘッダー優先、なければformの値から取得する
            # If there is a header, give priority to the header, otherwise get it from the form value
            if not get_auth:
                get_auth = request.form.get('authorization')
        else:
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

                    except common.AuthException:
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

        allowd = self.is_allowed_request()
        if not allowd:
            info = 'Access is not allowed'
            raise common.NotAllowedException(info)

        token_roles = self.token_decode.get("resource_access", {}).get(self.user_token_client_id)
        globals.logger.debug(f'token_roles={token_roles}')

        roles_str = ""
        org_roles_str = ""

        if token_roles and "roles" in token_roles:
            org_roles = []
            ws_roles = []
            # organization role と workspace role で分ける
            # Separate by organization role and workspace role
            for token_role in token_roles["roles"]:
                globals.logger.debug(f'token_role={token_role}')
                if token_role in common_const.ALL_ORG_ROLES or \
                   token_role in common_const.ALL_ORG_AUTHORITIES:
                    # organization roles
                    org_roles.append(token_role)
                else:
                    ws_roles.append(token_role)

            globals.logger.debug(f'ws_roles={ws_roles}')
            globals.logger.debug(f'org_roles_str={org_roles}')

            if ws_roles:
                roles_str = base64.b64encode("\n".join(ws_roles).encode()).decode()
            if org_roles:
                org_roles_str = base64.b64encode("\n".join(org_roles).encode()).decode()

        status_code = 0
        info = {
            "User-Id": self.token_decode.get("sub"),
            "Roles": roles_str,
            "Org-Roles": org_roles_str,
            "Language": self.token_decode.get("locale") or "ja",
        }
        user_info = {
            "user_id": self.token_decode.get("sub"),
            "username": self.token_decode.get("preferred_username"),
        }
        return {"status_code": status_code, "data": info, "user_info": user_info}

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

    def call_api(self, dest_url, info, stream=False, multipart_mode=False):
        """API呼び出し Call API

        Args:
            dest_url (str): 呼び出し先のURL URL of the callee
            info (dic): 認証で取得した情報 Information obtained by authentication
            {
                "user_id": user id
            }
            stream (bool): True: stream mode call (default. False)
            multipart_mode (bool): True: multipart/form-data mode call (default. False)

        Returns:
            _type_: _description_
        """

        globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name}")

        globals.logger.debug(f'{dest_url=}')

        # ヘッダにuser_idの付与 addtional header user_id
        post_headers = {
            'organization_id': self.realm,
        }
        post_headers.update(info)
        globals.logger.debug(f'{post_headers=}')

        # method
        request_method = request.method
        globals.logger.debug(f'{request_method=}')

        # 引数
        # query_string
        query_string = request.query_string
        globals.logger.debug(f'{query_string=}')

        # multipartモードの場合は、BODY系要素のアクセスは行わない(大容量ファイルにおいてもアクセスするとすべて送信されるまで待たされる)
        # In multipart mode, BODY elements are not accessed (even if you access a large file, you will have to wait until all files are sent)
        if not multipart_mode:
            request_body = {}
            request_form = {}
            request_files = {}

            # パラメータを形成
            # Form parameters
            if request.is_json:
                try:
                    request_body = request.json.copy()
                    globals.logger.debug(f'{request_body=}')
                except Exception:
                    request_body = {}

            # パラメータを形成(multipart/form-data)
            # form parameters, files parameters
            if request.form:
                try:
                    request_form = request.form.copy()
                    globals.logger.debug(f'{request_form=}')
                except Exception:
                    request_form = {}
            if request.files:
                try:
                    request_files = request.files.copy()
                    globals.logger.debug(f'{request_files=}')
                except Exception:
                    request_files = {}

            # レスポンスContent-Type
            if request.content_type:
                request_content_type = request.content_type.lower()
            else:
                request_content_type = ""
            globals.logger.debug(f'{request_content_type=}')

            # リクエストを実行
            # Execute request
            ret = self.main_request(request_method, dest_url, post_headers, request_body, query_string, request_content_type, request_form, request_files, stream=stream)
            # ----ここまでAPサーバへのリクエスト処理---- #
            # Request processing to the AP server so far
        else:

            # リクエストを実行
            # Execute request
            ret = self.prepared_request(request_method, dest_url, post_headers, query_string)
            # ----ここまでAPサーバへのリクエスト処理---- #
            # Request processing to the AP server so far

        globals.logger.debug(f'return request {ret=}')

        # レスポンスをリターン
        # Return response
        # status_code = ret.status_code
        globals.logger.debug(f'SUCCESS call_api. {ret.status_code=}')
        return ret
        # json check to disabled
        # try:
        #     info = json.loads(ret.text)
        #     result_dump = json.dumps(info)
        #     result_encode = result_dump.encode('utf-8')
        #     globals.logger.debug(f'SUCCESS call_api. status_code={status_code} info={result_encode}')

        #     return ret
        # except json.JSONDecodeError:
        #     info = ret.text
        #     message_id = "500-00001"
        #     globals.logger.debug(f'SUCCESS call_api. status_code={status_code} info={info}')
        # raise common.InternalErrorException(None, message_id, common.multi_lang.get_text(message_id, "システムエラー"))

    def call_fnc(self, func, args):
        """Auth api call

        Args:
            func (_type_): _description_
            args (_type_): _description_
        """
        try:
            globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name}")
        except Exception as e:
            globals.logger.error(f'Exception : {e.args}')
            globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
            raise

    def main_request(self, method, url, post_headers, request_body, query_string, request_content_type=None, request_form={}, request_files={}, stream=False):
        """
        APサーバへリクエストを実行
        Execute a request to the AP server

        Arguments:
            method (str): method
            url (str): url
            post_headers (dic): post headers
            request_body (str): request body(json)
            query_string (str): query_string
            request_content_type (str): Content-Type
            request_form (dic): request form
            request_files (dic): request files
        Returns:
            esponse: HTTP Respose
        """

        globals.logger.debug(f'### start func:{inspect.currentframe().f_code.co_name} {method=} {url=} {request_body=} {query_string=}'
                             f'{request_content_type=} {request_form=}, {request_form=}')

        # method、request_content_typeによって、呼び出しの内容を変える
        # Change the content of the call depending on method and request_content_type
        if method == 'GET':
            ret = requests.get(url, headers=post_headers, params=query_string, stream=stream)

        elif method == 'POST':
            if 'application/json' in request_content_type:
                ret = requests.post(url, headers=post_headers, json=request_body, params=query_string, stream=stream)
            elif 'multipart/form-data' in request_content_type:
                ret = requests.post(url, headers=post_headers, data=request_form, files=request_files, params=query_string, stream=stream)
            elif 'application/x-www-form-urlencoded' in request_content_type:
                ret = requests.post(url, headers=post_headers, data=request_form, params=query_string, stream=stream)
            else:
                ret = requests.post(url, headers=post_headers, json=request_body, params=query_string, stream=stream)

        elif method == 'PATCH':
            if 'application/json' in request_content_type:
                ret = requests.patch(url, headers=post_headers, json=request_body, params=query_string, stream=stream)
            elif 'multipart/form-data' in request_content_type:
                ret = requests.patch(url, headers=post_headers, data=request_form, files=request_files, params=query_string, stream=stream)
            elif 'application/x-www-form-urlencoded' in request_content_type:
                ret = requests.post(url, headers=post_headers, data=request_form, params=query_string, stream=stream)
            else:
                ret = requests.patch(url, headers=post_headers, json=request_body, params=query_string, stream=stream)

        elif method == 'PUT':
            if 'application/json' in request_content_type:
                ret = requests.put(url, headers=post_headers, json=request_body, params=query_string, stream=stream)
            elif 'multipart/form-data' in request_content_type:
                ret = requests.put(url, headers=post_headers, data=request_form, files=request_files, params=query_string, stream=stream)
            elif 'application/x-www-form-urlencoded' in request_content_type:
                ret = requests.post(url, headers=post_headers, data=request_form, params=query_string, stream=stream)
            else:
                ret = requests.put(url, headers=post_headers, json=request_body, params=query_string, stream=stream)

        elif method == 'DELETE':
            ret = requests.delete(url, headers=post_headers, params=query_string, stream=stream)

        # 取得したレスポンスの内容を退避
        # Save the contents of the acquired response
        self.response_original = ret

        globals.logger.debug(f"### end func:{inspect.currentframe().f_code.co_name}")

        # エンコードしたレスポンスをリターン
        # Return the encoded response
        return ret

    def prepared_request(self, method, url, post_headers, query_string):
        """
        APサーバへリクエストを実行
        Execute a request to the AP server

        Arguments:
            method (str): method
            url (str): url
            post_headers (dic): post headers
            query_string (str): query_string
        Returns:
            esponse: HTTP Respose
        """

        globals.logger.debug(f'### start func:{inspect.currentframe().f_code.co_name} {method=} {url=}')

        post_headers.update({
            'Content-Type': request.headers.get("Content-Type"),
            'Content-Length': request.headers.get("Content-Length")
        })

        req = requests.PreparedRequest()
        req.prepare(method=request.method, url=url, data=self.request_stream_processer())
        req.prepare_headers(post_headers)

        with requests.Session() as ses:
            ret = ses.send(req)

        # 取得したレスポンスの内容を退避
        # Save the contents of the acquired response
        self.response_original = ret

        globals.logger.debug(f"{self.request_forms=}")
        globals.logger.debug(f"{self.request_files=}")

        globals.logger.debug(f"### end func:{inspect.currentframe().f_code.co_name}")

        # エンコードしたレスポンスをリターン
        # Return the encoded response
        return ret

    def request_stream_processer(self):
        """request streamを解析し、転送(yield)する

        Yields:
            bytes: request body chunk
        """
        chunk_size = self.response_chunk_byte
        # request bodyの残bytes
        content_remaining_length = int(request.headers.get('Content-Length'))
        # multipart/form-dataのparser生成
        form_parser = multipart.FormParser(
            content_type=request.headers.get('Content-Type').split(';')[0],
            boundary=request.headers.get('Content-Type').split('boundary=')[1],
            on_field=self.on_field,
            on_file=self.on_file,
            FileClass=self.CustomFileClass,
        )

        try:
            while True:
                # request bodyの読み込み
                buf = request.stream.read(min(chunk_size, content_remaining_length))

                if len(buf) == 0:
                    break
                yield buf
                # multipart/form-dataのparserに書き込み
                form_parser.write(buf)
                # request bodyの残bytesを減算
                content_remaining_length -= len(buf)
                # request bodyがContent-Lengthに達したら抜ける
                if content_remaining_length <= 0:
                    break
            form_parser.finalize()

        except werkzeug.exceptions.ClientDisconnected as e:
            globals.logger.info(f'werkzeug.exceptions.ClientDisconnected:{e.args}')
            message_id = "401-11001"
            message = multi_lang.get_text(message_id, "要求が中断されました。")
            raise common.BadRequestException(message_id=message_id, message=message)
        except (multipart.FormParserError,
                multipart.MultipartParseError,
                multipart.QuerystringParseError) as e:
            globals.logger.info(f'multipart ParserError:{e.args}')
            message_id = "401-11002"
            message = multi_lang.get_text(message_id, "request bodyが不正です。")
            raise common.BadRequestException(message_id=message_id, message=message)
        finally:
            form_parser.close()

    def on_field(self, field: multipart.Field):
        """FormParserのon_fieldイベントハンドラ

        Args:
            field (Field): 項目情報
        """
        field_name = field.field_name.decode()
        if field_name not in self.request_forms:
            self.request_forms[field_name] = [field.value.decode()]
        else:
            self.request_forms[field_name].append(field.value.decode())

    def on_file(self, file: multipart.File):
        """FormParserのon_fileイベントハンドラ

        Args:
            file (File): 項目情報（ファイル）
        """
        field_name = file.field_name.decode()
        file_item = {
            "file_name": file.file_name.decode()
        }
        if field_name not in self.request_files:
            self.request_files[field_name] = [file_item]
        else:
            self.request_files[field_name].append(file_item)

    class CustomFileClass(multipart.File):
        """FormParserのファイル処理のカスタムClass
            （ファイル保存しないようにpassでoverrideする）

        Args:
            File (_type_): _description_
        """
        def write(self, data: bytes):
            pass

        def finalize(self) -> None:
            pass

        def close(self) -> None:
            pass

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
            globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {realm=}")

            # アクセストークン取得
            # get access token
            # access_token = api_keycloak_tokens.get_user_token(user_name, password, realm)
            access_token_response = api_keycloak_tokens.client_user_get_token(
                realm, self.user_token_client_id, self.user_token_client_secret, user_name, password)

            if access_token_response.status_code != 200:
                raise common.AuthException("client_user_get_token error status:{}, response:{}".format(
                    access_token_response.status_code, access_token_response.text))

            access_token = json.loads(access_token_response.text)["access_token"]

            globals.logger.debug(f"### end func:{inspect.currentframe().f_code.co_name}")

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
            globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {realm=}")

            # パラメータ情報(JSON形式)
            # Parameter information (JSON format)
            client_id = keycloak_json.get("client_id")
            client_secret = keycloak_json.get("client_secret")
            access_token = keycloak_json.get("access_token")
            keycloak_proto = keycloak_json.get("keycloak_proto")
            keycloak_host = keycloak_json.get("keycloak_host")

            # トークンイントロスペクション
            # token introspection
            introspect_response = api_keycloak_tokens.user_token_introspect(
                client_id, client_secret, realm, access_token, keycloak_proto, keycloak_host)

            if introspect_response.status_code != 200:
                raise Exception("user_token_introspect error status:{}, response:{}".format(
                    introspect_response.status_code, introspect_response.text))

            active = json.loads(introspect_response.text).get('active')

            globals.logger.debug(f"### end func:{inspect.currentframe().f_code.co_name}")

            return active

        except Exception:
            raise

    def is_allowed_request(self):
        """check if the request is allowed - リクエストが許可されているかチェックします

        Returns:
            bool: True = allowed / False = denied
        """
        globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name} {request.path=} {request.method=}")

        # check from the back - 後ろから順番にチェックする
        for pattern in reversed(auth_pattern.AUTH_PATTERN):

            match = re.match(pattern["url"], request.path)
            if not match:
                # If the URL does not match, proceed to the next - URLが一致していない時は次に進む
                continue

            # Get variables obtained by regular expression as a dictionary - 正規表現で取得した変数をディクショナリとして取得する
            match_dict = {}
            for k, v in match.groupdict().items():
                match_dict[k] = re.escape(v)

            for auth in pattern["auth"]:
                if not ("*" in auth["method"] or request.method in auth["method"]):
                    # If the method does not match, proceed to the next - methodが一致していない時は次に進む
                    continue

                # When the method matches, check if there is a match for the role
                # - methodが一致した時、roleに合致するものが存在するかチェックする
                for role in auth["roles"]:
                    role_name = role["role"].format(**match_dict)
                    role_name_re = "^" + role_name + "$"
                    if role.get("client") is None:
                        # If client is not specified, check if there is anything that matches the realm role
                        # - clientの指定が無いときはrealmロールに合致するものが無いかチェックする
                        my_roles = self.token_decode.get("realm_access", {}).get("roles", [])
                        for my_role in my_roles:
                            if re.match(role_name_re, my_role):
                                globals.logger.debug('SUCCEED Is allowed request. Realm-role={}'.format(role_name))
                                return True
                    else:
                        # If client is specified, check if there is anything that matches the client role
                        # - clientの指定があるときはclientロールに合致するものが無いかチェックする
                        role_client = role["client"].format(**(match.groupdict()))
                        my_roles = self.token_decode.get("resource_access", {}).get(role_client, {}).get("roles", [])
                        for my_role in my_roles:
                            if re.match(role_name_re, my_role):
                                globals.logger.debug('SUCCEED Is allowed request. client-role={}.{}'.format(role_client, role_name))
                                return True

                # Access is not allowed when the method matches and there is no match for the role
                # - methodが一致し、roleに合致するものが存在しないときはaccess不可
                globals.logger.debug('FORBIDDEN Is allowed request.')
                return False

            # Access is allowed when there is no matching method
            # - methodに一致するものが無いときはAccess可する
            globals.logger.debug('SUCCEED Is allowed request. method no match')
            return True

        # Access is allowed when there is no matching url
        # - urlに一致するものが無いときはAccess可する
        globals.logger.debug('SUCCEED Is allowed request. pattern no match')
        return True
