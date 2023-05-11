#!/bin/bash

source "`dirname $0`/api-auth.conf"

echo
echo "Please enter the organization ID and start datetime to delete the organization-plan"
echo
read -p "organization id : " ORG_ID
read -p "start datetime (yyyy-mm-dd hh:mm:ss) : " START_DATETIME

echo
read -p "your username : " USERNAME
read -sp "your password : " PASSWORD

echo
read -p "Delete an organization-plan, are you sure? (Y/other) : " CONFIRM
if [ "${CONFIRM}" != "Y" -a "${CONFIRM}" != "y" ]; then
    exit 1
fi

TEMPFILE_API_RESPONSE="/tmp/`basename $0`.$$.1"
TEMPFILE_API_CODE="/tmp/`basename $0`.$$.2"

ENCODE_DATETIME=$(echo ${START_DATETIME} | jq -Rr '@uri')

touch "${TEMPFILE_API_RESPONSE}"
touch "${TEMPFILE_API_CODE}"

curl ${CURL_OPT} -X DELETE \
    -u ${USERNAME}:${PASSWORD} \
    -o "${TEMPFILE_API_RESPONSE}" \
    -w '%{http_code}\n' \
    "${CONF_BASE_URL}/api/platform/${ORG_ID}/plans/${ENCODE_DATETIME}" > "${TEMPFILE_API_CODE}"

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
