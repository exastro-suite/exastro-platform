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
import json
from functools import wraps

import globals
from common_library.common import multi_lang


class AuthException(Exception):
    """認証系例外 Authentication Exception

    Args:
        Exception (Exception): Exception
    """
    def __init__(self, data, message_id, message):
        self.status_code = 401
        self.data = data
        self.message_id = message_id
        self.message = message


class BadRequestException(Exception):
    """Bad Request Exception

    Args:
        Exception (Exception): Exception
    """

    def __init__(self, data, message_id, message):
        self.status_code = 400
        self.data = data
        self.message_id = message_id
        self.message = message


class InternalErrorException(Exception):
    """Internal Error Exception

    Args:
        Exception (Exception): Exception
    """

    def __init__(self, data, message_id, message):
        self.status_code = 500
        self.data = data
        self.message_id = message_id
        self.message = message


class OtherException(Exception):
    """Other Exception

    Args:
        Exception (Exception): Exception
    """

    def __init__(self, status_code, data, message_id, message):
        self.status_code = status_code
        self.data = data
        self.message_id = message_id
        self.message = message


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


def str_mask(str):
    """指定文字列をマスク置き換えする Replace the specified character string with a mask

    Args:
        str (str): 文字列 string

    Returns:
        str: 置き換え文字列 afeter string
    """

    # 1文字以上の入力があれば置き換えする If there is more than one character input, replace it
    if len(str) > 0:
        ret = '*' * len(str)
    else:
        ret = str

    return ret


def is_json_format(str):
    """json値判断 json value judgement

    Args:
        str (str): json文字列 json string

    Returns:
        bool: True:json, False:not json
    """
    try:
        # Exceptionで引っかかるときはすべてJson意外と判断
        # When it gets caught in Exception, it is judged that Json is unexpected
        json.loads(str)

    except json.JSONDecodeError:
        return False
    except ValueError:
        return False
    except Exception:
        return False
    return True


def response_200_ok(data):
    """サーバー200レスポンス Server 200 response

    Args:
        data (json): 戻り値 return values

    Returns:
        response: HTTP Response (HTTP-500)
    """
    status_code = 200
    return response_status(status_code, data, "000-00000", "SUCCESS")


def response_status(status_code, data, message_id, base_message="", *args):
    """サーバーレスポンス共通 Server response common

    Args:
        status_cd (int): ステータスコード status code
        data (str): 戻り値
                    return values
        message_id (str): MESSAGEに設定するmessage_id
                          Message_id set in MESSAGE
        base_message (str): 日本語のメッセージ(変換できない場合の初期値)
                            Japanese message (initial value when conversion is not possible)
        args (args): メッセージに対するパラメータ

    Returns:
        response: HTTP Response (HTTP-500)
    """

    message = multi_lang.get_text(message_id, base_message, args)

    return jsonify({"result": status_code, "data": data, "message": message, "ts": datetime_to_str(datetime.utcnow())}), status_code


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
    return jsonify({"result": status_code, "data": None, "message": info, "ts": datetime_to_str(datetime.utcnow())}), status_code


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
        except BadRequestException as err:
            return response_status(err.status_code, err.data, err.message_id, err.message)
        except AuthException as err:
            return response_status(err.status_code, err.data, err.message_id, err.message)
        except InternalErrorException as err:
            return response_status(err.status_code, err.data, err.message_id, err.message)
        except OtherException as err:
            return response_status(err.status_code, err.data, err.message_id, err.message)
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


def get_username(fitstName, LastName, username):
    """get username

    Args:
        fitstName (str): fitstName
        LastName (str): LastName
        username (str): username
    """
    if (fitstName is None or fitstName == ""):
        if (LastName is None or LastName == ""):
            return username
        else:
            return LastName
    else:
        if (LastName is None or LastName == ""):
            return fitstName
        else:
            return fitstName + " " + LastName


def datetime_to_str(datetime):
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


def keycloak_timestamp_to_datetime(keycloak_timestamp):
    """keycloak timestamp to string

    Args:
        keycloak_timestamp (int): keycloak timestamp

    Returns:
        str: datetime formated string
    """
    try:
        if keycloak_timestamp is None:
            return None
        else:
            return datetime.fromtimestamp(keycloak_timestamp / 1000)
    except Exception:
        return None


def keycloak_timestamp_to_str(keycloak_timestamp):
    """keycloak timestamp to string

    Args:
        keycloak_timestamp (int): keycloak timestamp

    Returns:
        str: datetime formated string
    """
    try:
        if keycloak_timestamp is None:
            return None
        else:
            return datetime_to_str(datetime.fromtimestamp(keycloak_timestamp / 1000))
    except Exception:
        return None
