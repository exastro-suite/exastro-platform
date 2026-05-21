#   Copyright 2026 NEC Corporation
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

SQL_SELECT_ORGANIZATION_DB = """
    SELECT  *   FROM    T_ORGANIZATION_DB
    ;
"""

SQL_SELECT_WORKSPACE = """
    SELECT  *   FROM    T_WORKSPACE
    ;
"""

SQL_CREATE_INDEXES = [
    {
        "TABLE_NAME": "T_NOTIFICATION_MESSAGE",
        "INDEX_NAME": "IND_NOTIFICATION_STATUS",
        "CREATE_INDEX_DDL": """
            CREATE INDEX IND_NOTIFICATION_STATUS
            ON T_NOTIFICATION_MESSAGE (NOTIFICATION_STATUS, LAST_UPDATE_TIMESTAMP)
        """
    }
]
