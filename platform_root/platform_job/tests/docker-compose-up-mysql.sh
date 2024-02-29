#!/bin/bash

BASEDIR=$(dirname $0)

rm -rf "${BASEDIR}/db/exports/__pycache__"
ln -sf "${BASEDIR}/db/exports/mysql/testdata.py" "${BASEDIR}/db/exports/testdata.py"
ln -sf "${BASEDIR}/db/exports/mysql/pytest2_restore_databases.sql" "${BASEDIR}/db/exports/pytest2_restore_databases.sql"

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)

sudo docker compose -f "${BASEDIR}/docker-compose.yml" -f "${BASEDIR}/docker-compose-mysql.yml" up;

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)

