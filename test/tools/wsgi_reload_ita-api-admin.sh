#!/bin/bash

CONTAINER=devcontainer-ita-api-admin-1
sudo docker exec "${CONTAINER}" sudo touch /exastro/application.wsgi
echo "[INFO] ${CONTAINER}  wsgi reload succeceful."
