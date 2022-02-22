#!/bin/bash
#   Copyright 2019 NEC Corporation
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

BASE_DIR=`dirname $0`

ALL_MANIFESTS="${BASE_DIR}/exastro-common-auth-install.yaml"
SOURCE_MANIFEST="${BASE_DIR}/source"

# ---- source内のyamlファイル定義 ----
YAMLFILES=()
YAMLFILES+=("exastro-common-auth-namespace.yaml")
YAMLFILES+=("exastro-common-auth-env.yaml")
YAMLFILES+=("exastro-common-auth-secret.yaml")
YAMLFILES+=("common-api.yaml")
YAMLFILES+=("gateway-httpd.yaml")
YAMLFILES+=("keycloak.yaml")
# -----------------------------------



cat <<EOF > ${ALL_MANIFESTS}
#   Copyright 2019 NEC Corporation
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
EOF


for YAMLFILE in ${YAMLFILES[@]}; do
    if [ ! -f "${SOURCE_MANIFEST}/${YAMLFILE}" ]; then
        echo "ERROR: not found ${YAMLFILE}"
        exit 1
    fi
    echo    ""                                      >>  ${ALL_MANIFESTS}
    echo    "#---- ${YAMLFILE}"                     >>  ${ALL_MANIFESTS}
    echo    "---"                                   >>  ${ALL_MANIFESTS}
    cat     "${SOURCE_MANIFEST}/${YAMLFILE}"        >>  ${ALL_MANIFESTS}
done

for YAMLFILEPATH in $(ls ${SOURCE_MANIFEST}/*.yaml); do
    YAMLNAME=$(basename "${YAMLFILEPATH}")

    ONLIST=$(for item in "${YAMLFILES[@]}"; do echo "${item}"; done | grep "${YAMLNAME}" | wc -l)
    if [ ${ONLIST} -eq 0 ]; then
        echo "WARNING: not listed file : ${YAMLNAME}"
    fi
done


echo "SUCCEED !!"
