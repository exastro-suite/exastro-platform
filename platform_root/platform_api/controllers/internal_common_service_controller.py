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
import connexion
import inspect
import pymysql

from contextlib import closing

from common_library.common import common, validation, multi_lang
from common_library.common.db import DBconnector
from common_library.common import bl_common_service

import globals

MSG_FUNCTION_ID = "20"


@common.platform_exception_handler
def alive():
    """死活監視 Life and death monitoring

    Returns:
        Response: HTTP Respose
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_settings_system_config_create(body):
    """Create creates an system config value

    Args:
        body (dict): http request body

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    # validation check
    for i in body:
        validate = validation.validate_system_config_key(i.get("key"))
        if not validate.ok:
            return common.response_validation_error(validate)

        validate = validation.validate_system_config_value(i.get("value"))
        if not validate.ok:
            return common.response_validation_error(validate)

        validate = validation.validate_system_config_description(i.get("description"))
        if not validate.ok:
            return common.response_validation_error(validate)

    # DBへ書き込む
    # write to DB
    db = DBconnector()
    with closing(db.connect_platformdb()) as conn:
        key = ""
        try:
            for i in body:
                key = i.get("key")
                bl_common_service.settings_system_config_create(conn, user_id, i)
        except pymysql.err.IntegrityError:
            conn.rollback()
            raise common.OtherException(
                409,
                None,
                f"409-{MSG_FUNCTION_ID}001",
                multi_lang.get_text(f"409-{MSG_FUNCTION_ID}001", "指定された設定値はすでに存在しているため作成できません。(key:{0})", key))

        conn.commit()

    return common.response_200_ok(data=None)


@common.platform_exception_handler
def internal_settings_system_config_delete(config_key):
    """delete an system config value settings

    Args:
        config_key (str): config key

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    # delete config
    with closing(DBconnector().connect_platformdb()) as conn:
        # exists check
        data = bl_common_service.settings_system_config_list(conn, config_key)
        if data is None:
            raise common.NotFoundException(
                message_id=f"404-{MSG_FUNCTION_ID}001",
                message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "設定が存在しません(key:{0})", config_key)
            )

        bl_common_service.settings_system_config_delete(conn, user_id, config_key)
        conn.commit()

    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_settings_system_config_item(config_key):
    """Returns the system config key value

    Args:
        config_key (str): config key

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # config list get
    with closing(DBconnector().connect_platformdb()) as conn:
        data = bl_common_service.settings_system_config_list(conn, config_key)

    if data is not None:
        return common.response_200_ok(data)
    else:
        raise common.NotFoundException(
            message_id=f"404-{MSG_FUNCTION_ID}001",
            message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "設定が存在しません(key:{0})", config_key)
        )


@common.platform_exception_handler
def internal_settings_system_config_list():
    """Returns the current system config value

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # config list get
    with closing(DBconnector().connect_platformdb()) as conn:
        data = bl_common_service.settings_system_config_list(conn)

    return common.response_200_ok(data)


@common.platform_exception_handler
def internal_settings_system_config_update(body, config_key):
    """Update an system config value settings

    Args:
        body (dict): http request body
        config_key (str): config key

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    # validation check
    validate = validation.validate_system_config_value(body.get("value"))
    if not validate.ok:
        return common.response_validation_error(validate)

    validate = validation.validate_system_config_description(body.get("description"))
    if not validate.ok:
        return common.response_validation_error(validate)

    with closing(DBconnector().connect_platformdb()) as conn:
        # exists check
        data = bl_common_service.settings_system_config_list(conn, config_key)
        if data is None:
            raise common.NotFoundException(
                message_id=f"404-{MSG_FUNCTION_ID}001",
                message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "設定が存在しません(key:{0})", config_key)
            )

        # update config
        bl_common_service.settings_system_config_update(conn, user_id, body, config_key)

        conn.commit()

    return common.response_200_ok(None)
