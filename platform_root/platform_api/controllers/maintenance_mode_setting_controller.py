#   Copyright 2023 NEC Corporation
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
from contextlib import closing
import inspect

from common_library.common import common, validation
from common_library.common.db import DBconnector
from common_library.common import multi_lang
from common_library.common.libs import queries_bl_maintenancemode

import globals

MSG_FUNCTION_ID = "34"


@common.platform_exception_handler
def get_maintenance_mode_setting():  # noqa: E501
    """get_maintenance_mode_setting

    メンテナンスモード設定状態を取得する # noqa: E501

    :rtype: InlineResponse20024
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    data = {}
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            cursor.execute(queries_bl_maintenancemode.SQL_QUERY_MAINTENANCE_MODE)
            maintenace_rows = cursor.fetchall()
            maintenace_values = {}
            # get maintenance_mode_setting: mode_name, setting_value
            if len(maintenace_rows) >= 1:
                for maintenace_row in maintenace_rows:
                    mode_name = maintenace_row.get('MODE_NAME').lower()
                    setting_value = maintenace_row.get('SETTING_VALUE')
                    maintenace_values.setdefault(mode_name, setting_value)
            # make response data
            data = maintenace_values

    return common.response_200_ok(data)


@common.platform_exception_handler
def patch_maintenance_mode_setting(body=None):  # noqa: E501
    """patch_maintenance_mode_setting

    メンテナンスモードの設定状態を更新する # noqa: E501

    :param body:
    :type body: dict | bytes

    :rtype: InlineResponse20025
    """
    globals.logger.info(f"### func:{inspect.currentframe().f_code.co_name}")

    body = connexion.request.get_json()
    if not body:
        message_id = "400-000002"
        message = multi_lang.get_text(
            message_id,
            "リクエストボディのパラメータ({0})が不正です。",
            'Json',
        )
        raise common.BadRequestException(message_id=message_id, message=message)

    user_id = connexion.request.headers.get("User-id")
    setting_values = body

    # DB更新
    # update maintenance mode
    with closing(DBconnector().connect_platformdb()) as conn:
        with conn.cursor() as cursor:
            for mode_name, setting_value in setting_values.items():
                # validation check
                validate = validation.validate_maintenance_mode(mode_name, setting_value)
                if not validate.ok:
                    return common.response_validation_error(validate)

                # update maintenancemode
                parameter = {
                    "user_id": user_id,
                    "mode_name": mode_name.upper(),
                    "setting_value": setting_value,
                }
                try:
                    cursor.execute(queries_bl_maintenancemode.SQL_UPDATE_MAINTENANCE, parameter)
                except Exception as e:
                    globals.logger.error(f"exception:{e.args}")
                    message_id = f"500-{MSG_FUNCTION_ID}001"
                    message = multi_lang.get_text(
                        message_id,
                        "メンテナンスモードの更新に失敗しました。({},{})",
                        mode_name,
                        setting_value
                    )
                    raise common.InternalErrorException(message_id=message_id, message=message)
            conn.commit()

    return common.response_200_ok(data=None)
