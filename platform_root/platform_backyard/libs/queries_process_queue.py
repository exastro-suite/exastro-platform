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

SQL_QUERY_PROCESS_QUEUE = """
SELECT * FROM T_PROCESS_QUEUE FOR UPDATE
"""

SQL_QUERY_PROCESS_DELETE = """
DELETE FROM T_PROCESS_QUEUE WHERE PROCESS_ID = %(process_id)s
"""

SQL_QUERY_PROCESS_QUEUE_EXEC_ID = """
SELECT * FROM T_PROCESS_QUEUE WHERE PROCESS_EXEC_ID = %(process_exec_id)s
"""
