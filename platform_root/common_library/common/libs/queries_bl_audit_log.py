#   Copyright 2024 NEC Corporation
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

SQL_QUERY_AUDIT_LOG = """
    SELECT *
    FROM T_AUDIT_LOG
"""

SQL_QUERY_JOBS_AUDIT_LOG = """
    SELECT *
    FROM T_JOBS_AUDIT_LOG
"""

SQL_QUERY_JOBS_AUDIT_LOG_FILE = """
    SELECT *
    FROM T_JOBS_AUDIT_LOG_FILE
"""

SQL_QUERY_COUNT_JOBS_AUDIT_LOG = """
SELECT COUNT(*) AS COUNT
FROM T_JOBS_AUDIT_LOG
"""

SQL_QUERY_JOBS_AUDIT_LOG_FILE_LENGTH = """
    SELECT LENGTH(FILE_DATA) FILE_DATA_LENGTH
    FROM T_JOBS_AUDIT_LOG_FILE
"""

SQL_QUERY_JOBS_AUDIT_LOG_FILE_SUBSTR = """
    SELECT SUBSTR(FILE_DATA, %(start_pos)s, %(len)s) FILE_DATA_SUBSTR
    FROM T_JOBS_AUDIT_LOG_FILE
"""

SQL_INSERT_JOBS_AUDIT_LOG = """
INSERT
INTO T_JOBS_AUDIT_LOG(
JOB_ID,
JOB_TYPE,
JOB_STATUS,
CONDITIONS,
COUNT_EXPORT,
MESSAGE,
LANGUAGE,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(job_id)s,
%(job_type)s,
%(job_status)s,
%(conditions)s,
%(count_export)s,
%(message)s,
%(language)s,
%(create_user)s,
%(last_update_user)s
)
;
"""

