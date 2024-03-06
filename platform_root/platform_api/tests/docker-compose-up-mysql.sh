#!/bin/bash

BASEDIR=$(dirname $0)

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)

sudo docker compose -f "${BASEDIR}/docker-compose.yml" -f "${BASEDIR}/docker-compose-mysql.yml" up;

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)
