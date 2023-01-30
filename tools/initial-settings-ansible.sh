#!/bin/bash

source "`dirname $0`/api-auth.conf"

if [ $# -ne 1 ]; then
    echo "Usage: `basename $0` [initialize ita ansible hosts json file]"
    exit 1
fi

PARAM_JSON_FILE=$1


# check file exists
if [ ! -f ${PARAM_JSON_FILE} ]; then
    echo "ERROR: Not found: ${PARAM_JSON_FILE}"
    exit 1
fi

# command check
which jq &> /dev/null
COMMAND_WHICH_JQ=$?

if [ ${COMMAND_WHICH_JQ} -eq 0 ]; then
    # JSON foramat check
    echo "INFO: Checking JSON file"
    cat ${PARAM_JSON_FILE} | jq > /dev/null
    if [ $? -ne 0 ]; then
        echo "ERROR: JSON file format"
        exit 1
    fi
fi

echo
read -p "organization id : " ORG_ID

if [ "${ORG_ID}" == "" ]; then
    echo "please enter organization id ... retry the $0"
    exit 1
fi

echo
read -p "your username : " USERNAME
read -sp "your password : " PASSWORD

echo
read -p "Initial setting Ansible, are you sure? (Y/other) : " CONFIRM
if [ "${CONFIRM}" != "Y" -a "${CONFIRM}" != "y" ]; then
    exit 1
fi

TEMPFILE_API_RESPONSE="/tmp/`basename $0`.$$.1"
TEMPFILE_API_CODE="/tmp/`basename $0`.$$.2"

touch "${TEMPFILE_API_RESPONSE}"
touch "${TEMPFILE_API_CODE}"

curl ${CURL_OPT} -X POST \
    -u ${USERNAME}:${PASSWORD} \
    -H 'Content-type: application/json' \
    -d "@${PARAM_JSON_FILE}" \
    -o "${TEMPFILE_API_RESPONSE}" \
    -w '%{http_code}\n' \
    "${CONF_BASE_URL}/api/ita/${ORG_ID}/initial-settings/ansible/" > "${TEMPFILE_API_CODE}"

RESULT_CURL=$?
RESULT_CODE=$(cat "${TEMPFILE_API_CODE}")

if [ ${COMMAND_WHICH_JQ} -eq 0 ]; then
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
