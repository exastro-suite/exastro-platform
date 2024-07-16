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

SQL_QUERY_JOBS_USER = """
SELECT * FROM T_JOBS_USER_EXPORT WHERE JOB_ID = %(job_id)s
"""

SQL_QUERY_JOBS_USER_FILE = """
SELECT * FROM T_JOBS_USER_FILE_EXPORT WHERE JOB_ID = %(job_id)s
"""

SQL_UPDATE_JOBS_USER = """
UPDATE T_JOBS_USER_EXPORT
    SET JOB_STATUS = %(job_status)s
    ,   COUNT_EXPORT = %(count_export)s
    ,   MESSAGE = %(message)s
    ,   LAST_UPDATE_USER = %(last_update_user)s
    WHERE   JOB_ID = %(job_id)s
    AND     JOB_STATUS  NOT IN  (%(job_status_comp)s, %(job_status_failed)s)
"""
SQL_INSERT_JOBS_USER_RESULT = """
INSERT INTO T_JOBS_USER_FILE_EXPORT
    (
        FILE_ID,
        JOB_ID,
        FILE_DATA
    ) VALUES (
        %(file_id)s,
        %(job_id)s,
        %(file_data)s
    )
"""

SQL_QUERY_JOB_USER_TOO_OLD = """
SELECT * FROM T_JOBS_USER_EXPORT
    WHERE   JOB_STATUS NOT IN  (%(job_status_comp)s, %(job_status_failed)s)
    AND     LAST_UPDATE_TIMESTAMP   <   %(last_update_timestamp)s
"""

SQL_UPDATE_JOBS_USER_FORCE_FAILD = """
UPDATE T_JOBS_USER_EXPORT
    SET JOB_STATUS = %(job_status)s
    ,   MESSAGE = %(message)s
    ,   LAST_UPDATE_USER = %(last_update_user)s
    WHERE   JOB_ID = %(job_id)s
"""

SQL_DELETE_JOBS_USER_EXPORT= """
DELETE FROM T_JOBS_USER_EXPORT
    WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL %(exp_days)s DAY) )
"""

SQL_DELETE_JOBS_USER_FILE_EXPORT= """
DELETE FROM T_JOBS_USER_FILE_EXPORT
    WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL %(exp_days)s DAY) )
"""