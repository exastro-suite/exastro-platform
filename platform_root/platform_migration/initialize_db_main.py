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
from flask import Flask
import os
from contextlib import closing
from dotenv import load_dotenv  # python-dotenv
import logging
from logging.config import dictConfig as dictLogConf
from flask_log_request_id import RequestID
import traceback
from jinja2 import Template

import globals
# import const
from common_library.common.exastro_logging import ExastroLogRecordFactory, LOGGING

import migration_common
from initialize_db import queries

# load environ variables
load_dotenv(override=True)

# 設定ファイル読み込み・globals初期化
# Read configuration file and initialize globals
app = Flask(__name__)
globals.init(app)


org_factory = logging.getLogRecordFactory()
logging.setLogRecordFactory(ExastroLogRecordFactory(org_factory))
globals.logger = logging.getLogger('root')
dictLogConf(LOGGING)

globals.logger.setLevel(os.getenv('LOG_LEVEL', 'INFO'))
RequestID(app)


def __convert_keycloak_charset(conn, keycloak_db):
    """Convert Keycloak database charset from utf8 to utf8mb4

    Args:
        conn: Database connection
        keycloak_db (str): Keycloak database name

    Returns:
        int: result (0=succeed / other=failed)
    """
    with conn.cursor() as cursor:
        # Check if backup table exists (crash recovery)
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['CHECK_BACKUP_TABLE_EXISTS'])
        cursor.execute(query)
        backup_exists_result = cursor.fetchone()
        backup_exists = (backup_exists_result[0] if isinstance(backup_exists_result, tuple) else backup_exists_result.get('COUNT(*)')) > 0

        # Crash recovery: restore FKs from backup
        if backup_exists:
            globals.logger.info('Crash recovery: Restoring FKs from backup...')

            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_BACKUP_FKS'])
            cursor.execute(query)
            backup_fks = cursor.fetchall()

            restored_count = 0
            skipped_count = 0
            failed_count = 0

            for fk_row in backup_fks:
                table_name = fk_row[0] if isinstance(fk_row, tuple) else fk_row.get('TABLE_NAME')
                constraint_name = fk_row[1] if isinstance(fk_row, tuple) else fk_row.get('CONSTRAINT_NAME')
                column_name = fk_row[2] if isinstance(fk_row, tuple) else fk_row.get('COLUMN_NAME')
                ref_table = fk_row[3] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_TABLE_NAME')
                ref_column = fk_row[4] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_COLUMN_NAME')

                try:
                    query = queries.render_query(
                        queries.CHARSET_CONVERSION_QUERIES['ADD_FOREIGN_KEY'],
                        KEYCLOAK_DB=keycloak_db,
                        TABLE_NAME=table_name,
                        CONSTRAINT_NAME=constraint_name,
                        COLUMN_NAME=column_name,
                        REFERENCED_TABLE=ref_table,
                        REFERENCED_COLUMN=ref_column
                    )
                    cursor.execute(query)
                    # Success - delete from backup
                    query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DELETE_FROM_BACKUP'])
                    cursor.execute(query, (constraint_name,))
                    restored_count += 1
                except Exception as e:
                    if "doesn't exist" in str(e):
                        # Table deleted by Liquibase - normal, delete from backup
                        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DELETE_FROM_BACKUP'])
                        cursor.execute(query, (constraint_name,))
                        skipped_count += 1
                    else:
                        # Other error - keep in backup for manual restoration
                        globals.logger.error(f'Failed to restore FK {constraint_name}: {e}')
                        failed_count += 1

            globals.logger.info(f'Restored {restored_count} FKs, skipped {skipped_count} FKs, failed {failed_count} FKs')

            # Check if backup is now empty
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['COUNT_BACKUP_FKS'])
            cursor.execute(query)
            remaining_result = cursor.fetchone()
            remaining_count = remaining_result[0] if isinstance(remaining_result, tuple) else remaining_result.get('COUNT(*)')

            if remaining_count == 0:
                query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DROP_BACKUP_TABLE'])
                cursor.execute(query)
                globals.logger.info('All FKs recovered - backup table dropped')
                conn.commit()
                return 0
            else:
                globals.logger.error(f'WARNING: {remaining_count} FKs still in backup, manual restoration needed')
                # Output manual restoration SQL
                query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_BACKUP_FKS'])
                cursor.execute(query)
                remaining_fks = cursor.fetchall()
                globals.logger.error('To restore remaining foreign keys, execute:')
                for fk in remaining_fks:
                    t = fk[0] if isinstance(fk, tuple) else fk.get('TABLE_NAME')
                    c = fk[1] if isinstance(fk, tuple) else fk.get('CONSTRAINT_NAME')
                    col = fk[2] if isinstance(fk, tuple) else fk.get('COLUMN_NAME')
                    rt = fk[3] if isinstance(fk, tuple) else fk.get('REFERENCED_TABLE_NAME')
                    rc = fk[4] if isinstance(fk, tuple) else fk.get('REFERENCED_COLUMN_NAME')
                    globals.logger.error(f"  ALTER TABLE `{keycloak_db}`.`{t}` ADD CONSTRAINT `{c}` FOREIGN KEY (`{col}`) REFERENCES `{rt}` (`{rc}`);")
                conn.commit()
                return 0

        # Check DB charset
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['CHECK_DB_CHARSET'], KEYCLOAK_DB=keycloak_db)
        cursor.execute(query)
        result = cursor.fetchone()
        if not result:
            globals.logger.info(f'Keycloak database does not exist, skipping conversion')
            return 0

        current_charset = result[0] if isinstance(result, tuple) else result.get('DEFAULT_CHARACTER_SET_NAME')
        if current_charset == 'utf8mb4':
            globals.logger.info(f'Keycloak database is already utf8mb4, skipping conversion')
            return 0

        globals.logger.info(f'Converting keycloak database charset from {current_charset} to utf8mb4')

        # Get all tables
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_ALL_TABLES'], KEYCLOAK_DB=keycloak_db)
        cursor.execute(query)
        all_tables = cursor.fetchall()

        utf8mb3_tables = []
        for table_row in all_tables:
            table_name = table_row[0] if isinstance(table_row, tuple) else table_row.get('TABLE_NAME')
            collation = table_row[1] if isinstance(table_row, tuple) else table_row.get('TABLE_COLLATION')
            if collation and not collation.startswith('utf8mb4'):
                utf8mb3_tables.append(table_name)

        if not utf8mb3_tables:
            globals.logger.info('All tables already utf8mb4')
            return 0

        globals.logger.info(f'Found {len(utf8mb3_tables)} utf8mb3 tables to convert')

        # Create backup table (first time only)
        if not backup_exists:
            globals.logger.info('Creating FK backup table')
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['CREATE_BACKUP_TABLE'])
            cursor.execute(query)

            # Save all FK information
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_ALL_FKS'], KEYCLOAK_DB=keycloak_db)
            cursor.execute(query)
            all_fks = cursor.fetchall()

            for fk_row in all_fks:
                table_name = fk_row[0] if isinstance(fk_row, tuple) else fk_row.get('TABLE_NAME')
                constraint_name = fk_row[1] if isinstance(fk_row, tuple) else fk_row.get('CONSTRAINT_NAME')
                column_name = fk_row[2] if isinstance(fk_row, tuple) else fk_row.get('COLUMN_NAME')
                ref_table = fk_row[3] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_TABLE_NAME')
                ref_column = fk_row[4] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_COLUMN_NAME')
                query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['INSERT_FK_BACKUP'])
                cursor.execute(query, (table_name, constraint_name, column_name, ref_table, ref_column))

            globals.logger.info(f'Backed up {len(all_fks)} foreign key constraints')

        # Convert database charset
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['ALTER_DB_CHARSET'], KEYCLOAK_DB=keycloak_db)
        cursor.execute(query)

        # Step 1: Drop all FKs
        globals.logger.info(f'Step 1: Dropping {len(all_fks)} foreign keys...')
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_DISTINCT_FKS_FROM_BACKUP'])
        cursor.execute(query)
        all_fks_in_backup = cursor.fetchall()
        dropped_count = 0

        for fk_row in all_fks_in_backup:
            fk_table = fk_row[0] if isinstance(fk_row, tuple) else fk_row.get('TABLE_NAME')
            constraint_name = fk_row[1] if isinstance(fk_row, tuple) else fk_row.get('CONSTRAINT_NAME')

            # Check if FK still exists
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['CHECK_FK_EXISTS'], KEYCLOAK_DB=keycloak_db)
            cursor.execute(query, (fk_table, constraint_name))
            fk_exists_result = cursor.fetchone()
            fk_exists = (fk_exists_result[0] if isinstance(fk_exists_result, tuple) else fk_exists_result.get('COUNT(*)')) > 0

            if fk_exists:
                query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DROP_FOREIGN_KEY'], KEYCLOAK_DB=keycloak_db, TABLE_NAME=fk_table, CONSTRAINT_NAME=constraint_name)
                cursor.execute(query)
                dropped_count += 1

        globals.logger.info(f'Dropped {dropped_count} foreign keys')

        # Step 2: Convert all tables
        globals.logger.info(f'Step 2: Converting {len(utf8mb3_tables)} tables to utf8mb4...')
        for table_name in utf8mb3_tables:
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['CONVERT_TABLE_CHARSET'], KEYCLOAK_DB=keycloak_db, TABLE_NAME=table_name)
            cursor.execute(query)
        globals.logger.info(f'Converted {len(utf8mb3_tables)} tables')

        # Step 3: Recreate all FKs
        globals.logger.info('Step 3: Recreating foreign keys...')
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_BACKUP_FKS'])
        cursor.execute(query)
        all_fks_to_restore = cursor.fetchall()
        restored_count = 0
        skipped_count = 0

        for fk_row in all_fks_to_restore:
            fk_table = fk_row[0] if isinstance(fk_row, tuple) else fk_row.get('TABLE_NAME')
            constraint_name = fk_row[1] if isinstance(fk_row, tuple) else fk_row.get('CONSTRAINT_NAME')
            column_name = fk_row[2] if isinstance(fk_row, tuple) else fk_row.get('COLUMN_NAME')
            ref_table = fk_row[3] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_TABLE_NAME')
            ref_column = fk_row[4] if isinstance(fk_row, tuple) else fk_row.get('REFERENCED_COLUMN_NAME')

            try:
                query = queries.render_query(
                    queries.CHARSET_CONVERSION_QUERIES['ADD_FOREIGN_KEY'],
                    KEYCLOAK_DB=keycloak_db,
                    TABLE_NAME=fk_table,
                    CONSTRAINT_NAME=constraint_name,
                    COLUMN_NAME=column_name,
                    REFERENCED_TABLE=ref_table,
                    REFERENCED_COLUMN=ref_column
                )
                cursor.execute(query)
                # Success - delete from backup
                query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DELETE_FROM_BACKUP'])
                cursor.execute(query, (constraint_name,))
                restored_count += 1
            except Exception as e:
                if "doesn't exist" in str(e):
                    # Table will be deleted by Liquibase - delete from backup
                    query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DELETE_FROM_BACKUP'])
                    cursor.execute(query, (constraint_name,))
                    skipped_count += 1
                else:
                    # Other error - keep in backup
                    globals.logger.error(f'Failed to recreate FK {constraint_name}: {e}')

        globals.logger.info(f'Recreated {restored_count} FKs, skipped {skipped_count} FKs (tables deleted by Liquibase)')

        # Check if backup is now empty
        query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['COUNT_BACKUP_FKS'])
        cursor.execute(query)
        remaining_result = cursor.fetchone()
        remaining_count = remaining_result[0] if isinstance(remaining_result, tuple) else remaining_result.get('COUNT(*)')

        if remaining_count == 0:
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['DROP_BACKUP_TABLE'])
            cursor.execute(query)
            globals.logger.info('All FKs recreated - backup table dropped')
            globals.logger.info('Charset conversion completed successfully')
        else:
            globals.logger.error(f'WARNING: {remaining_count} FKs still in backup')
            # Output manual restoration SQL
            query = queries.render_query(queries.CHARSET_CONVERSION_QUERIES['GET_BACKUP_FKS'])
            cursor.execute(query)
            remaining_fks = cursor.fetchall()
            globals.logger.error('To restore remaining foreign keys, execute:')
            for fk in remaining_fks:
                t = fk[0] if isinstance(fk, tuple) else fk.get('TABLE_NAME')
                c = fk[1] if isinstance(fk, tuple) else fk.get('CONSTRAINT_NAME')
                col = fk[2] if isinstance(fk, tuple) else fk.get('COLUMN_NAME')
                rt = fk[3] if isinstance(fk, tuple) else fk.get('REFERENCED_TABLE_NAME')
                rc = fk[4] if isinstance(fk, tuple) else fk.get('REFERENCED_COLUMN_NAME')
                globals.logger.error(f"  ALTER TABLE `{keycloak_db}`.`{t}` ADD CONSTRAINT `{c}` FOREIGN KEY (`{col}`) REFERENCES `{rt}` (`{rc}`);")

        conn.commit()
    return 0


