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

SQL_INSERT_REFRESH_TOKEN = """
INSERT INTO T_REFRESH_TOKEN (USER_ID, SESSION_ID, EXPIRE_TIMESTAMP, CREATE_USER, LAST_UPDATE_USER)
values (%(user_id)s, %(session_id)s, %(expire_timestamp)s, %(create_user)s, %(last_update_user)s)
"""

SQL_DELETE_REFRESH_TOKEN = """
DELETE FROM T_REFRESH_TOKEN
"""

SQL_QUERY_REFRESH_TOKEN = """
SELECT *
FROM T_REFRESH_TOKEN
"""
