#!/bin/bash

CONTAINER=devcontainer-platform-web-1
sudo docker exec "${CONTAINER}" httpd -k graceful
echo "[INFO] ${CONTAINER}  graceful succeceful."
