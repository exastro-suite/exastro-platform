#!/bin/bash

BASEDIR=$(dirname $0)
ENCRYPT_KEY=$(cat /dev/urandom | head -c 32 | base64)
cat << EOF >.env.makedb
ENCRYPT_KEY=${ENCRYPT_KEY}
COMPOSE_PROJECT_NAME=makedb
NETWORK_ID=20240627
EOF

$(
    cd "${BASEDIR}";
    docker-compose down --rmi local --volumes --remove-orphans;
)

cd ${BASEDIR}
DOCKERDIR=${PWD}
# cd "${BASEDIR}/../..";
# ls -la .
# echo $(realpath "${PWD}")
echo pwd=${PWD}
echo BASEDIR=${BASEDIR}
echo DOCKERDIR=${DOCKERDIR}
docker-compose --env-file .env.makedb -f "${DOCKERDIR}/docker-compose-make-db.yml" up;

echo "Successed compose-up"

$(
    cd "${BASEDIR}";
    docker-compose down --rmi local --volumes --remove-orphans;
    rm -f .env.makedb
)
