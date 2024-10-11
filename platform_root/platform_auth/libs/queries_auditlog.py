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

SQL_INSERT_AUDIT_LOG = """
INSERT INTO T_AUDIT_LOG (TS, USER_ID, USERNAME, ORG_ID, WS_ID, LEVEL, FULL_PATH,
ACCESS_ROUTE, REMOTE_ADDR, REQUEST_HEADERS, REQUEST_USER_HEADERS, REQUEST_BODY, REQUEST_FORM, REQUEST_FILES,
STATUS_CODE, NAME, MESSAGE, MESSAGE_ID, MESSAGE_TEXT, STACK_INFO, PROCESS, USERID, METHOD,
CONTENT_TYPE, CREATE_USER, LAST_UPDATE_USER)
values (%(ts)s, %(user_id)s, %(username)s, %(org_id)s, %(ws_id)s, %(level)s, %(full_path)s,
%(access_route)s, %(remote_addr)s, %(request_headers)s, %(request_user_headers)s, %(request_body)s, %(request_form)s, %(request_files)s,
%(status_code)s, %(name)s, %(message)s, %(message_id)s, %(message_text)s, %(stack_info)s, %(process)s, %(userid)s, %(method)s,
%(content_type)s, %(create_user)s, %(last_update_user)s)
"""
