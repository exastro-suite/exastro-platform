# Copyright 2022 NEC Corporation
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

from flask import request, make_response
import os
from contextlib import closing
import json
import inspect
import requests
import jwt

from common_library.common import common
from common_library.common.db import DBconnector
from libs import queries_token

import globals

MSG_FUNCTION_ID = "30"


def token_create(organization_id, token_request_body, execute_user_id=None):
    """create token

    Args:
        organization_id (str): organization id
        execute_user_id (str): execute user id

    Returns:
        _type_: _description_
    """
    try:
        headers_data = {
            # "Content-Type": request.content_type,
            "Content-Type": "application/x-www-form-urlencoded",
            "X-Forwarded-Host": request.headers.get("X-Forwarded-Host"),
            "X-Forwarded-Proto": request.headers.get("X-Forwarded-Proto"),
        }

        # call keycloak token api
        redirect_response = requests.post(
            f"{os.environ['API_KEYCLOAK_PROTOCOL']}://{os.environ['API_KEYCLOAK_HOST']}:{os.environ['API_KEYCLOAK_PORT']}/auth/realms/{organization_id}/protocol/openid-connect/token",
            data=token_request_body,
            headers=headers_data,
        )

        if redirect_response.status_code == 200:
            # When the token is successfully issued - tokenの発行に成功した時
            # Write refresh_token information - refresh_tokenの情報を書き込む

            # Decode refresh_token - refresh_tokenをデコードする
            refresh_token = json.loads(redirect_response.text)["refresh_token"]
            refresh_token_decode = jwt.decode(refresh_token, options={"verify_signature": False})

            # Extract expiration date of refresh_token - refresh_tokenの有効期限を取り出す
            try:
                refresh_token_expire = common.keycloak_timestamp_to_datetime(refresh_token_decode['exp'] * 1000)
            except Exception:
                refresh_token_expire = None

            globals.logger.info(f"create refresh token user_id={refresh_token_decode['sub']} session_id={refresh_token_decode['sid']} expire_timestamp={common.datetime_to_str(refresh_token_expire)}")

            # write to T_REFRESH_TOKEN - T_REFRESH_TOKENに書き込む
            db = DBconnector()
            if organization_id == "master":
                with closing(db.connect_platformdb()) as conn:
                    with conn.cursor() as cursor:
                        parameter = {
                            "user_id": refresh_token_decode['sub'],
                            "session_id": refresh_token_decode['sid'],
                            "expire_timestamp": refresh_token_expire,
                            "create_user": refresh_token_decode['sub'] if execute_user_id is None else execute_user_id,
                            "last_update_user": refresh_token_decode['sub']
                        }
                        cursor.execute(queries_token.SQL_INSERT_REFRESH_TOKEN, parameter)

                        conn.commit()

            else:
                with closing(db.connect_orgdb(organization_id)) as conn:
                    with conn.cursor() as cursor:
                        parameter = {
                            "user_id": refresh_token_decode['sub'],
                            "session_id": refresh_token_decode['sid'],
                            "expire_timestamp": refresh_token_expire,
                            "create_user": refresh_token_decode['sub'] if execute_user_id is None else execute_user_id,
                            "last_update_user": refresh_token_decode['sub']
                        }
                        cursor.execute(queries_token.SQL_INSERT_REFRESH_TOKEN, parameter)

                        conn.commit()

        # remake response header
        excluded_headers = ['content-encoding', 'content-length', 'connection', 'keep-alive', 'proxy-authenticate',
                            'proxy-authorization', 'te', 'trailers', 'transfer-encoding', 'Upgrade']
        headers = {
            k: v for k, v in redirect_response.raw.headers.items()
            if k.lower() not in excluded_headers
        }

        # 戻り値をそのまま返却
        # Return the return value as it is
        response = make_response()
        response.status_code = redirect_response.status_code
        response.data = redirect_response.content
        response.headers = headers

        return response

    except Exception as e:
        # When an error occurs, respond in the same format as keycloak (openid-connect format)
        # エラー発生時はkeycloakと同じ形式(openid-connect format)で応答する
        import traceback
        info = e.__class__.__name__
        globals.logger.error(f'last call:[{info}] Exception:{e.args}')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
        status_code = 500
        return {"error": "server error", "error_description": "server error"}, status_code

