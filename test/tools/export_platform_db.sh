#!/bin/bash

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

DB_CONTAINER=devcontainer-platform-db-1
TEMPDIR=/tmp
DESTPATH=${BASEPATH}/data
DUMPFILE=${BASENAME}-`date '+%Y%m%d-%H%M'`-$$.dmp

mkdir -p "${DESTPATH}"

read -p "Database admin user : " USERNAME
read -sp "Database admin password : " PASSWORD
echo
MYSQL_LOGIN_INFO=" -u ${USERNAME} --password=${PASSWORD}"

DATABASES=$( docker exec -it ${DB_CONTAINER} bash -c \
            'echo "show databases;" | mysql '"${MYSQL_LOGIN_INFO}"' | sed -e "1d" -e "/^information_schema\$/d" -e "/^mysql\$/d" -e "/^performance_schema\$/d" | tr "\n" " "' )

echo "[INFO] export DATABASES : ${DATABASES}"
docker exec -it "${DB_CONTAINER}" bash -c "mysqldump ${MYSQL_LOGIN_INFO} --result-file ${TEMPDIR}/${DUMPFILE} --add-drop-table --databases ${DATABASES}"
docker cp ${DB_CONTAINER}:${TEMPDIR}/${DUMPFILE} ${DESTPATH}/${DUMPFILE}

echo "[INFO] ${BASENAME} succeceful : ${DUMPFILE}"
