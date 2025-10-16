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

SQL_SELECT_ORGANIZATION_DB = """
    SELECT  *   FROM    T_ORGANIZATION_DB
    ;
"""

SQL_SELECT_WORKSPACE = """
    SELECT  *   FROM    T_WORKSPACE
    ;
"""

SQL_ALTER_TABLES = [
    {
        "COLUMN_TO_ADD": {"TABLE_NAME": "M_NOTIFICATION_DESTINATION", "COLUMN_NAME": "ENABLE_BATCH"},
        "ALTER_TABLE_DDL": """
            ALTER TABLE M_NOTIFICATION_DESTINATION
                ADD COLUMN  BATCH_COUNT_LIMIT       INT
                    AFTER   CONDITIONS,
                ADD COLUMN  BATCH_PERIOD_SECONDS    INT
                    AFTER   CONDITIONS,
                ADD COLUMN  ENABLE_BATCH            BOOLEAN NOT NULL DEFAULT 0
                    AFTER   CONDITIONS
        """
    },
    {
        "COLUMN_TO_ADD": {"TABLE_NAME": "T_NOTIFICATION_MESSAGE", "COLUMN_NAME": "HTTP_RESPONSE_CODE"},
        "ALTER_TABLE_DDL": """
            ALTER TABLE T_NOTIFICATION_MESSAGE
                ADD COLUMN  HTTP_RESPONSE_BODY    LONGTEXT
                    AFTER   NOTIFICATION_TIMESTAMP,
                ADD COLUMN  HTTP_RESPONSE_CODE    INT
                    AFTER   NOTIFICATION_TIMESTAMP
        """
    }
]

# 通知のイベント種別に「新規イベント（受信時）」「新規イベント（統合時）」を追加
# Add "New Event (On Receipt)" and "New Event (On Consolidation)" to the event types for notifications
SQL_UPDATE_M_NOTIFICATION_DESTINATION = """
UPDATE  M_NOTIFICATION_DESTINATION
SET CONDITIONS = JSON_MERGE_PATCH(
    CONDITIONS, 
    JSON_OBJECT(
        'ita', JSON_OBJECT(
            'event_type', JSON_OBJECT(
                'new_received', COALESCE(JSON_EXTRACT(CONDITIONS, '$.ita.event_type.new_received'), false) = "true",
                'new_consolidated', COALESCE(JSON_EXTRACT(CONDITIONS, '$.ita.event_type.new_consolidated'), false) = "true"
            )
        )
    )
);
"""
