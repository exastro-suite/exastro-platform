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

from flask import jsonify
from datetime import datetime
import random
import string
from functools import wraps

import globals


class AuthException(Exception):
    """認証系例外 Authentication Exception

    Args:
        Exception (Exception): Exception
    """
    pass


class UserException(Exception):
    """ユーザー例外 User Exception

    Args:
        Exception (Exception): Exception
    """
    pass


def delete_dict_key(dictobj, key):
    """Dictionary Key delete

    Args:
        dictobj (dict): Dictionary
        key (any): key
    """
    if key in dictobj:
        del dictobj[key]


def random_string(n):
    """ランダム文字列生成 Random string generation

    Args:
        n (int): 文字数 word count

    Returns:
        str: ランダム文字列 Random string
    """
    return ''.join(random.choices(string.ascii_letters + string.digits, k=n))


def response_server_error(e):
    """サーバーエラーレスポンス Server error response

    Args:
        e (Exception): 例外 Exception

    Returns:
        response: HTTP Response (HTTP-500)
    """
    import traceback

    globals.logger.error(f'Exception : {e.args}')
    globals.logger.error(''.join(list(traceback.TracebackException.from_exception(e).format())))
    status_code = 500
    info = e.__class__.__name__
    return jsonify({"result": status_code, "info": info, "time": str(datetime.utcnow())}), status_code


def platform_exception_handler(func):
    """Exception handling decorator

    Args:
        func:

    Returns:
        inner_func:
    """
    @wraps(func)
    def inner_func(*args, **kwargs):
        try:
            response = func(*args, **kwargs)
        except Exception as err:
            return response_server_error(err)
        return response

    return inner_func


def get_user_token_client_id(organization_id):
    """get user token client id

    Args:
        organization_id (str) : organization id

    Returns:
        str : user token client client_id
    """

    return f"{organization_id}"


def get_token_authentication_client_id(organization_id):
    """get token authentication client id

    Args:
        organization_id (str) : organization id

    Returns:
        str : token authentication client client_id
    """

    return f"system-{organization_id}-auth"


def get_platform_client_id(organization_id):
    """get platform client id

    Args:
        organization_id (str) : organization id

    Returns:
        str : platform client client_id
    """

    return f"{organization_id}-workspaces"
