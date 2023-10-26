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

SQL_INSERT_NOTIFICATION_DESTINATION = """
INSERT INTO M_NOTIFICATION_DESTINATION (DESTINATION_ID, DESTINATION_NAME, DESTINATION_KIND, DESTINATION_INFO, CREATE_USER, LAST_UPDATE_USER)
values (%(destination_id)s, %(destination_name)s, %(destination_kind)s, %(destination_info)s, %(create_user)s, %(last_update_user)s)
"""
