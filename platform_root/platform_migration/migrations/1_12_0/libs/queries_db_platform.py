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

SQL_CREATE_INDEXES = [
    {
        "TABLE_NAME": "T_PROCESS_QUEUE",
        "INDEX_NAME": "IND_PROCESS_EXEC_ID",
        "CREATE_INDEX_DDL": """
            CREATE INDEX IND_PROCESS_EXEC_ID
            ON T_PROCESS_QUEUE (PROCESS_EXEC_ID)
        """
    },
    {
        "TABLE_NAME": "T_PROCESS_QUEUE",
        "INDEX_NAME": "IDX_ORGANIZATION_ID",
        "CREATE_INDEX_DDL": """
            CREATE INDEX IDX_ORGANIZATION_ID
            ON T_PROCESS_QUEUE (ORGANIZATION_ID, WORKSPACE_ID, PROCESS_KIND, BATCH_GROUP_KEY, LAST_UPDATE_TIMESTAMP)
        """
    }
]
