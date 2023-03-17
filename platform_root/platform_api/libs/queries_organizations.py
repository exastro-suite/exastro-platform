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

SQL_INSERT_ORGANIZATION = """
INSERT INTO `T_ORGANIZATION`
(`ORGANIZATION_ID`,
`ORGANIZATION_NAME`,
`INFORMATIONS`,
`CREATE_USER`,
`LAST_UPDATE_USER`)
VALUES
(%(organization_id)s,
%(organization_name)s,
%(informations)s,
%(create_user)s,
%(last_update_user)s)
"""

SQL_QUERY_ORGANIZATIONS = """
SELECT *
FROM T_ORGANIZATION
"""

SQL_STATUS_UPDATE_ORGANIZATIONS = """
UPDATE T_ORGANIZATION
SET INFORMATIONS = json_replace(INFORMATIONS, "$.status", %(INFORMATIONS_status)s)
, LAST_UPDATE_USER = %(last_update_user)s
WHERE ORGANIZATION_ID = %(organization_id)s
"""

SQL_DELETE_ORGANIZATION = """
DELETE FROM `T_ORGANIZATION` WHERE ORGANIZATION_ID = %(organization_id)s
"""

SQL_INSERT_ORGANIZATION_PRIVATE = """
INSERT INTO `T_ORGANIZATION_PRIVATE`
(`ID`,
`INFORMATIONS`,
`CREATE_USER`,
`LAST_UPDATE_USER`)
VALUES
(1,
%(informations)s,
%(last_update_user)s,
%(last_update_user)s)
ON DUPLICATE KEY UPDATE
`INFORMATIONS`=%(informations)s
"""
