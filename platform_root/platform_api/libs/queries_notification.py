#   Copyright 2023 NEC Corporation
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

SQL_INSERT_NOTIFICATION_DESTINATION = """
INSERT INTO M_NOTIFICATION_DESTINATION (DESTINATION_ID, DESTINATION_NAME, DESTINATION_KIND, DESTINATION_INFORMATIONS, CONDITIONS, CREATE_USER, LAST_UPDATE_USER)
values (%(destination_id)s, %(destination_name)s, %(destination_kind)s, %(destination_informations)s, %(conditions)s, %(create_user)s, %(last_update_user)s) # NOQA:E501
"""

SQL_QUERY_NOTIFICATION_DESTINATION = """
SELECT *
FROM M_NOTIFICATION_DESTINATION
"""

SQL_INSERT_NOTIFICATION_MESSAGE = """
INSERT INTO T_NOTIFICATION_MESSAGE (
NOTIFICATION_ID,
DESTINATION_ID,
DESTINATION_NAME,
DESTINATION_KIND,
DESTINATION_INFORMATIONS,
CONDITIONS,
FUNC_ID,
FUNC_INFORMATIONS,
MESSAGE_INFORMATIONS,
NOTIFICATION_STATUS,
NOTIFICATION_TIMESTAMP,
CREATE_USER,
LAST_UPDATE_USER
) VALUES (
%(notification_id)s,
%(destination_id)s,
%(destination_name)s,
%(destination_kind)s,
%(destination_informations)s,
%(conditions)s,
%(func_id)s,
%(func_informations)s,
%(message_informations)s,
%(notification_status)s,
%(notification_timestamp)s,
%(create_user)s,
%(last_update_user)s
);
"""

SQL_INSERT_PROCESS_QUEUE = """
INSERT INTO T_PROCESS_QUEUE
(PROCESS_ID,
PROCESS_KIND,
PROCESS_EXEC_ID,
ORGANIZATION_ID,
WORKSPACE_ID,
LAST_UPDATE_USER
)VALUES(
%(process_id)s,
%(process_kind)s,
%(process_exec_id)s,
%(organization_id)s,
%(workspace_id)s,
%(last_update_user)s
);
"""
