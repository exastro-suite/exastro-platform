#!/bin/bash

BASENAME=$(basename "$0")
BASEPATH=$(dirname "$0")

DESTPATH=$(realpath "${BASEPATH}/../db/exports")
DUMPFILE_INIT=pytest1_init_db.sql
DUMPFILE_DATA=pytest2_restore_data.sql

MYSQL_LOGIN_INFO=" -u ${DB_ADMIN_USER} --password=${DB_ADMIN_PASSWORD} -h ${DB_HOST}"

echo "※注意※"
echo "本scriptはDBを初期化(migration直後)した状態で実行してください"
echo "exportファイルはmariadb, mysql共通ですので、mariadbでmigration直後に実施してください"

# read -p "実行しますか? (Y/other):" CONFIRM
# if [ "${CONFIRM}" != "Y" ]; then
#     exit 1
# fi

# sudo rm ${DESTPATH}/${DUMPFILE_INIT} ${DESTPATH}/${DUMPFILE_DATA}
rm -f ${DESTPATH}/${DUMPFILE_INIT} ${DESTPATH}/${DUMPFILE_DATA}

echo "[INFO] export DATABASES"
mysqldump ${MYSQL_LOGIN_INFO} --result-file ${DESTPATH}/${DUMPFILE_INIT} --no-data --databases keycloak platform

(
echo "SET foreign_key_checks = 0;"
mysql ${MYSQL_LOGIN_INFO} -N -e "select CONCAT('DELETE FROM ',TABLE_SCHEMA,'.',TABLE_NAME,';') from INFORMATION_SCHEMA.TABLES WHERE TABLE_SCHEMA in ('keycloak', 'platform');"
mysqldump ${MYSQL_LOGIN_INFO} --no-create-info --no-create-db  --skip-disable-keys --databases keycloak platform
echo "SET foreign_key_checks = 1;"
) > ${DESTPATH}/${DUMPFILE_DATA}

echo "[INFO] ${BASENAME} succeceful : ${DUMPFILE_INIT} ${DUMPFILE_DATA}"
