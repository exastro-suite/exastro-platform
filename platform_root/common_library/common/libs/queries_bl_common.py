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

SQL_INSERT_SYSTEM_CONFIG = """
INSERT INTO M_SYSTEM_CONFIG (CONFIG_KEY, CONFIG_VALUE, DESCRIPTION, CREATE_USER, LAST_UPDATE_USER)
values (%(key)s, %(value)s, %(description)s, %(create_user)s, %(last_update_user)s)
"""

SQL_QUERY_SELECT_SYSTEM_CONFIG = """SELECT * FROM M_SYSTEM_CONFIG"""

SQL_QUERY_UPDATE_SYSTEM_CONFIG = """UPDATE M_SYSTEM_CONFIG
                                    SET CONFIG_VALUE = %(config_value)s
                                    ,   DESCRIPTION = %(description)s
                                    ,   LAST_UPDATE_USER = %(last_update_user)s
                                    WHERE CONFIG_KEY = %(config_key)s"""

SQL_QUERY_DELETE_SYSTEM_CONFIG = """DELETE FROM M_SYSTEM_CONFIG WHERE CONFIG_KEY = %(config_key)s"""
