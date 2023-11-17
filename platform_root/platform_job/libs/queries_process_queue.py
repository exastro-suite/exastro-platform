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

SQL_QUERY_PROCESS = """
SELECT IV.PROCESS_ID, IV.PROCESS_KIND, IV.PROCESS_EXEC_ID, IV.ORGANIZATION_ID, IV.WORKSPACE_ID, IV.LAST_UPDATE_TIMESTAMP
    FROM (
        SELECT  PROCESS_ID
            ,   PROCESS_KIND
            ,   PROCESS_EXEC_ID
            ,   ORGANIZATION_ID
            ,   WORKSPACE_ID
            ,   LAST_UPDATE_TIMESTAMP
            ,   ROW_NUMBER() OVER (PARTITION BY ORGANIZATION_ID ORDER BY LAST_UPDATE_TIMESTAMP) AS ORG_ROW_NUMBER
            FROM    platform.T_PROCESS_QUEUE
    ) AS IV
    WHERE   IV.ORG_ROW_NUMBER <= %(task_max_count)s;
"""

SQL_QUERY_PROCESS_DELETE = """
DELETE FROM T_PROCESS_QUEUE WHERE PROCESS_ID = %(process_id)s
"""

SQL_QUERY_PROCESS_QUEUE_EXEC_ID = """
SELECT * FROM T_PROCESS_QUEUE WHERE PROCESS_EXEC_ID = %(process_exec_id)s
"""
