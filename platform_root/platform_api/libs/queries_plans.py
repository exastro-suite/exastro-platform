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

SQL_INSERT_PLAN = """
INSERT INTO T_PLAN (PLAN_ID, PLAN_NAME, INFORMATIONS, CREATE_USER, LAST_UPDATE_USER)
values (%(plan_id)s, %(plan_name)s, %(informations)s, %(create_user)s, %(last_update_user)s)
"""

SQL_INSERT_PLAN_LIMIT = """
INSERT INTO T_PLAN_LIMIT (PLAN_ID, LIMIT_ID, LIMIT_VALUE, CREATE_USER, LAST_UPDATE_USER)
values (%(plan_id)s, %(limit_id)s, %(limit_value)s, %(create_user)s, %(last_update_user)s)
"""

SQL_INSERT_ORGANIZATION_PLAN = """
INSERT INTO T_ORGANIZATION_PLAN (ORGANIZATION_ID, START_TIMESTAMP, PLAN_ID, CREATE_USER, LAST_UPDATE_USER)
values (%(organization_id)s, %(start_timestamp)s, %(plan_id)s, %(create_user)s, %(last_update_user)s)
"""

SQL_QUERY_PLAN_ITEMS = """
SELECT *
FROM T_PLAN_ITEM
"""

SQL_QUERY_PLANS = """
SELECT *
FROM T_PLAN
"""

SQL_QUERY_PLAN_LIMITS = """
SELECT *
FROM T_PLAN_LIMIT
"""

SQL_QUERY_ORGANIZATION_PLAN = """
SELECT *
FROM T_ORGANIZATION_PLAN
"""

SQL_DELETE_ORGANIZATION_PLAN = """
DELETE FROM T_ORGANIZATION_PLAN
WHERE organization_id = %(organization_id)s
AND start_timestamp = %(start_timestamp)s
"""
