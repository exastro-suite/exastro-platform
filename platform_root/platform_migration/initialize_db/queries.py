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
    """CREATE DATABASE IF NOT EXISTS `{{ KEYCLOAK_DB_DATABASE }}` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci""",
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

CHARSET_CONVERSION_QUERIES = {
    'CHECK_BACKUP_TABLE_EXISTS': """
        SELECT COUNT(*) FROM information_schema.TABLES
        WHERE TABLE_SCHEMA = 'platform' AND TABLE_NAME = '_fk_backup'
    """,
    'GET_BACKUP_FKS': """
        SELECT TABLE_NAME, CONSTRAINT_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME
        FROM platform._fk_backup
    """,
    'ADD_FOREIGN_KEY': """
        ALTER TABLE `{{ KEYCLOAK_DB }}`.`{{ TABLE_NAME }}`
        ADD CONSTRAINT `{{ CONSTRAINT_NAME }}`
        FOREIGN KEY (`{{ COLUMN_NAME }}`)
        REFERENCES `{{ REFERENCED_TABLE }}` (`{{ REFERENCED_COLUMN }}`)
    """,
    'DELETE_FROM_BACKUP': """
        DELETE FROM platform._fk_backup WHERE CONSTRAINT_NAME = %s
    """,
    'COUNT_BACKUP_FKS': """
        SELECT COUNT(*) FROM platform._fk_backup
    """,
    'DROP_BACKUP_TABLE': """
        DROP TABLE platform._fk_backup
    """,
    'CHECK_DB_CHARSET': """
        SELECT DEFAULT_CHARACTER_SET_NAME
        FROM information_schema.SCHEMATA
        WHERE SCHEMA_NAME = '{{ KEYCLOAK_DB }}'
    """,
    'GET_ALL_TABLES': """
        SELECT TABLE_NAME, TABLE_COLLATION
        FROM information_schema.TABLES
        WHERE TABLE_SCHEMA = '{{ KEYCLOAK_DB }}' AND TABLE_TYPE = 'BASE TABLE'
    """,
    'CREATE_BACKUP_TABLE': """
        CREATE TABLE IF NOT EXISTS platform._fk_backup (
            TABLE_NAME VARCHAR(64) NOT NULL,
            CONSTRAINT_NAME VARCHAR(64) NOT NULL,
            COLUMN_NAME VARCHAR(64) NOT NULL,
            REFERENCED_TABLE_NAME VARCHAR(64) NOT NULL,
            REFERENCED_COLUMN_NAME VARCHAR(64) NOT NULL,
            PRIMARY KEY (CONSTRAINT_NAME)
        )
    """,
    'GET_ALL_FKS': """
        SELECT
            kcu.TABLE_NAME,
            kcu.CONSTRAINT_NAME,
            kcu.COLUMN_NAME,
            kcu.REFERENCED_TABLE_NAME,
            kcu.REFERENCED_COLUMN_NAME
        FROM information_schema.KEY_COLUMN_USAGE kcu
        WHERE kcu.TABLE_SCHEMA = '{{ KEYCLOAK_DB }}'
            AND kcu.REFERENCED_TABLE_NAME IS NOT NULL
    """,
    'INSERT_FK_BACKUP': """
        INSERT INTO platform._fk_backup
        (TABLE_NAME, CONSTRAINT_NAME, COLUMN_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME)
        VALUES (%s, %s, %s, %s, %s)
    """,
    'ALTER_DB_CHARSET': """
        ALTER DATABASE `{{ KEYCLOAK_DB }}` CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
    """,
    'DROP_FOREIGN_KEY': """
        ALTER TABLE `{{ KEYCLOAK_DB }}`.`{{ TABLE_NAME }}` DROP FOREIGN KEY `{{ CONSTRAINT_NAME }}`
    """,
    'GET_TABLE_FKS': """
        SELECT CONSTRAINT_NAME
        FROM information_schema.KEY_COLUMN_USAGE
        WHERE TABLE_SCHEMA = '{{ KEYCLOAK_DB }}'
            AND TABLE_NAME = '{{ TABLE_NAME }}'
            AND REFERENCED_TABLE_NAME IS NOT NULL
    """,
    'CONVERT_TABLE_CHARSET': """
        ALTER TABLE `{{ KEYCLOAK_DB }}`.`{{ TABLE_NAME }}`
        CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
    """,
    'GET_DISTINCT_FKS_FROM_BACKUP': """
        SELECT DISTINCT TABLE_NAME, CONSTRAINT_NAME FROM platform._fk_backup
    """,
    'CHECK_FK_EXISTS': """
        SELECT COUNT(*) FROM information_schema.KEY_COLUMN_USAGE
        WHERE TABLE_SCHEMA = '{{ KEYCLOAK_DB }}'
            AND TABLE_NAME = %s
            AND CONSTRAINT_NAME = %s
            AND REFERENCED_TABLE_NAME IS NOT NULL
    """
}

def render_query(query_template, **kwargs):
    """Render query template with variables

    Args:
        query_template (str): Query template string with {{ VAR }} placeholders
        **kwargs: Variable values to substitute

    Returns:
        str: Rendered query
    """
    result = query_template
    for key, value in kwargs.items():
        result = result.replace(f'{{{{ {key} }}}}', str(value))
    return result
