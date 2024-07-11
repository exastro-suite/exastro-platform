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

SQL_QUERY_JOBS_USER = """
    SELECT *
    FROM T_JOBS_USER
"""

SQL_QUERY_JOBS_USER_RESULT = """
    SELECT *
    FROM T_JOBS_USER
"""

SQL_QUERY_JOBS_USER_RESULT_FILE_SUBSTR = """
    SELECT SUBSTR(FILE_DATA, %(start_pos)s, %(len)s) FILE_DATA_SUBSTR
    FROM T_JOBS_USER_RESULT
"""

SQL_QUERY_JOBS_USER_RESULT_FILE_LENGTH = """
    SELECT LENGTH(FILE_DATA) FILE_DATA_LENGTH
    FROM T_JOBS_USER_RESULT
"""

SQL_QUERY_JOBS_USER_FILE_EXPORT_SUBSTR = """
    SELECT SUBSTR(FILE_DATA, %(start_pos)s, %(len)s) FILE_DATA_SUBSTR
    FROM T_JOBS_USER_FILE_EXPORT
"""

SQL_QUERY_JOBS_USER_FILE_EXPORT_LENGTH = """
    SELECT LENGTH(FILE_DATA) FILE_DATA_LENGTH
    FROM T_JOBS_USER_FILE_EXPORT
"""

SQL_INSERT_JOBS_USER = """
INSERT
INTO T_JOBS_USER(
JOB_ID,
JOB_TYPE,
JOB_STATUS,
LANGUAGE,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(job_id)s,
%(job_type)s,
%(job_status)s,
%(language)s,
%(create_user)s,
%(last_update_user)s
)
;
"""

SQL_INSERT_JOBS_USER_FILE = """
INSERT
INTO T_JOBS_USER_FILE(
FILE_ID,
JOB_ID,
FILE_DATA,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(file_id)s,
%(job_id)s,
%(file_data)s,
%(create_user)s,
%(last_update_user)s
)
;
"""

SQL_INSERT_JOBS_USER_EXPORT = """
INSERT
INTO T_JOBS_USER_EXPORT(
JOB_ID,
JOB_TYPE,
JOB_STATUS,
LANGUAGE,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(job_id)s,
%(job_type)s,
%(job_status)s,
%(language)s,
%(create_user)s,
%(last_update_user)s
)
;
"""
