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

SQL_QUERY_NOTIFICATION_MESSAGE = """
SELECT * FROM T_NOTIFICATION_MESSAGE WHERE NOTIFICATION_ID = %(notification_id)s
"""

SQL_UPDATE_STATUS_NOTIFICATION_MESSAGE = """
UPDATE T_NOTIFICATION_MESSAGE
    SET NOTIFICATION_STATUS     =   %(notification_status)s
    ,   LAST_UPDATE_USER        =   %(last_update_user)s
    ,   HTTP_RESPONSE_CODE      =   %(http_response_code)s
    ,   HTTP_RESPONSE_BODY      =   %(http_response_body)s
    WHERE   NOTIFICATION_ID     =   %(notification_id)s
    AND     NOTIFICATION_STATUS =   %(notification_status_now)s
"""

SQL_QUERY_NOTIFICATION_MESSAGE_UNSENT_LONGTIME = """
SELECT * FROM T_NOTIFICATION_MESSAGE
    WHERE   NOTIFICATION_STATUS     =   %(notification_status)s
    AND     LAST_UPDATE_TIMESTAMP   <   %(last_update_timestamp)s
"""

SQL_QUERY_M_SMTP_SERVER = """
SELECT * FROM M_SMTP_SERVER
    WHERE   SMTP_ID =   %(smtp_id)s
"""
