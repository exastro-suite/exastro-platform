#!/bin/bash

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

DB_CONTAINER=devcontainer-platform-db-1
TEMPDIR=/tmp
DESTPATH=${BASEPATH}/data
DUMPFILE=${BASENAME}-`date '+%Y%m%d-%H%M'`-$$.dmp

mkdir -p "${DESTPATH}"

DATABASES=$( docker exec -it ${DB_CONTAINER} bash -c \
            'echo "show databases;" | mysql -u root --password=${DB_ROOT_PASSWORD} | sed -e "1d" -e "/^information_schema\$/d" -e "/^mysql\$/d" -e "/^performance_schema\$/d" | tr "\n" " "' )

echo "[INFO] export DATABASES : ${DATABASES}"
docker exec -it "${DB_CONTAINER}" bash -c "mysqldump -u root --password=\${DB_ROOT_PASSWORD} --result-file ${TEMPDIR}/${DUMPFILE} --add-drop-table --databases ${DATABASES}"
docker cp ${DB_CONTAINER}:${TEMPDIR}/${DUMPFILE} ${DESTPATH}/${DUMPFILE}

echo "[INFO] ${BASENAME} succeceful : ${DUMPFILE}"
