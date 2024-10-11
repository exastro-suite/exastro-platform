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

SQL_QUERY_JOBS_AUDIT_LOG = """
SELECT * FROM T_JOBS_AUDIT_LOG WHERE JOB_ID = %(job_id)s
"""


SQL_QUERY_AUDIT_LOG_SUMMARY = """
    SELECT  MIN(ID)     as  MIN_ID
        ,   MAX(ID)     as  MAX_ID
        ,   COUNT(*)    as  COUNT_ROWS
        FROM    T_AUDIT_LOG
        WHERE   TS  BETWEEN %(ts_from)s AND %(ts_to)s
"""

SQL_QUERY_AUDIT_LOG = """
SELECT * FROM T_AUDIT_LOG
    WHERE   ID  BETWEEN %(id_from)s AND %(id_to)s
    AND     TS  BETWEEN %(ts_from)s AND %(ts_to)s
"""



SQL_UPDATE_JOBS_AUDIT_LOG = """
UPDATE T_JOBS_AUDIT_LOG
    SET JOB_STATUS = %(job_status)s
    ,   COUNT_EXPORT = %(count_export)s
    ,   MESSAGE = %(message)s
    ,   LAST_UPDATE_USER = %(last_update_user)s
    WHERE   JOB_ID = %(job_id)s
    AND     JOB_STATUS  NOT IN  (%(job_status_comp)s, %(job_status_failed)s, %(job_status_nodata)s)
"""

SQL_QUERY_JOBS_AUDIT_LOG_TOO_OLD = """
SELECT * FROM T_JOBS_AUDIT_LOG
    WHERE   JOB_STATUS NOT IN  (%(job_status_comp)s, %(job_status_failed)s, %(job_status_nodata)s)
    AND     LAST_UPDATE_TIMESTAMP   <   %(last_update_timestamp)s
"""

SQL_UPDATE_JOBS_AUDIT_LOG_FORCE_FAILD = """
UPDATE T_JOBS_AUDIT_LOG
    SET JOB_STATUS = %(job_status)s
    ,   MESSAGE = %(message)s
    ,   LAST_UPDATE_USER = %(last_update_user)s
    WHERE   JOB_ID = %(job_id)s
"""
SQL_INSERT_JOBS_AUDIT_LOG_FILE = """
INSERT INTO T_JOBS_AUDIT_LOG_FILE
    (
        FILE_ID,
        JOB_ID,
        FILE_DATA,
        CREATE_USER,
        LAST_UPDATE_USER
    ) VALUES (
        %(file_id)s,
        %(job_id)s,
        "",
        %(create_user)s,
        %(last_update_user)s
    )
"""

SQL_CONCAT_JOBS_AUDIT_LOG_FILE_DATA = """
UPDATE T_JOBS_AUDIT_LOG_FILE
    SET FILE_DATA = CONCAT(FILE_DATA, %(file_data)s)
    WHERE FILE_ID = %(file_id)s
"""

SQL_DELETE_AUDIT_LOG = """
DELETE FROM T_AUDIT_LOG
    WHERE (TS < DATE_SUB(NOW(), INTERVAL %(retention_days)s DAY) )
"""

SQL_DELETE_JOBS_AUDIT_LOG = """
DELETE FROM T_JOBS_AUDIT_LOG
    WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL %(download_exp_days)s DAY) )
"""

SQL_DELETE_JOBS_AUDIT_LOG_FILE = """
DELETE FROM T_JOBS_AUDIT_LOG_FILE
    WHERE (CREATE_TIMESTAMP < DATE_SUB(NOW(), INTERVAL %(download_exp_days)s DAY) )
"""