def __main():
    """platform initialize db main

    Returns:
        int: result(0=succeed / other=failed)
    """
    try:
        globals.logger.info('START : platform initialize_db_main')

        with closing(
                migration_common.wait_until_connect_to_db(
                    os.environ.get("DB_HOST"),
                    os.environ.get("DB_ADMIN_USER"),
                    os.environ.get("DB_ADMIN_PASSWORD"),
                    None)) as conn:

            db_data_version = migration_common.get_db_data_version(conn)

            # If database is already initialized, check and convert charset
            if db_data_version is not None:
                globals.logger.info(f'SKIP : platform initialize_db_main : alredy initialized (db data version : {db_data_version})')

                # Convert keycloak database charset from utf8 to utf8mb4 if needed
                keycloak_db = os.environ.get("KEYCLOAK_DB_DATABASE", "keycloak")
                return __convert_keycloak_charset(conn, keycloak_db)
            with conn.cursor() as cursor:

                for query_template in queries.INITIALIZE_QUERIES:
                    template = Template(source=query_template)
                    query = template.render(os.environ)
                    globals.logger.info(f'EXECUTE SQL:{query}')
                    cursor.execute(query)

            conn.commit()

        globals.logger.info('SUCCEED : platform initialize_db_main')
        return 0
    except Exception as err:
        globals.logger.error(''.join(list(traceback.TracebackException.from_exception(err).format())))
        return -1


if __name__ == '__main__':
    ret = __main()
    exit(ret)
