#!/bin/bash

#   Copyright 2024 NEC Corporation
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

BASEDIR=$(realpath $(dirname "$0"))
BASENAME=$(basename "$0")
REPOROOT=$(realpath "${BASEDIR}/../..")

BACKUP_LATEST="${BASEDIR}/data/backup_volumes-latest.tgz"
BACKUP_FILEPATH="${BASEDIR}/data/backup_volumes-`date '+%Y%m%d-%H%M'`.tgz"

echo "---------------------------------------------------------------------------------"
echo "-- Start ${BASENAME}"
echo "---------------------------------------------------------------------------------"

echo
echo "-- Start Container pause"
sudo docker container pause devcontainer-keycloak-1
sudo docker container pause devcontainer-platform-db-1
sudo docker container pause devcontainer-ita-mariadb-1

echo
echo "-- Start Backup volumes"
sudo tar cvfz ${BACKUP_FILEPATH} -C "${REPOROOT}" ".volumes" > /dev/null
echo "tar command exit code($?)"

echo
echo "-- Start Container unpause"
sudo docker container unpause devcontainer-ita-mariadb-1
sudo docker container unpause devcontainer-platform-db-1
sudo docker container unpause devcontainer-keycloak-1

echo "---------------------------------------------------------------------------------"
echo "-- Finish ${BASENAME}"
echo "---------------------------------------------------------------------------------"
exit 0
