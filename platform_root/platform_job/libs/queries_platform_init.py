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

SQL_SELECT_PLATFORM_PRIVATE = """
    SELECT  *   FROM    T_PLATFORM_PRIVATE
    WHERE   ID  =   1
    ;
"""

SQL_INSERT_PLATFORM_PRIVATE = """
    INSERT INTO T_PLATFORM_PRIVATE
        (ID, INFORMATIONS, CREATE_USER, LAST_UPDATE_USER)
    VALUES
        (1, %(INFORMATIONS)s, 'system', 'system')
    ON DUPLICATE KEY UPDATE
        INFORMATIONS=%(INFORMATIONS)s
    ;
"""
