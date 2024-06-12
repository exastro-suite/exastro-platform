#   Copyright 2022 NEC Corporation
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

# FROM jboss/keycloak:16.1.1 as common_build
FROM quay.io/keycloak/keycloak:24.0 as common_build

# Keycloakのtagを変更した場合は、platform-migrationのDockerfileにあるENV KEYCLOAK_VERSIONも合わせて変更する必要があります
# If you change Keycloak tag, you need to change ENV KEYCLOAK_VERSION in platform-migration Dockerfile as well

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

ENV KC_PROXY=edge
ENV KC_HTTP_RELATIVE_PATH=/auth
ENV KC_HTTP_ENABLED=true
ENV KC_HOSTNAME_STRICT=false

# # Configure a database vendor
# # ENV KC_DB=mariadb

WORKDIR /opt/keycloak

WORKDIR /opt/keycloak/themes/exastro
COPY    ./platform_root/keycloak/themes/exastro /opt/keycloak/themes/exastro

WORKDIR /opt/keycloak/META-INF

COPY    ./platform_root/keycloak/themes/keycloak-themes.json /opt/keycloak/META-INF/keycloak-themes.json

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

#
# Build for production
#
FROM    common_build
