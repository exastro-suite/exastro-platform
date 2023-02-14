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
from contextlib import closing
from common_library.common.db import DBconnector
from common_library.common import common, validation, multi_lang
from common_library.common import bl_common_service

import globals

MSG_FUNCTION_ID = "32"


def settings_system_config_list():  # noqa: E501
    """Returns the current system config value

    Returns:
        response: HTTP Response
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    with closing(DBconnector().connect_platformdb()) as conn:
        # config list get
        data = bl_common_service.settings_system_config_list(conn)

    return common.response_200_ok(data)


@common.platform_exception_handler
def settings_system_config_update(body, config_key):  # noqa: E501
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
