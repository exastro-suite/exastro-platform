#!/bin/bash

CONTAINER=devcontainer-ita-api-admin-1
sudo docker exec "${CONTAINER}" sudo apachectl -k graceful
echo "[INFO] ${CONTAINER}  graceful succeceful."
