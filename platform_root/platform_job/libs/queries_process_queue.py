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

SQL_QUERY_PROCESS_LOCK = """
SELECT * FROM T_PROCESS_QUEUE WHERE PROCESS_ID = %(process_id)s FOR UPDATE NOWAIT
"""

SQL_QUERY_FETCH_BATCH_PROCESS = """
SELECT * FROM T_PROCESS_QUEUE
    WHERE   ORGANIZATION_ID     =   %(organization_id)s
    AND     WORKSPACE_ID        =   %(workspace_id)s
    AND     PROCESS_KIND        =   %(process_kind)s
    AND     BATCH_GROUP_KEY     =   %(batch_group_key)s
    ORDER BY    LAST_UPDATE_TIMESTAMP
    FOR UPDATE NOWAIT
"""

SQL_QUERY_PROCESS = """
SELECT  IV.PROCESS_ID
    ,   IV.PROCESS_KIND
    ,   IV.PROCESS_EXEC_ID
    ,   IV.ORGANIZATION_ID
    ,   IV.WORKSPACE_ID
    ,   IV.ENABLE_BATCH
    ,   IV.BATCH_PERIOD_SECONDS
    ,   IV.BATCH_COUNT_LIMIT
    ,   IV.BATCH_GROUP_KEY
    ,   IV.LAST_UPDATE_TIMESTAMP
    FROM (
        SELECT  PROCESS_ID
            ,   PROCESS_KIND
            ,   PROCESS_EXEC_ID
            ,   ORGANIZATION_ID
            ,   WORKSPACE_ID
            ,   ENABLE_BATCH
            ,   BATCH_PERIOD_SECONDS
            ,   BATCH_COUNT_LIMIT
            ,   BATCH_GROUP_KEY
            ,   LAST_UPDATE_TIMESTAMP
            ,   ROW_NUMBER() OVER (PARTITION BY ORGANIZATION_ID ORDER BY LAST_UPDATE_TIMESTAMP) AS ORG_ROW_NUMBER
            FROM    platform.T_PROCESS_QUEUE
            WHERE   (
                ENABLE_BATCH    =   false
                OR
                ENABLE_BATCH    =   true
                AND DATE_ADD(LAST_UPDATE_TIMESTAMP, INTERVAL BATCH_PERIOD_SECONDS SECOND) <= CURRENT_TIMESTAMP()
                AND NOT EXISTS (
                    SELECT * FROM   platform.T_PROCESS_QUEUE_LOCK
                        WHERE   T_PROCESS_QUEUE_LOCK.PROCESS_KIND       =   T_PROCESS_QUEUE.PROCESS_KIND
                        AND     T_PROCESS_QUEUE_LOCK.ORGANIZATION_ID    =   T_PROCESS_QUEUE.ORGANIZATION_ID
                        AND     T_PROCESS_QUEUE_LOCK.WORKSPACE_ID       =   T_PROCESS_QUEUE.WORKSPACE_ID
                        AND     T_PROCESS_QUEUE_LOCK.GROUP_KEY          =   T_PROCESS_QUEUE.BATCH_GROUP_KEY
                        AND     T_PROCESS_QUEUE_LOCK.UNLOCK_AT          >   CURRENT_TIMESTAMP()
                )
            )
    ) AS IV
    WHERE   IV.ORG_ROW_NUMBER <= %(job_max_count)s
    ORDER BY    LAST_UPDATE_TIMESTAMP
"""

SQL_QUERY_PROCESS_DELETE = """
DELETE FROM T_PROCESS_QUEUE WHERE PROCESS_ID = %(process_id)s
"""

SQL_QUERY_PROCESS_QUEUE_EXEC_ID = """
SELECT * FROM T_PROCESS_QUEUE WHERE PROCESS_EXEC_ID = %(process_exec_id)s
"""

SQL_DELETE_PROCESS_QUEUE_EXEC_ID = """
DELETE FROM T_PROCESS_QUEUE WHERE PROCESS_EXEC_ID = %(process_exec_id)s
"""


SQL_UPDATE_PROCESS_QUEUE_LOCK = """
UPDATE  T_PROCESS_QUEUE_LOCK
    SET     UNLOCK_AT       =   DATE_ADD(CURRENT_TIMESTAMP(), INTERVAL %(batch_period_seconds)s SECOND)
    WHERE   PROCESS_KIND    =   %(process_kind)s
    AND     ORGANIZATION_ID =   %(organization_id)s
    AND     WORKSPACE_ID    =   %(workspace_id)s
    AND     GROUP_KEY       =   %(group_key)s
"""

SQL_INSERT_PROCESS_QUEUE_LOCK = """
INSERT  INTO    T_PROCESS_QUEUE_LOCK
    (
        PROCESS_KIND,
        ORGANIZATION_ID,
        WORKSPACE_ID,
        GROUP_KEY,
        UNLOCK_AT
    )
    VALUES
    (
        %(process_kind)s,
        %(organization_id)s,
        %(workspace_id)s,
        %(group_key)s,
        DATE_ADD(CURRENT_TIMESTAMP(), INTERVAL %(batch_period_seconds)s SECOND)
    )
"""

SQL_DELETE_PROCESS_QUEUE_LOCK = """
DELETE  FROM     T_PROCESS_QUEUE_LOCK
    WHERE   UNLOCK_AT   <   DATE_SUB(CURRENT_TIMESTAMP(), INTERVAL %(delete_days_ago)s DAY)
"""
