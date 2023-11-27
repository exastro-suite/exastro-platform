#!/bin/bash
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

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

export PLATFORM_API_ORIGIN=http://platform-api:8000
export DB_ADMIN_USER=root
export DB_ADMIN_PASSWORD=password
export KEYCLOAK_DB_NAME=keycloak
export KEYCLOAK_DB_USERNAME=keycloak
export UNITTEST_DB_HOST=unittest-platform-db
DEFAULT_KEYCLOAK_ADMIN_USER=admin
DEFAULT_KEYCLOAK_ADMIN_PASSWORD=password

export TESTDATA_PYTHON=$(realpath "${BASEPATH}/../db/exports/testdata.py")
export TESTDATA_DATABASE_DUMP=$(realpath "${BASEPATH}/../db/exports/pytest1_init_databases.sql")
export TEST_RESTORE_DATABASE_DUMP=$(realpath "${BASEPATH}/../db/exports/pytest2_restore_databases.sql")
export TESTDATA_CREATEUSER_SQL=$(realpath "${BASEPATH}/../db/exports/pytest9_database_users.sql")

echo "※注意※"
echo "本scriptはDBを初期化(migration直後)した状態で実行してください"
echo "また、本script実行時に再度DBを初期化してください"

read -p "実行しますか? (Y/other):" CONFIRM
if [ "${CONFIRM}" != "Y" ]; then
    exit 1
fi

read -p "keycloak admin user [default:${DEFAULT_KEYCLOAK_ADMIN_USER}]: " KEYCLOAK_ADMIN_USER
read -sp "keycloak admin password [default:${DEFAULT_KEYCLOAK_ADMIN_PASSWORD}]: " KEYCLOAK_ADMIN_PASSWORD
echo

if [ -z "${KEYCLOAK_ADMIN_USER}" ]; then
    KEYCLOAK_ADMIN_USER=${DEFAULT_KEYCLOAK_ADMIN_USER}
fi
if [ -z "${KEYCLOAK_ADMIN_PASSWORD}" ]; then
    KEYCLOAK_ADMIN_PASSWORD=${DEFAULT_KEYCLOAK_ADMIN_PASSWORD}
fi

export KEYCLOAK_ADMIN_USER=${KEYCLOAK_ADMIN_USER}
export KEYCLOAK_ADMIN_PASSWORD=${KEYCLOAK_ADMIN_PASSWORD}

python3 ${BASEPATH}/make_tests_db_exports.py
