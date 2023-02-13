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
import json
import inspect

from contextlib import closing
from common_library.common import common, const as common_const, multi_lang
from common_library.common.db import DBconnector
from common_library.common import bl_common_service
from libs import queries_internal_plan

import globals

MSG_FUNCTION_ID = "20"


@common.platform_exception_handler
def alive():
    """死活監視

    Returns:
        Response: HTTP Respose
    """
    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_settings_system_config_create(body):  # noqa: E501
    """Create creates an system config value

    Args:
        body (_type_): _description_

    Returns:
        _type_: _description_
    """
    return 'do some magic!'


@common.platform_exception_handler
def internal_settings_system_config_delete(config_key):  # noqa: E501
    """delete an system config value settings

    Args:
        config_key (_type_): _description_

    Returns:
        _type_: _description_
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    r = connexion.request
    user_id = r.headers.get("User-id")

    # delete config
    with closing(DBconnector().connect_platformdb()) as conn:
        delete_row_count = bl_common_service.settings_system_config_delete(conn, user_id, config_key)
        globals.logger.debug(f'settings_system_config_delete return : {delete_row_count}')
        conn.commit()

    return common.response_200_ok(None)


@common.platform_exception_handler
def internal_settings_system_config_item(config_key):  # noqa: E501
    """Returns the system config key value

    Args:
        config_key (str): config key

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # config list get
    data = bl_common_service.settings_system_config_list(config_key)

    if data is not None:
        return common.response_200_ok(data)
    else:
        raise common.NotFoundException(
            message_id=f"404-{MSG_FUNCTION_ID}001",
            message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "設定が存在しません(key:{0})", config_key)
        )


@common.platform_exception_handler
def internal_settings_system_config_list():  # noqa: E501
    """Returns the current system config value

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    # config list get
    data = bl_common_service.settings_system_config_list()

    return common.response_200_ok(data)


@common.platform_exception_handler
def internal_settings_system_config_update(body, config_key):  # noqa: E501
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

    # update config
    with closing(DBconnector().connect_platformdb()) as conn:
        update_row_count = bl_common_service.settings_system_config_update(conn, user_id, body, config_key)
        if update_row_count == 0:
            raise common.NotFoundException(
                message_id=f"404-{MSG_FUNCTION_ID}001",
                message=multi_lang.get_text(f"404-{MSG_FUNCTION_ID}001", "設定が存在しません(key:{0})", config_key)
            )

        conn.commit()

    return common.response_200_ok(None)
