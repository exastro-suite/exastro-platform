#!/bin/bash

source "`dirname $0`/api-auth.conf"

if [ $# -gt 1 ]; then
    echo "Usage: `basename $0` [update-setting json file]"
    exit 1
fi

PARAM_JSON_FILE="$1"

# echo "PARAM_JSON_FILE :[${PARAM_JSON_FILE}]"
# echo "PARAM_RETRY     :[${PARAM_RETRY}]"

if [ ! -z "${PARAM_JSON_FILE}" ]; then
    if [ ! -f "${PARAM_JSON_FILE}" ]; then
        echo "Error: not found maintenance-mode-setting json file : ${PARAM_JSON_FILE}"
        exit 1
    fi
fi

BODY_JSON=$(cat "${PARAM_JSON_FILE}")


echo
read -p "your username : " USERNAME
read -sp "your password : " PASSWORD

echo
read -p "Update setting, are you sure? (Y/other) : " CONFIRM
if [ "${CONFIRM}" != "Y" -a "${CONFIRM}" != "y" ]; then
    exit 1
fi

echo "POST JSON:"
echo "${BODY_JSON}"
echo

TEMPFILE_API_RESPONSE="/tmp/`basename $0`.$$.1"
TEMPFILE_API_CODE="/tmp/`basename $0`.$$.2"

touch "${TEMPFILE_API_RESPONSE}"
touch "${TEMPFILE_API_CODE}"

curl ${CURL_OPT} -X PATCH \
    -u ${USERNAME}:${PASSWORD} \
    -H 'Content-type: application/json' \
    -d "${BODY_JSON}" \
    -o "${TEMPFILE_API_RESPONSE}" \
    -w '%{http_code}\n' \
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
