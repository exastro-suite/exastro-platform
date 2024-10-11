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

SQL_INSERT_JOBS_USER = """
INSERT
INTO T_JOBS_USER(
JOB_ID,
JOB_TYPE,
JOB_STATUS,
COUNT_REGISTER,
COUNT_UPDATE,
COUNT_DELETE,
SUCCESS_REGISTER,
SUCCESS_UPDATE,
SUCCESS_DELETE,
FAILED_REGISTER,
FAILED_UPDATE,
FAILED_DELETE,
MESSAGE,
LANGUAGE,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(job_id)s,
%(job_type)s,
%(job_status)s,
%(count_register)s,
%(count_update)s,
%(count_delete)s,
%(success_register)s,
%(success_update)s,
%(success_delete)s,
%(failed_register)s,
%(failed_update)s,
%(failed_delete)s,
%(message)s,
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

SQL_SELECT_JOBS_USER_RESULT = """
SELECT * FROM T_JOBS_USER_RESULT
"""

SQL_INSERT_JOBS_USER_RESULT = """
INSERT
INTO T_JOBS_USER_RESULT(
RESULT_ID,
JOB_ID,
FILE_DATA
)
VALUES (
%(result_id)s,
%(job_id)s,
%(file_data)s
)
;
"""

SQL_INSERT_JOBS_USER_EXPORT = """
INSERT
INTO T_JOBS_USER_EXPORT(
JOB_ID,
JOB_TYPE,
JOB_STATUS,
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
%(count_export)s,
%(message)s,
%(language)s,
%(create_user)s,
%(last_update_user)s
)
;
"""

SQL_SELECT_JOBS_USER_FILE_EXPORT = """
SELECT * FROM T_JOBS_USER_FILE_EXPORT
ORDER BY LAST_UPDATE_TIMESTAMP DESC;
"""

SQL_INSERT_JOBS_USER_FILE_EXPORT = """
INSERT
INTO T_JOBS_USER_FILE_EXPORT(
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