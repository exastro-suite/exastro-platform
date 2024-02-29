#!/bin/bash

BASEDIR=$(dirname $0)

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)

sudo docker compose -f "${BASEDIR}/docker-compose.yml" up;

$(
    cd "${BASEDIR}";
    sudo docker compose rm -s -f;
)
