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

SQL_QUERY_MAILSERVER = """
SELECT
*
FROM
M_SMTP_SERVER
WHERE
SMTP_ID = %(smtp_id)s
;
"""

SQL_INSERT_MAILSERVER = """
INSERT
INTO M_SMTP_SERVER(
SMTP_ID,
SMTP_HOST,
SMTP_PORT,
SEND_FROM,
SEND_NAME,
REPLY_TO,
REPLY_NAME,
ENVELOPE_FROM,
SSL_ENABLE,
START_TLS_ENABLE,
AUTHENTICATION_ENABLE,
AUTHENTICATION_USER,
AUTHENTICATION_PASSWORD,
CREATE_USER,
LAST_UPDATE_USER
)
VALUES (
%(smtp_id)s,
%(smtp_host)s,
%(smtp_port)s,
%(send_from)s,
%(send_name)s,
%(reply_to)s,
%(reply_name)s,
%(envelope_from)s,
%(ssl_enable)s,
%(start_tls_enable)s,
%(authentication_enable)s,
%(authentication_user)s,
%(authentication_password)s,
%(create_user)s,
%(last_update_user)s
)
;
"""

SQL_UPDATE_MAILSERVER = """
UPDATE M_SMTP_SERVER
SET
SMTP_HOST = %(smtp_host)s,
SMTP_PORT = %(smtp_port)s,
SEND_FROM = %(send_from)s,
SEND_NAME = %(send_name)s,
REPLY_TO = %(reply_to)s,
REPLY_NAME = %(reply_name)s,
ENVELOPE_FROM = %(envelope_from)s,
SSL_ENABLE = %(ssl_enable)s,
START_TLS_ENABLE = %(start_tls_enable)s,
AUTHENTICATION_ENABLE = %(authentication_enable)s,
AUTHENTICATION_USER = %(authentication_user)s,
AUTHENTICATION_PASSWORD = %(authentication_password)s,
LAST_UPDATE_USER = %(last_update_user)s
WHERE
SMTP_ID = %(smtp_id)s
;
"""
