#!/bin/bash

source "`dirname $0`/create-organization.conf"

if [ $# -gt 1 ]; then
    echo "Usage: `basename $0` [organization info json file]"
    exit 1
fi

if [ $# -eq 1 ]; then
    if [ ! -f "$1" ]; then
        echo "Error: not found organization info json file : $1"
        exit 1
    fi
fi

if [ $# -eq 0 ]; then
    echo
    echo "Please enter the organization information to be created"
    echo
    read -p "organization id : " ORG_ID
    read -p "organization name : " ORG_NAME
    read -p "organization manager's username : " ORG_MNG_USERNAME
    read -p "organization manager's email : " ORG_MNG_EMAIL
    read -p "organization manager's first name : " ORG_MNG_FIRST_NAME
    read -p "organization manager's last name : " ORG_MNG_LAST_NAME
    read -p "organization manager's initial password : " ORG_MNG_PASSWORD

    BODY_JSON=$(
        cat << EOF
        {
            "id"    :   "${ORG_ID}",
            "name"  :   "${ORG_NAME}",
            "organization_managers" : [
                {
                    "username"  :   "${ORG_MNG_USERNAME}",
                    "email"     :   "${ORG_MNG_EMAIL}",
                    "firstName" :   "${ORG_MNG_FIRST_NAME}",
                    "lastName"  :   "${ORG_MNG_LAST_NAME}",
                    "credentials"   :   [
                        {
                            "type"      :   "password",
                            "value"     :   "${ORG_MNG_PASSWORD}",
                            "temporary" :   true
                        }
                    ],
                    "requiredActions": [
                        "UPDATE_PROFILE"
                    ],
                    "enabled": true
                }
            ],
            "options": {}
        }
EOF
    )
else
    BODY_JSON=$(cat $1)
fi

echo
read -p "your username : " USERNAME
read -sp "your password : " PASSWORD

echo
read -p "Create an organization, are you sure? (Y/other) : " CONFIRM
if [ "${CONFIRM}" != "Y" -a "${CONFIRM}" != "y" ]; then
    exit 1
fi

# echo "POST JSON:"
# echo "${BODY_JSON}"
# echo

TEMPFILE="/tmp/`basename $0`.$$"
curl -s -v -X POST \
    -u ${USERNAME}:${PASSWORD} \
    -H 'Content-type: application/json' \
    -d "${BODY_JSON}" \
    -o "${TEMPFILE}" \
    "${CONF_BASE_URL}/api/platform/organizations"

which jq &> /dev/null
if [ $? -eq 0 ]; then
    cat "${TEMPFILE}" | jq
    if [ $? -ne 0 ]; then
        cat "${TEMPFILE}"
    fi
else
    cat "${TEMPFILE}"
fi

rm "${TEMPFILE}"
