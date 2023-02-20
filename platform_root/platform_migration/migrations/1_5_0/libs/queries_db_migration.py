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

CREATE_TABLES = [
    """
    CREATE TABLE IF NOT EXISTS M_SYSTEM_CONFIG
    (
      CONFIG_KEY VARCHAR(100) NOT NULL,
      CONFIG_VALUE VARCHAR(4000) NOT NULL,
      DESCRIPTION VARCHAR(255) NULL,
      CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
      CREATE_USER VARCHAR(40),
      LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
      LAST_UPDATE_USER VARCHAR(40),
      PRIMARY KEY (CONFIG_KEY)
    )
    """
]

# SETTING_DATAS = [
# ]
