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

from flask import Flask, request, jsonify, make_response
from datetime import datetime
import os
# import json
import base64

# User Imports
import globals

# 設定ファイル読み込み・globals初期化
app = Flask(__name__)
app.config.from_envvar('CONFIG_API_PATH')
globals.init(app)


@app.route('/alive', methods=["GET"])
def alive():
    """死活監視

    Returns:
        Response: HTTP Respose
    """
    return jsonify({"result": "200", "time": str(datetime.utcnow())}), 200


@app.route('/api/organizations/<string:organization_id>/ita/',
           methods=["POST", "DELETE"])
def call_ita_organizations(organization_id):
    """Exastro IT Automation試験モジュール (organizations)

    Args:
        organization_id (str): organization id

    Returns:
        Response: HTTP Respose
    """
    globals.logger.info(f'call ita_test organizations api. method={request.method} organization_id={organization_id}')

    # パラメータ情報(JSON形式)
    organization_id = organization_id
    globals.logger.debug('request_headers: {}'.format(str(request.headers)))
    user_id = request.headers.get("User-Id")
    roles = request.headers.get("Roles")
    language = request.headers.get("Language")
    globals.logger.error(f'roles: {roles}')
    roles_decode = base64.b64decode(roles.encode()).decode("utf-8")
    globals.logger.error(f'roles_decode: {roles_decode}')
    json_roles = []
    for role in roles_decode.split("\n"):
        json_roles.append({"name": role})

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

    ret_status = 200

    ret = {
        "result": "000-0000",
        "data": {
            "method": request.method,
            "headers": str(request.headers),
            "organization_id": organization_id,
            "user_id": user_id,
            "roles": json_roles,
            "language": language,
            "request_body": request_body,
            "query_string": "{}".format(query_string),
        },
        "message": "",
        "ts": __datetime_to_str(datetime.utcnow()),
    }

    return jsonify(ret), ret_status


@app.route('/api/<string:organization_id>/workspaces/<string:workspace_id>/ita/<path:subpath>',
           methods=["GET", "POST", "PUT", "PATCH", "DELETE", "OPTION"])
def call_ita_test(organization_id, workspace_id, subpath):
    """Exastro IT Automation試験モジュール

    Returns:
        Response: HTTP Respose
    """
    globals.logger.info('call ita_test api. method={} organization_id={} workspace_id={} subpath={}'.format(request.method,
                                                                                                            organization_id,
                                                                                                            workspace_id,
                                                                                                            subpath))

    # パラメータ情報(JSON形式)
    organization_id = organization_id
    globals.logger.debug('request_headers: {}'.format(str(request.headers)))
    user_id = request.headers.get("User-Id")
    roles = request.headers.get("Roles")
    language = request.headers.get("Language")
    globals.logger.error(f'roles: {roles}')
    roles_decode = base64.b64decode(roles.encode()).decode("utf-8")
    globals.logger.error(f'roles_decode: {roles_decode}')
    json_roles = []
    for role in roles_decode.split("\n"):
        json_roles.append({"name": role})

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

    ret_status = 200

    ret = {
        "result": "000-0000",
        "data": {
            "method": request.method,
            "headers": str(request.headers),
            "organization_id": organization_id,
            "workspace_id": workspace_id,
            "user_id": user_id,
            "roles": json_roles,
            "language": language,
            "request_body": request_body,
            "query_string": "{}".format(query_string),
        },
        "message": "",
        "ts": __datetime_to_str(datetime.utcnow()),
    }

    if subpath == "download":
        response = make_response()
        response.data = b'abc'
        # response.data = json.dumps(ret).encode()
        response.headers['Content-Type'] = 'application/octet-stream'
        response.headers['Content-Disposition'] = 'attachment; filename=test.dat'
        return response
    else:
        return jsonify(ret), ret_status


@app.route('/api/<string:organization_id>/workspaces/<string:workspace_id>/ita/', methods=["POST"])
def create_workspace(organization_id, workspace_id):
    """死活監視

    Returns:
        Response: HTTP Respose
    """
    return jsonify({"result": "200", "time": str(datetime.utcnow())}), 200


def __datetime_to_str(datetime):
    """datetime to string

    Args:
        datetime (datetime): datetime

    Returns:
        str: datetime formated string
    """
    if datetime.strftime('%z') == "":
        return datetime.isoformat(timespec='milliseconds') + "Z"
    else:
        return datetime.isoformat(timespec='milliseconds')


if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('API_PORT', '8000')), threaded=True)
