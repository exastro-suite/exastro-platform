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

SQL_INSERT_WORKSPACE = """
INSERT INTO T_WORKSPACE (WORKSPACE_ID, WORKSPACE_NAME, INFORMATIONS, CREATE_USER, LAST_UPDATE_USER)
values (%(workspace_id)s, %(workspace_name)s, %(informations)s, %(create_user)s, %(last_update_user)s)
"""

SQL_QUERY_WORKSPACES = """
SELECT *
FROM T_WORKSPACE
"""

SQL_DELETE_WORKSPACE = """
DELETE FROM T_WORKSPACE WHERE WORKSPACE_ID = %(workspace_id)s"""

SQL_UPDATE_WORKSPACE = """
UPDATE T_WORKSPACE
SET WORKSPACE_NAME = %(workspace_name)s,
INFORMATIONS = %(informations)s,
LAST_UPDATE_USER = %(last_update_user)s
WHERE WORKSPACE_ID = %(workspace_id)s"""
