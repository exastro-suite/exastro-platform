#!/bin/bash

CONTAINER=devcontainer-ita-api-admin-1
sudo docker exec "${CONTAINER}" sudo httpd -k graceful
echo "[INFO] ${CONTAINER}  graceful succeceful."
