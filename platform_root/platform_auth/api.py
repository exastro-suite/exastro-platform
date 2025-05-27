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
from flask import Flask, request, make_response, Response
import os
import requests
from datetime import datetime
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID
import inspect
import traceback
from pathlib import Path
import urllib.parse
from contextlib import closing
import re
import json


# User Imports
import globals
import common_library.common.common as common
import common_library.common.const as common_const
import common_library.common.maintenancemode as maintenancemode
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common import bl_common_service
import auth_proxy
import config.stream.stream_pattern as stream_pattern

from audit_logging import audit_getLogger

# load environ variables
load_dotenv(override=True)

# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory, request))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

globals.logger.setLevel(os.getenv('LOG_LEVEL'))

RequestID(app)

audit_path = Path('/var/log/exastro')

# 監査ログのLogger設定
globals.audit = audit_getLogger('audit',
                                audit_path.joinpath(os.getenv('AUDIT_LOG_PATH')),
                                os.getenv('AUDIT_LOG_ENABLED').lower() == 'true',
                                int(os.getenv('AUDIT_LOG_FILE_MAX_BYTE')),
                                int(os.getenv('AUDIT_LOG_BACKUP_COUNT')))


@app.route('/health-check/liveness', methods=["GET"])
@common.platform_exception_handler
def liveness():
    """health check - liveness

    Returns:
        Response: HTTP Response
    """
    return "OK", 200


@app.route('/health-check/readiness', methods=["GET"])
@common.platform_exception_handler
def readiness():
    """health check - readiness

    Returns:
        Response: HTTP Response
    """
    return "OK", 200


@app.route('/auth/realms/<string:organization_id>/protocol/openid-connect/token', methods=["POST"])
@common.platform_exception_handler
def openid_connect_token(organization_id):
    """get token
    Args:
        organization_id (str): organization id
    Returns:
        Response: HTTP Response
    """

    # proxy destination
    if (request.form.get('client_id') == f"_{organization_id}-api" or (organization_id == 'master' and request.form.get('client_id') == '_platform-api')) \
        and request.form.get('grant_type') == 'password' \
            and 'offline_access' in request.form.get('scope'):
        # case get refresh token
        # call platform api
        proxy_location_origin = f"{os.environ['PLATFORM_API_PROTOCOL']}://{os.environ['PLATFORM_API_HOST']}:{os.environ['PLATFORM_API_PORT']}"
    else:
        # case other
        # call keycloak
        proxy_location_origin = f"{os.environ['KEYCLOAK_PROTOCOL']}://{os.environ['KEYCLOAK_HOST']}:{os.environ['KEYCLOAK_PORT']}"

    headers = {"Content-Type": request.content_type, "User-Id": "-"}
    if organization_id == 'master':
        headers["X-Forwarded-Host"] = urllib.parse.urlparse(os.environ.get('EXTERNAL_URL_MNG')).netloc
        headers["X-Forwarded-Proto"] = urllib.parse.urlparse(os.environ.get('EXTERNAL_URL_MNG')).scheme
    else:
        headers["X-Forwarded-Host"] = urllib.parse.urlparse(os.environ.get('EXTERNAL_URL')).netloc
        headers["X-Forwarded-Proto"] = urllib.parse.urlparse(os.environ.get('EXTERNAL_URL')).scheme

    redirect_response = requests.post(
        f"{proxy_location_origin}/auth/realms/{organization_id}/protocol/openid-connect/token",
        data=request.form,
        headers=headers,
    )

    # remake response header
    excluded_headers = ['content-encoding', 'content-length', 'connection', 'keep-alive', 'proxy-authenticate',
                        'proxy-authorization', 'te', 'trailers', 'transfer-encoding', 'upgrade']
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


