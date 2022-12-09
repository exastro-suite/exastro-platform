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

SQL_QUERY_ALL_ORGANIZATION_PLAN_ID = """
SELECT  ORG.ORGANIZATION_ID,
        PLN.PLAN_ID
    FROM    T_ORGANIZATION ORG
    LEFT JOIN   T_ORGANIZATION_PLAN PLN
    ON  PLN.ORGANIZATION_ID = ORG.ORGANIZATION_ID
    AND PLN.START_TIMESTAMP =   (
        SELECT  MAX(PLN_S.START_TIMESTAMP)
            FROM    T_ORGANIZATION_PLAN PLN_S
            WHERE   PLN_S.ORGANIZATION_ID   =   PLN.ORGANIZATION_ID
            AND     PLN_S.START_TIMESTAMP   <=  CURRENT_TIMESTAMP()
    )
"""

SQL_QUERY_PLAN_LIMITS = """
SELECT *
FROM T_PLAN_LIMIT
"""
