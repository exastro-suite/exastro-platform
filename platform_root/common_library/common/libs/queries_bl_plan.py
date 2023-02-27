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

SQL_QUERY_PLAN_LIMITS = """
SELECT *
FROM T_PLAN_LIMIT
"""

SQL_QUERY_ORGANIZATION_PLAN = """
SELECT *
FROM T_ORGANIZATION_PLAN
"""

SQL_QUERY_PLANS = """
SELECT *
FROM T_PLAN
"""

SQL_QUERY_PLAN_ITEMS = """
SELECT *
FROM T_PLAN_ITEM
"""

SQL_INSERT_ORGANIZATION_PLAN = """
INSERT INTO T_ORGANIZATION_PLAN (ORGANIZATION_ID, START_TIMESTAMP, PLAN_ID, CREATE_USER, LAST_UPDATE_USER)
values (%(organization_id)s, %(start_timestamp)s, %(plan_id)s, %(create_user)s, %(last_update_user)s)
"""

SQL_DELETE_ORGANIZATION_PLAN = """
DELETE FROM T_ORGANIZATION_PLAN WHERE ORGANIZATION_ID = %(organization_id)s
"""

SQL_INSERT_PLAN_ITEM = """
INSERT INTO T_PLAN_ITEM (LIMIT_ID, INFORMATIONS, CREATE_USER, LAST_UPDATE_USER)
VALUES (%(limit_id)s, %(informations)s, %(create_user)s, %(create_user)s)
"""

SQL_INSERT_PLAN_LIMIT = """
INSERT INTO T_PLAN_LIMIT (PLAN_ID, LIMIT_ID, LIMIT_VALUE, CREATE_USER, LAST_UPDATE_USER)
VALUES (%(plan_id)s, %(limit_id)s, %(limit_value)s, %(create_user)s, %(create_user)s)
ON DUPLICATE KEY UPDATE
    LIMIT_VALUE = %(limit_value)s,
    LAST_UPDATE_USER = %(create_user)s
"""

SQL_UPDATE_PLAN_ITEM = """
UPDATE T_PLAN_ITEM
SET INFORMATIONS        =   %(informations)s
,   LAST_UPDATE_USER    =   %(last_update_user)s
WHERE LIMIT_ID          =   %(limit_id)s
"""

SQL_DELETE_PLAN_ITEM = """
DELETE FROM T_PLAN_ITEM WHERE LIMIT_ID = %(limit_id)s
"""

SQL_DELETE_PLAN_LIMIT = """
DELETE FROM T_PLAN_LIMIT WHERE PLAN_ID = %(plan_id)s AND LIMIT_ID = %(limit_id)s
"""