@app.route('/api/platform/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
# @common.platform_exception_handler
def platform_organization_api_call(subpath):
    """Call the platform organization API after authorization - 認可後にplatform APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        multipart_mode = is_multipart_mode()

        extra = extra_init(multipart_mode=multipart_mode)
        globals.logger.info(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {subpath=}")

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/platform/{}".format(
            os.environ['PLATFORM_API_PROTOCOL'], os.environ['PLATFORM_API_HOST'], os.environ['PLATFORM_API_PORT'], subpath)

        # return jsonify({"result": "200", "time": str(datetime.now())}), 200

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_platform_private()

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11002"
            message = multi_lang.get_text(
                message_id, "platform private情報の取得に失敗しました")
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ストリームモードのあるURLかチェックする
        # Check if the URL has stream mode
        if is_stream_mode(dest_url, request.method):
            stream = True
        else:
            stream = False

        # get chunk byte
        response_chunk_byte = get_response_chunk_byte(extra)

        # realm名設定
        # Set realm name
        proxy = auth_proxy.auth_proxy(
            private.token_check_realm_id,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            response_chunk_byte)

        # 各種チェック check
        response_json = proxy.check_authorization(stream)

        extra['user_id'] = response_json.get("user_info").get("user_id")
        extra['username'] = response_json.get("user_info").get("username")
        extra['request_user_headers'] = response_json.get("data")

        # api呼び出し call api
        return_api = proxy.call_api(dest_url, response_json.get("data"), stream=stream, multipart_mode=multipart_mode)

        if stream:
            # stream形式の場合は、独自の返却を実施する
            # In the case of stream format, implement your own return
            response = Response(chunk_response(return_api, response_chunk_byte))
            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value
        else:
            # 戻り値をそのまま返却
            # Return the return value as it is
            response = make_response()
            response.status_code = return_api.status_code
            response.data = return_api.content
            try:
                res_json = json.loads(return_api.text)

                extra['message_id'] = res_json.get("result")
                extra['message_text'] = res_json.get("message")
            except Exception:
                pass

            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value

        if multipart_mode:
            # BODY要素の項目を取得
            # Get the BODY element item
            extra['request_form'] = proxy.request_forms
            extra['request_files'] = proxy.request_files

        extra['status_code'] = return_api.status_code
        globals.audit.info(f'audit: response. {response.status_code}', extra=extra)
        globals.logger.info(f"### end func:{inspect.currentframe().f_code.co_name} {response.status_code=}")

        return response

    except common.BadRequestException as err:
        globals.logger.info(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.InternalErrorException as err:
        globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.AuthException as e:
        globals.logger.info(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except common.NotAllowedException as e:
        globals.logger.info(f'permission error:{e.args}')
        message_id = "403-00001"
        message = common.multi_lang.get_text(message_id, "permission error")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except Exception as e:
        globals.logger.error(f'exception error:{e.args}')
        extra['status_code'] = 500
        globals.audit.error(f'audit: Exception error.[{e=}], [{type(e)=}]:', stack_info=''.join(list(traceback.TracebackException.from_exception(e).format())), extra=extra)
        return common.response_server_error(e)


def chunk_response(req: Response, response_chunk_byte):
    """chunk_response process

    Args:
        req (Response): _description_
        response_chunk_byte (int): chunk byte

    Yields:
        response: Yields return value
    """

    try:
        for chunk in req.iter_content(chunk_size=response_chunk_byte):
            globals.logger.debug(f'yield {response_chunk_byte=}')
            yield chunk
    finally:
        req.close()


def get_response_chunk_byte(extra):
    """get response_chunk_byte

    Args:
        extra (dict): extra structure

    Raises:
        common.InternalErrorException: chunk get error

    Returns:
        int: response_chunk_byte
    """

    response_chunk_byte = 0

    with closing(DBconnector().connect_platformdb()) as conn:
        # config list get by key
        get_leng_json = bl_common_service.settings_system_config_list(conn, common_const.CONFIG_KEY_CHUNK_SIZE)
        if get_leng_json:
            response_chunk_byte = get_leng_json.get("value", 0)
        else:
            message_id = "500-00011"
            message = multi_lang.get_text(
                message_id,
                "システム設定値が取得できませんでした(key:{0})",
                common_const.CONFIG_KEY_CHUNK_SIZE,
            )
            raise common.InternalErrorException(message_id=message_id, message=message)
    globals.logger.debug(f'{response_chunk_byte=}')

    return int(response_chunk_byte)


def extra_init(organization_id='-', workspace_id='-', multipart_mode=False):
    """extra fields initialize

    Args:
        organization_id(str) : organization id
        workspace_id(str) : workspace id
        multipart_mode (bool): True: multipart/form-data mode call (default. False)

    Returns:
        extra(dict): extra items
    """
    
    # request.headersより機微情報を除いた情報をauditlogに設定する
    # Set information in auditlog excluding sensitive information from request.headers
    save_headers = {}
    try:
        save_headers_str = json.dumps(dict(request.headers))
        save_headers = json.loads(save_headers_str)
        del save_headers['Authorization']
        globals.logger.debug(f'{save_headers=}')
    except Exception as e:
        globals.logger.debug(f'extra_init exception:{e.args}')
        pass

    extra = {
        'ts': common.datetime_to_str(datetime.now()),
        'user_id': '-',
        'username': '-',
        'org_id': organization_id,
        'ws_id': workspace_id,
        'method': request.method,
        'full_path': request.full_path,
        'access_route': request.access_route,
        'remote_addr': request.remote_addr,
        'request_headers': save_headers,
        'request_user_headers': '-',
        'content_type': '-',
        'status_code': '-',
        'message_id': '-',
        'message_text': '-',
    }

    if not multipart_mode:
        # パラメータを形成
        # Form parameters
        if request.is_json:
            try:
                extra['request_body'] = request.json.copy()
            except Exception:
                pass

        # パラメータを形成(multipart/form-data)
        # form parameters, files parameters
        if request.form:
            try:
                extra['request_form'] = request.form.copy()
            except Exception:
                pass
        if request.files:
            try:
                extra['request_files'] = request.files.copy()
            except Exception:
                pass

    # content-type
    if request.content_type:
        extra['content_type'] = request.content_type.lower()

    return extra


@app.route('/api/ita/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
# @common.platform_exception_handler
def ita_admin_api_call(subpath):
    """Call the ita admin API after authorization - 認可後にita admin APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        multipart_mode = is_multipart_mode()

        extra = extra_init(multipart_mode=multipart_mode)
        globals.logger.info(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {subpath=}")

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/ita/{}".format(
            os.environ['ITA_API_ADMIN_PROTOCOL'], os.environ['ITA_API_ADMIN_HOST'], os.environ['ITA_API_ADMIN_PORT'], subpath)

        # return jsonify({"result": "200", "time": str(datetime.now())}), 200

        # メンテナンスモード(DATA_UPDATE_STOP)中、GET以外は、エラー
        # During maintenance mode (data_update_stop), except for GET, error
        mode_name = "data_update_stop"
        target_name = "Exastro IT Automation API (System Management)"
        maintenance_mode = maintenancemode.maintenace_mode_get(mode_name)
        if maintenance_mode == "1" and request.method != "GET":
            message_id = "498-00001"
            message = multi_lang.get_text(
                message_id,
                "メンテナンス中の為、{}は利用出来ません。({}:/api/ita/{})",
                target_name, request.method, subpath
            )
            info = 'MaintenanceMode({}:{})'.format(mode_name, maintenance_mode)
            raise common.MaintenanceException(info, message_id=message_id, message=message)

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_platform_private()

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11002"
            message = multi_lang.get_text(
                message_id, "platform private情報の取得に失敗しました")
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ストリームモードのあるURLかチェックする
        # Check if the URL has stream mode
        if is_stream_mode(dest_url, request.method):
            stream = True
        else:
            stream = False

        # get chunk byte
        response_chunk_byte = get_response_chunk_byte(extra)

        # realm名設定
        # Set realm name
        proxy = auth_proxy.auth_proxy(
            private.token_check_realm_id,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            response_chunk_byte)

        # 各種チェック check
        response_json = proxy.check_authorization(stream)

        extra['user_id'] = response_json.get("user_info").get("user_id")
        extra['username'] = response_json.get("user_info").get("username")
        extra['request_user_headers'] = response_json.get("data")

        # api呼び出し call api
        return_api = proxy.call_api(dest_url, response_json.get("data"), stream=stream, multipart_mode=multipart_mode)

        if stream:
            # stream形式の場合は、独自の返却を実施する
            # In the case of stream format, implement your own return
            response = Response(chunk_response(return_api, response_chunk_byte))
            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value
        else:
            # 戻り値をそのまま返却
            # Return the return value as it is
            response = make_response()
            response.status_code = return_api.status_code
            response.data = return_api.content
            try:
                res_json = json.loads(return_api.text)

                extra['message_id'] = res_json.get("result")
                extra['message_text'] = res_json.get("message")
            except Exception:
                pass

            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value

        if multipart_mode:
            # BODY要素の項目を取得
            # Get the BODY element item
            extra['request_form'] = proxy.request_forms
            extra['request_files'] = proxy.request_files

        extra['status_code'] = return_api.status_code
        globals.audit.info(f'audit: response. {response.status_code}', extra=extra)
        globals.logger.info(f"### end func:{inspect.currentframe().f_code.co_name} {response.status_code=}")

        return response

    except common.BadRequestException as err:
        globals.logger.info(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.InternalErrorException as err:
        globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.AuthException as e:
        globals.logger.info(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except common.NotAllowedException as e:
        globals.logger.info(f'permission error:{e.args}')
        message_id = "403-00001"
        message = common.multi_lang.get_text(message_id, "permission error")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except common.MaintenanceException as e:
        globals.logger.info(f'under maintenance:{e.args}')
        extra['status_code'] = e.status_code
        extra['message_id'] = e.message_id
        extra['message_text'] = e.message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, e.message_id, e.message)

    except Exception as e:
        globals.logger.error(f'exception error:{e.args}')
        extra['status_code'] = 500
        globals.audit.error(f'audit: Exception error.[{e=}], [{type(e)=}]:', stack_info=''.join(list(traceback.TracebackException.from_exception(e).format())), extra=extra)
        return common.response_server_error(e)


@app.route('/api/<string:organization_id>/platform/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
# @common.platform_exception_handler
def platform_api_call(organization_id, subpath):
    """Call the platform API after authorization - 認可後にplatform APIを呼び出します

    Args:
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        multipart_mode = is_multipart_mode()

        extra = extra_init(organization_id=organization_id, multipart_mode=multipart_mode)
        globals.logger.info(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {subpath=} {organization_id=}")

        # Destination URL settings - 宛先URLの設定
        dest_url = "{}://{}:{}/api/{}/platform/{}".format(
            os.environ['PLATFORM_API_PROTOCOL'], os.environ['PLATFORM_API_HOST'], os.environ['PLATFORM_API_PORT'], organization_id, subpath)

        # return jsonify({"result": "200", "time": str(datetime.now())}), 200

        # Common authorization proxy processing call - 共通の認可proxy処理呼び出し

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(organization_id)

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11001"
            message = multi_lang.get_text(message_id,
                                          "organization private情報の取得に失敗しました")
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ストリームモードのあるURLかチェックする
        # Check if the URL has stream mode
        if is_stream_mode(dest_url, request.method):
            stream = True
        else:
            stream = False

        # get chunk byte
        response_chunk_byte = get_response_chunk_byte(extra)

        # organization idをrealm名として設定
        # Set organization id as realm name
        proxy = auth_proxy.auth_proxy(
            organization_id,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            private.user_token_client_clientid,
            None,
            response_chunk_byte)

        # 各種チェック check
        response_json = proxy.check_authorization(stream)

        extra['user_id'] = response_json.get("user_info").get("user_id")
        extra['username'] = response_json.get("user_info").get("username")
        extra['request_user_headers'] = response_json.get("data")

        api_headers = {
            **response_json.get("data"),
            **{
                "X-Forwarded-Host": urllib.parse.urlparse(os.environ.get('EXTERNAL_URL')).netloc,
                "X-Forwarded-Proto": urllib.parse.urlparse(os.environ.get('EXTERNAL_URL')).scheme
            }
        }
        # api呼び出し call api
        return_api = proxy.call_api(dest_url, api_headers, stream=stream, multipart_mode=multipart_mode)

        if stream:
            # stream形式の場合は、独自の返却を実施する
            # In the case of stream format, implement your own return
            response = Response(chunk_response(return_api, response_chunk_byte))
            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value
        else:
            # 戻り値をそのまま返却
            # Return the return value as it is
            response = make_response()
            response.status_code = return_api.status_code
            response.data = return_api.content
            try:
                res_json = json.loads(return_api.text)

                extra['message_id'] = res_json.get("result")
                extra['message_text'] = res_json.get("message")
            except Exception:
                pass

            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value

        if multipart_mode:
            # BODY要素の項目を取得
            # Get the BODY element item
            extra['request_form'] = proxy.request_forms
            extra['request_files'] = proxy.request_files

        extra['status_code'] = return_api.status_code
        globals.audit.info(f'audit: response. {response.status_code}', extra=extra)
        globals.logger.info(f"### end func:{inspect.currentframe().f_code.co_name} {response.status_code=}")

        return response

    except (common.BadRequestException, common.NotFoundException) as err:
        globals.logger.info(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.InternalErrorException as err:
        globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.AuthException as e:
        globals.logger.info(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except common.NotAllowedException as e:
        globals.logger.info(f'permission error:{e.args}')
        message_id = "403-00001"
        message = common.multi_lang.get_text(message_id, "permission error")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except Exception as e:
        globals.logger.error(f'exception error:{e.args}')
        extra['status_code'] = 500
        globals.audit.error(f'audit: Exception error.[{e=}], [{type(e)=}]:', stack_info=''.join(list(traceback.TracebackException.from_exception(e).format())), extra=extra)
        return common.response_server_error(e)


@app.route('/api/<string:organization_id>/workspaces/<string:workspace_id>/<string:function>/<path:subpath>', methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])  # noqa: E501
# @common.platform_exception_handler
def ita_workspace_api_call(organization_id, workspace_id, function, subpath):
    """Call the IT-automation API after authorization - 認可後にIT-automation APIを呼び出します

    Args:
        organization_id (str): organization id
        workspace_id (str): workspace id
        function (str): call function
        subpath (str): subpath

    Returns:
        Response: HTTP Response
    """
    try:
        multipart_mode = is_multipart_mode()

        extra = extra_init(organization_id=organization_id, workspace_id=workspace_id, multipart_mode=multipart_mode)
        globals.logger.info(f"### start func:{inspect.currentframe().f_code.co_name} {request.method=} {function=} {subpath=} {organization_id=} {workspace_id=}")

        # Destination URL settings - 宛先URLの設定
        if function == "ita":
            # ITA Call
            dest_url = "{}://{}:{}/api/{}/workspaces/{}/ita/{}".format(
                os.environ['ITA_API_PROTOCOL'], os.environ['ITA_API_HOST'], os.environ['ITA_API_PORT'], organization_id, workspace_id, subpath)
        elif function == "oase_agent":
            # Oase Agent Call
            dest_url = "{}://{}:{}/api/{}/workspaces/{}/oase_agent/{}".format(
                os.environ['ITA_API_OASE_RECEIVER_PROTOCOL'], os.environ['ITA_API_OASE_RECEIVER_HOST'], os.environ['ITA_API_OASE_RECEIVER_PORT'], organization_id, workspace_id, subpath)
        elif function == "ansible_execution_agent":
            # Ansible Execution Agent Call
            dest_url = "{}://{}:{}/api/{}/workspaces/{}/ansible_execution_agent/{}".format(
                os.environ['ITA_API_ANSIBLE_EXECUTION_RECEIVER_PROTOCOL'], os.environ['ITA_API_ANSIBLE_EXECUTION_RECEIVER_HOST'], os.environ['ITA_API_ANSIBLE_EXECUTION_RECEIVER_PORT'], organization_id, workspace_id, subpath)
        else:
            # Page Not Found
            return common.response_status_direct(404, None, None, None)

        # サービスアカウントを使うためにClientのSercretを取得
        # Get Client Sercret to use service account
        db = DBconnector()
        private = db.get_organization_private(organization_id)

        # 取得できない場合は、エラー
        # If you cannot get it, an error
        if not private:
            message_id = "500-11001"
            message = multi_lang.get_text(message_id,
                                          "organization private情報の取得に失敗しました")
            raise common.InternalErrorException(message_id=message_id, message=message)

        # ストリームモードのあるURLかチェックする
        # Check if the URL has stream mode
        if is_stream_mode(dest_url, request.method):
            stream = True
        else:
            stream = False

        # get chunk byte
        response_chunk_byte = get_response_chunk_byte(extra)

        # organization idをrealm名として設定
        # Set organization id as realm name
        proxy = auth_proxy.auth_proxy(
            organization_id,
            private.token_check_client_clientid,
            private.token_check_client_secret,
            private.user_token_client_clientid,
            None,
            response_chunk_byte)

        # 各種チェック check
        response_json = proxy.check_authorization(stream)

        extra['user_id'] = response_json.get("user_info").get("user_id")
        extra['username'] = response_json.get("user_info").get("username")
        extra['request_user_headers'] = response_json.get("data")

        # api呼び出し call api
        return_api = proxy.call_api(dest_url, response_json.get("data"), stream=stream, multipart_mode=multipart_mode)

        if stream:
            # stream形式の場合は、独自の返却を実施する
            # In the case of stream format, implement your own return
            response = Response(chunk_response(return_api, response_chunk_byte))
            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value
        else:
            # 戻り値をそのまま返却
            # Return the return value as it is
            response = make_response()
            response.status_code = return_api.status_code
            response.data = return_api.content
            try:
                res_json = json.loads(return_api.text)

                extra['message_id'] = res_json.get("result")
                extra['message_text'] = res_json.get("message")
            except Exception:
                pass
            for key, value in return_api.headers.items():
                if key.lower().startswith('content-'):
                    response.headers[key] = value

        if multipart_mode:
            # BODY要素の項目を取得
            # Get the BODY element item
            extra['request_form'] = proxy.request_forms
            extra['request_files'] = proxy.request_files

        extra['status_code'] = return_api.status_code
        globals.audit.info(f'audit: response. {response.status_code}', extra=extra)
        globals.logger.info(f"### end func:{inspect.currentframe().f_code.co_name} {response.status_code=}")

        return response

    except (common.BadRequestException, common.NotFoundException) as err:
        globals.logger.info(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.InternalErrorException as err:
        globals.logger.error(f'exception handler:\n status_code:[{err.status_code}]\n message_id:[{err.message_id}]')
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        extra['status_code'] = err.status_code
        extra['message_id'] = err.message_id
        extra['message_text'] = err.message
        globals.audit.info(f'audit: response. {err.status_code}', extra=extra)
        return common.response_status(err.status_code, err.data, err.message_id, err.message)

    except common.AuthException as e:
        globals.logger.info(f'authentication error:{e.args}')
        message_id = "401-00002"
        message = multi_lang.get_text(message_id, "認証に失敗しました。")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except common.NotAllowedException as e:
        globals.logger.info(f'permission error:{e.args}')
        message_id = "403-00001"
        message = common.multi_lang.get_text(message_id, "permission error")
        extra['status_code'] = e.status_code
        extra['message_id'] = message_id
        extra['message_text'] = message
        globals.audit.info(f'audit: response. {e.status_code} {e.args=}', extra=extra)
        return common.response_status(e.status_code, e.data, message_id, message)

    except Exception as e:
        globals.logger.error(f'exception error:{e.args}')
        extra['status_code'] = 500
        globals.audit.error(f'audit: Exception error.[{e=}], [{type(e)=}]:', stack_info=''.join(list(traceback.TracebackException.from_exception(e).format())), extra=extra)
        return common.response_server_error(e)


def is_stream_mode(dest_url, method):
    """check if the request is stream - リクエストがストリームかどうかチェックします

    Args:
        dest_url (str): call url
        method (str): call method

    Returns:
        bool: True = stream mode / False = not stream mode
    """
    globals.logger.debug(f"### start func:{inspect.currentframe().f_code.co_name} {dest_url=} {method=}")

    # 順番にチェックする
    # check in order
    for pattern in stream_pattern.STREAM_PATTERN:

        match = re.match(pattern.get("url"), urllib.parse.urlparse(dest_url).path)
        if not match:
            # If the URL does not match, proceed to the next - URLが一致していない時は次に進む
            continue

        if ("*" in pattern.get("method") or method in pattern.get("method")):
            # Access is allowed when there is no matching method
            # - methodが一致するまたは、すべて"*"の場合は、ストリームモードとする
            globals.logger.debug('SUCCEED Is stream mode. method match')
            return True

    # urlに一致するものが無いときは、ストリームモード以外とする
    # If there is nothing matching the url, use a mode other than stream mode.
    globals.logger.debug('SUCCEED Is not stream mode. pattern no match')
    return False


def is_multipart_mode():
    """check if the request is multipart/form-data - リクエストのcontent_typeがmultipart/form-dataかどうかチェックします

    Returns:
        bool: True = multipart mode / False = not multipart mode
    """

    if request.content_type:
        if request.content_type.lower().startswith("multipart/form-data"):
            return True

    return False


if __name__ == '__main__':
    app.run(
        debug=(True if os.environ.get('FLASK_ENV', 'produciton') == 'development' else False),
        host='0.0.0.0',
        port=int(os.environ.get('FLASK_SERVER_PORT', '8801')),
        threaded=True)
