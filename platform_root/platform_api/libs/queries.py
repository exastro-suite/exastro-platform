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

SQL_ORGANIZATION_DB_INFO = """
SELECT db_host, db_port, db_database, db_user, db_password
FROM organization_db
WHERE organization_id = %s
"""

SQL_INSERT_WORKSPACE = """\
INSERT INTO workspace (workspace_id, workspace_name)
values (%(workspace_id)s, %(workspace_name)s)
"""

SQL_QUERY_WORKSPACE_LIST = """
SELECT workspace_id, workspace_name, create_at, update_at
FROM workspace
"""

SQL_QUERY_WORKSPACE = """
SELECT *
FROM workspace
"""

SQL_QUERY_ORGANIZATION_PRIVATE = """
SELECT *
FROM organization_private
WHERE id = 1
"""
