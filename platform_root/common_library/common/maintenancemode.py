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

from contextlib import closing
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_maintenancemode
import globals


def maintenace_mode_get(mode_name):
    """Returns maintenace mode setting value

    Args:
        mode_name (str): maintenace mode name

    Returns:
        str: setting value 0/1
    """
    data = "0"
    try:
        # get maintenace mode setting value for mode_name
        with closing(DBconnector().connect_platformdb()) as conn:
            with conn.cursor() as cursor:
                parameter = {
                    "mode_name": mode_name.upper(),
                }
                where = " WHERE MODE_NAME = %(mode_name)s" \
                        " LIMIT 1"
                cursor.execute(queries_bl_maintenancemode.SQL_QUERY_MAINTENANCE_MODE + where, parameter)
                maintenace_row = cursor.fetchall()
                # get setting value
                if len(maintenace_row) == 1:
                    setting_value = maintenace_row[0]["SETTING_VALUE"]
                    globals.logger.debug(f"get setting value of {mode_name}:{setting_value}")
                else:
                    setting_value = "0"
                    globals.logger.debug(f"failed to get setting value of {mode_name}. using 0 instead")
        # make response data
        data = setting_value
    except Exception:
        globals.logger.debug(f"failed to get setting value of {mode_name}")
        pass
    return data


def maintenace_mode_get_all():
    """Returns all maintenace mode settings

    Returns:
        dict: { mode_name: setting_value }
    """
    data = {
        "backyard_execute_stop": "0",
        "data_update_stop": "0"
    }
    try:
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
    except Exception:
        globals.logger.debug("failed to get maintenace mode settings")
        pass
    return data
