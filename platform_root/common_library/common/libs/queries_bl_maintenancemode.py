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


SQL_QUERY_MAINTENANCE_MODE = """
    SELECT *
    FROM T_MAINTENANCE_MODE
"""

SQL_UPDATE_MAINTENANCE = """
    UPDATE
        T_MAINTENANCE_MODE
    SET
        SETTING_VALUE=%(setting_value)s,
        LAST_UPDATE_TIMESTAMP=CURRENT_TIMESTAMP(),
        LAST_UPDATE_USER=%(user_id)s
    WHERE
        MODE_NAME = %(mode_name)s
"""
