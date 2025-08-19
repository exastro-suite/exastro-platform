#   Copyright 2025 NEC Corporation
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

SQL_CREATE_TABLES = [
    """
    CREATE TABLE IF NOT EXISTS T_PROCESS_QUEUE_LOCK
    (
        PROCESS_KIND VARCHAR(36) NOT NULL,
        ORGANIZATION_ID VARCHAR(36) NOT NULL,
        WORKSPACE_ID VARCHAR(36) NOT NULL,
        GROUP_KEY VARCHAR(512) NOT NULL,
        UNLOCK_AT DATETIME NOT NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        PRIMARY KEY (PROCESS_KIND, ORGANIZATION_ID, WORKSPACE_ID, GROUP_KEY)
    )
    """,
]

SQL_ALTER_TABLES = [
    {
        "COLUMN_TO_ADD": {"TABLE_NAME": "T_PROCESS_QUEUE", "COLUMN_NAME": "ENABLE_BATCH"},
        "ALTER_TABLE_DDL": """
            ALTER TABLE T_PROCESS_QUEUE
                ADD COLUMN  BATCH_GROUP_KEY         VARCHAR(512)
                    AFTER WORKSPACE_ID,
                ADD COLUMN  BATCH_COUNT_LIMIT       INT
                    AFTER WORKSPACE_ID,
                ADD COLUMN  BATCH_PERIOD_SECONDS    INT
                    AFTER WORKSPACE_ID,
                ADD COLUMN  ENABLE_BATCH            BOOLEAN NOT NULL DEFAULT 0
                    AFTER WORKSPACE_ID
    """
    }
]
