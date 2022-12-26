#!/bin/bash

CONTAINER=devcontainer-platform-web-1
sudo docker exec "${CONTAINER}" apachectl -k graceful
echo "[INFO] ${CONTAINER}  graceful succeceful."
