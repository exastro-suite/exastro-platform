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

INITIALIZE_QUERIES = [
    #
    # keycloak database and user
    #
    """CREATE USER IF NOT EXISTS `{{ KEYCLOAK_DB_USER }}` IDENTIFIED BY '{{ KEYCLOAK_DB_PASSWORD }}'""",
    """CREATE DATABASE IF NOT EXISTS `{{ KEYCLOAK_DB_DATABASE }}` CHARACTER SET utf8 COLLATE utf8_general_ci""",
    """GRANT ALL PRIVILEGES ON `{{ KEYCLOAK_DB_DATABASE }}`.* TO `{{ KEYCLOAK_DB_USER }}`""",

    #
    # platform database and user
    #
    """CREATE USER IF NOT EXISTS `{{ DB_USER }}` IDENTIFIED BY '{{ DB_PASSWORD }}'""",
    """CREATE DATABASE IF NOT EXISTS `{{ DB_DATABASE }}` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci""",
    """GRANT ALL PRIVILEGES ON `{{ DB_DATABASE }}`.* TO `{{ DB_USER }}`""",

    #
    # version table
    #
    """
    CREATE TABLE IF NOT EXISTS `{{ DB_DATABASE }}`.T_PLATFORM_VERSION
    (
        ID INT NOT NULL,
        VERSION VARCHAR(16) NOT NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (ID)
    )
    """,
    """
    CREATE TABLE IF NOT EXISTS `{{ DB_DATABASE }}`.T_PLATFORM_MIGRATION_HISTORY
    (
        ID INT NOT NULL AUTO_INCREMENT,
        VERSION VARCHAR(16) NOT NULL,
        RESULT VARCHAR(16) NOT NULL,
        MESSAGE VARCHAR(4096) NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (ID)
    )
    """,

    #
    # begin : 1.3.0.beta1 version table migration
    #
    """
    CREATE TABLE IF NOT EXISTS `{{ DB_DATABASE }}`.T_PLATFORM_PRIVATE
    (
        ID INT NOT NULL,
        INFORMATIONS JSON NOT NULL,
        CREATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
        CREATE_USER VARCHAR(40),
        LAST_UPDATE_TIMESTAMP DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
        LAST_UPDATE_USER VARCHAR(40),
        PRIMARY KEY (ID)
    )
    """,

    """
    INSERT IGNORE INTO `{{ DB_DATABASE }}`.T_PLATFORM_VERSION
        ( ID, VERSION, CREATE_USER, LAST_UPDATE_USER )
        ( SELECT 1, JSON_UNQUOTE(JSON_EXTRACT(INFORMATIONS, '$.VERSION')), 'system', 'system'
            FROM `{{ DB_DATABASE }}`.T_PLATFORM_PRIVATE
            WHERE ID = 1
            AND JSON_UNQUOTE(JSON_EXTRACT(INFORMATIONS, '$.VERSION')) IS NOT NULL
        )
    """,

    """
    UPDATE `{{ DB_DATABASE }}`.T_PLATFORM_PRIVATE
        SET INFORMATIONS = JSON_REMOVE(INFORMATIONS, '$.VERSION')
        WHERE ID = 1
    """,
    # finish : 1.3.0.beta1 version table migration


    """INSERT IGNORE INTO `{{ DB_DATABASE }}`.T_PLATFORM_VERSION
        ( ID, VERSION, CREATE_USER, LAST_UPDATE_USER ) VALUES ( 1, '0.0.0', 'system', 'system')"""
]
