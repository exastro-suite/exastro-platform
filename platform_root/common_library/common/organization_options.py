#   Copyright 2025 NEC Corporation
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
from contextlib import closing
from functools import wraps
import inspect
import json

import globals
from common_library.common import common, multi_lang
from common_library.common.db import DBconnector
from common_library.common.libs import queries_organization_options


def is_enabled_options_ita_drivers(organization_id, driver_name):
    """ITA driverの有効確認

    Args:
        organization_id (str): organization_id
        driver_name (str): driver_name

    Returns:
        boolean
    """

    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cur:
            cur.execute(queries_organization_options.SQL_QUERY_ORGANIZATION_INFORMATIONS, {"organization_id": organization_id})
            t_organization = cur.fetchone()

    if t_organization is None:
        return False

    try:
        ita_drivers = json.loads(t_organization["INFORMATIONS"]).get("ext_options", {}).get("options_ita", {}).get("drivers", {})
        return ita_drivers.get(driver_name, False)

    except Exception as ex:
        globals.logger.debug(f'is_enabled_options_ita_drivers exception: {ex}')
        return False


def require_ita_driver(driver_name, message_id, message_text):
    """指定したITA driverが有効な場合のみControllerの処理を許可するデコレータ
    無効な場合は403(NotAllowedException)を返す
    Decorator that only allows the controller to proceed when the given ITA driver is enabled;
    raises a 403 (NotAllowedException) otherwise

    Args:
        driver_name (str): driver_name (T_ORGANIZATION.INFORMATIONS内のext_options.options_ita.drivers.<driver_name>)
        message_id (str): 無効時に返すmessage_id
        message_text (str): 無効時に返すデフォルトメッセージ

    Returns:
        decorator
    """

    def decorator(func):
        @wraps(func)
        def inner_func(*args, **kwargs):
            # organization_idはconnexionが渡す引数の位置・キーワードいずれで来ても取得できるようにbindする
            # Bind so organization_id can be retrieved regardless of whether connexion passes it positionally or as a keyword argument
            bound = inspect.signature(func).bind(*args, **kwargs)
            organization_id = bound.arguments.get("organization_id")

            if not is_enabled_options_ita_drivers(organization_id, driver_name):
                message = multi_lang.get_text(message_id, message_text)
                raise common.NotAllowedException(message_id=message_id, message=message)

            return func(*args, **kwargs)

        return inner_func

    return decorator
