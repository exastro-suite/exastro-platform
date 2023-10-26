#!/bin/bash

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

DB_CONTAINER=devcontainer-platform-db-1
KEYCLOAK_CONTAINER=devcontainer-keycloak-1

TEMPDIR=/tmp
DESTPATH=${BASEPATH}/data
DUMPFILE_INIT=pytest1_init_db.sql
DUMPFILE_DATA=pytest2_restore_data.sql

mkdir -p "${DESTPATH}"

read -p "Database admin user : " USERNAME
read -sp "Database admin password : " PASSWORD
echo
MYSQL_LOGIN_INFO=" -u ${USERNAME} --password=${PASSWORD}"

echo "[INFO] patch DATABASES"
docker exec -i "${DB_CONTAINER}" bash <<__EOF__
mysql ${MYSQL_LOGIN_INFO} -e "UPDATE keycloak.CLIENT SET SECRET = 'dummy' WHERE SECRET IS NOT NULL;"
mysql ${MYSQL_LOGIN_INFO} -e "UPDATE platform.T_PLATFORM_PRIVATE SET INFORMATIONS = JSON_REPLACE(INFORMATIONS, '$.TOKEN_CHECK_CLIENT_SECRET', 'dummy');"
__EOF__

echo "[INFO] restart keycloak"
docker restart ${KEYCLOAK_CONTAINER}

echo "[INFO] export DATABASES"
docker exec -it "${DB_CONTAINER}" bash -c "mysqldump ${MYSQL_LOGIN_INFO} --result-file ${TEMPDIR}/${DUMPFILE_INIT} --no-data --databases keycloak platform"
docker cp ${DB_CONTAINER}:${TEMPDIR}/${DUMPFILE_INIT} ${DESTPATH}/${DUMPFILE_INIT}

docker exec -i "${DB_CONTAINER}" bash <<__EOF__ > ${DESTPATH}/${DUMPFILE_DATA}
echo "SET foreign_key_checks = 0;"
mysql ${MYSQL_LOGIN_INFO} -N -e "select CONCAT('DELETE FROM ',TABLE_SCHEMA,'.',TABLE_NAME,';') from INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA in ('keycloak', 'platform');"
mysqldump ${MYSQL_LOGIN_INFO} --no-create-info --no-create-db  --skip-disable-keys --databases keycloak platform
echo "SET foreign_key_checks = 1;"
__EOF__

echo "[INFO] ${BASENAME} succeceful : ${DUMPFILE_INIT} ${DUMPFILE_DATA}"
