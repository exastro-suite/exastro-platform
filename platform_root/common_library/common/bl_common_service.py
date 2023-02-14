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

from contextlib import closing
from common_library.common.db import DBconnector
from common_library.common.libs import queries_bl_common

MSG_FUNCTION_ID = "33"


def settings_system_config_create(conn, user_id, body):
    """get setting system config list

    Args:
        

    Returns:
        dict: data item for response
    """
    with conn.cursor() as cursor:

        parameter = {
            "key": body.get("key"),
            "value": body.get("value"),
            "description": body.get("description"),
            "create_user": user_id,
            "last_update_user": user_id
        }

        cursor.execute(queries_bl_common.SQL_INSERT_SYSTEM_CONFIG, parameter)


def settings_system_config_list(conn, config_key=None):
    """get setting system config list

    Args:
        config_key (string, optional): config key. Defaults to None.

    Returns:
        dict: data item for response
    """

    # system config list get
    with conn.cursor() as cursor:

        if config_key is not None:
            sql_stmt = queries_bl_common.SQL_QUERY_SELECT_SYSTEM_CONFIG + ' WHERE CONFIG_KEY = %(config_key)s'
            parameter = {
                "config_key": config_key,
            }
        else:
            sql_stmt = queries_bl_common.SQL_QUERY_SELECT_SYSTEM_CONFIG
            parameter = {}

        cursor.execute(sql_stmt, parameter)
        system_configs = cursor.fetchall()

    if config_key is not None:
        if len(system_configs) < 1:
            return None
        else:
            return {
                "key": system_configs[0].get("CONFIG_KEY"),
                "value": system_configs[0].get("CONFIG_VALUE"),
                "description": system_configs[0].get("DESCRIPTION")
            }
    else:
        return [{"key": r.get("CONFIG_KEY"), "value": r.get("CONFIG_VALUE"), "description": r.get("DESCRIPTION")}
                for r in system_configs]


def settings_system_config_update(conn, user_id, data, config_key):
    """update setting system config

    Args:
        conn (Connection): database connection
        user_id (str): update user id
        data (dict): update data
        config_key (str): config key
    """
    with conn.cursor() as cursor:
        parameter = {
            "config_key": config_key,
            "config_value": data.get("value"),
            "description": data.get("description"),
            "last_update_user": user_id
        }

        cursor.execute(queries_bl_common.SQL_QUERY_UPDATE_SYSTEM_CONFIG, parameter)


def settings_system_config_delete(conn, user_id, config_key):
    """update setting system config

    Args:
        conn (Connection): database connection
        user_id (str): update user id
        config_key (str): config key

    Returns:
        int: delete row count
    """
    with conn.cursor() as cursor:
        parameter = {
            "config_key": config_key
        }
        cursor.execute(queries_bl_common.SQL_QUERY_DELETE_SYSTEM_CONFIG, parameter)
