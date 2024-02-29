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

BASEDIR=$(dirname $0)

rm -rf "${BASEDIR}/db/exports/__pycache__"
ln -sf "${BASEDIR}/db/exports/mariadb/testdata.py" "${BASEDIR}/db/exports/testdata.py"
ln -sf "${BASEDIR}/db/exports/mariadb/pytest2_restore_databases.sql" "${BASEDIR}/db/exports/pytest2_restore_databases.sql"

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)

sudo docker compose -f "${BASEDIR}/docker-compose.yml" up;

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)
