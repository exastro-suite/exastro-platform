#!/bin/bash

source "`dirname $0`/api-auth.conf"


echo
read -p "your username : " USERNAME
read -sp "your password : " PASSWORD

TEMPFILE_API_RESPONSE="/tmp/`basename $0`.$$.1"
TEMPFILE_API_CODE="/tmp/`basename $0`.$$.2"

touch "${TEMPFILE_API_RESPONSE}"
touch "${TEMPFILE_API_CODE}"


curl ${CURL_OPT} -X GET \
    -u ${USERNAME}:${PASSWORD} \
    -w '%{http_code}\n' \
    -o "${TEMPFILE_API_RESPONSE}" \
    "${CONF_BASE_URL}/api/platform/maintenance-mode-setting" > "${TEMPFILE_API_CODE}"

RESULT_CURL=$?
RESULT_CODE=$(cat "${TEMPFILE_API_CODE}")

which jq &> /dev/null
if [ $? -eq 0 ]; then
    cat "${TEMPFILE_API_RESPONSE}" | jq
    if [ $? -ne 0 ]; then
        cat "${TEMPFILE_API_RESPONSE}"
    fi
else
    cat "${TEMPFILE_API_RESPONSE}"
fi

rm "${TEMPFILE_API_RESPONSE}" "${TEMPFILE_API_CODE}"

if [ ${RESULT_CURL} -eq 0 -a "${RESULT_CODE}" == "200" ]; then
    exit 0
else
    exit -1
fi