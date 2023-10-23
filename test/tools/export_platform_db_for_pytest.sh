#!/bin/bash

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

DB_CONTAINER=devcontainer-platform-db-1
TEMPDIR=/tmp
DESTPATH=${BASEPATH}/data
DUMPFILE_INIT=pytest1_init_db.sql
DUMPFILE_DATA=pytest9_restore_data.sql

mkdir -p "${DESTPATH}"

read -p "Database admin user : " USERNAME
read -sp "Database admin password : " PASSWORD
echo
MYSQL_LOGIN_INFO=" -u ${USERNAME} --password=${PASSWORD}"

DATABASES=$( docker exec -it ${DB_CONTAINER} bash -c \
            'echo "show databases;" | mysql '"${MYSQL_LOGIN_INFO}"' | sed -e "1d" -e "/^information_schema\$/d" -e "/^mysql\$/d" -e "/^performance_schema\$/d" | tr "\n" " "' )

echo "[INFO] export DATABASES : ${DATABASES}"
docker exec -it "${DB_CONTAINER}" bash -c "mysqldump ${MYSQL_LOGIN_INFO} --result-file ${TEMPDIR}/${DUMPFILE_INIT} --databases ${DATABASES}"
docker cp ${DB_CONTAINER}:${TEMPDIR}/${DUMPFILE_INIT} ${DESTPATH}/${DUMPFILE_INIT}

docker exec -i devcontainer-platform-db-1 bash <<__EOF__ > ${DESTPATH}/${DUMPFILE_DATA}
mysql ${MYSQL_LOGIN_INFO} -N -e "select CONCAT('DELETE FROM ',TABLE_SCHEMA,'.',TABLE_NAME,';') from INFORMATION_SCHEMA.TABLES WHERE ' ${DATABASES} ' like CONCAT('% ',TABLE_SCHEMA,' %');"
mysqldump ${MYSQL_LOGIN_INFO} --no-create-info --no-create-db --databases ${DATABASES}
__EOF__

echo "[INFO] ${BASENAME} succeceful : ${DUMPFILE_INIT} ${DUMPFILE_DATA}"
