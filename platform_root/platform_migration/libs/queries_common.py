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

EXISTS_VERSION_TABLE = """SELECT TABLE_NAME FROM INFORMATION_SCHEMA.TABLES
                            WHERE TABLE_SCHEMA = '{{ DB_DATABASE }}' AND TABLE_NAME = 'T_PLATFORM_VERSION'"""

SELECT_VERSION_TABLE = """SELECT VERSION FROM `{{ DB_DATABASE }}`.T_PLATFORM_VERSION WHERE ID = 1"""

SELECT_VERSION_TABLE_LOCK = """SELECT VERSION FROM `{{ DB_DATABASE }}`.T_PLATFORM_VERSION WHERE ID = 1 FOR UPDATE"""

UPDATE_VERSION_TABLE = """UPDATE T_PLATFORM_VERSION SET VERSION = %(version)s, LAST_UPDATE_USER = %(last_update_user)s WHERE ID = 1"""

SELECT_PLATFORM_PRIVATE = """SELECT INFORMATIONS FROM T_PLATFORM_PRIVATE WHERE ID = 1"""

INSERT_MIGRATION_HISTORY = """INSERT INTO T_PLATFORM_MIGRATION_HISTORY (VERSION, RESULT, MESSAGE, CREATE_USER, LAST_UPDATE_USER)
                                VALUES ( %(version)s, %(result)s, %(message)s, %(create_user)s, %(last_update_user)s )"""
