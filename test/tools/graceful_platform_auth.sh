#!/bin/bash

CONTAINER=devcontainer-platform-auth-1
sudo docker exec "${CONTAINER}" httpd -k graceful
echo "[INFO] ${CONTAINER}  graceful succeceful."
