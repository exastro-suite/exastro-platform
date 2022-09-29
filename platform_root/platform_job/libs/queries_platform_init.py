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

SQL_INSERT_PLATFORM_PRIVATE = """
    INSERT INTO T_PLATFORM_PRIVATE
        (ID, INFORMATIONS, CREATE_USER, LAST_UPDATE_USER)
    VALUES
        (1, JSON_OBJECT(
                'TOKEN_CHECK_REALM_ID', %(KEYCLOAK_REALM)s,
                'TOKEN_CHECK_CLIENT_CLIENTID', '_platform',
                'TOKEN_CHECK_CLIENT_ID', %(CLIENT_ID)s,
                'TOKEN_CHECK_CLIENT_SECRET', %(CLIENT_SECRET)s
        ), 'system', 'system')
    ON DUPLICATE KEY UPDATE
        INFORMATIONS=JSON_OBJECT(
                'TOKEN_CHECK_REALM_ID', %(KEYCLOAK_REALM)s,
                'TOKEN_CHECK_CLIENT_CLIENTID', '_platform',
                'TOKEN_CHECK_CLIENT_ID', %(CLIENT_ID)s,
                'TOKEN_CHECK_CLIENT_SECRET', %(CLIENT_SECRET)s
        )
    ;
"""
