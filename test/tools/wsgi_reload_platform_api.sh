#!/bin/bash

CONTAINER=devcontainer-platform-api-1
sudo docker exec "${CONTAINER}" touch /app/application.wsgi
echo "[INFO] ${CONTAINER}  wsgi reload succeceful."
