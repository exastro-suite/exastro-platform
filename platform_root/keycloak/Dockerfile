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
FROM quay.io/keycloak/keycloak:20.0 as common_build

# Keycloakのtagを変更した場合は、platform-migrationのDockerfileにあるENV KEYCLOAK_VERSIONも合わせて変更する必要があります
# If you change Keycloak tag, you need to change ENV KEYCLOAK_VERSION in platform-migration Dockerfile as well

# Enable health and metrics support
ENV KC_HEALTH_ENABLED=true
ENV KC_METRICS_ENABLED=true

# # Configure a database vendor
# # ENV KC_DB=mariadb

WORKDIR /opt/keycloak
# # for demonstration purposes only, please make sure to use proper certificates in production instead
# RUN keytool -genkeypair -storepass password -storetype PKCS12 -keyalg RSA -keysize 2048 -dname "CN=server" -alias server -ext "SAN:c=DNS:localhost,IP:127.0.0.1" -keystore conf/server.keystore
# RUN /opt/keycloak/bin/kc.sh build

# FROM quay.io/keycloak/keycloak:20.0 as common_build
# COPY --from=common_build /opt/keycloak/ /opt/keycloak/

# ENV KEYCLOAK_WELCOME_THEME=exastro
# ENV KEYCLOAK_DEFAULT_THEME=exastro

# WORKDIR /opt/jboss/keycloak/themes/exastro.v2
# COPY    ./platform_root/keycloak/themes/exastro/account /opt/jboss/keycloak/themes/exastro.v2/account

# WORKDIR /opt/jboss/keycloak/themes/exastro
# COPY    ./platform_root/keycloak/themes/exastro /opt/jboss/keycloak/themes/exastro
ENV KC_SPI_THEME_DEFAULT=exastro

WORKDIR /opt/keycloak/themes/exastro.v2
COPY    ./platform_root/keycloak/themes/exastro/account /opt/keycloak/themes/exastro.v2/account
COPY    ./platform_root/keycloak/themes/exastro/admin /opt/keycloak/themes/exastro.v2/admin

WORKDIR /opt/keycloak/themes/exastro
COPY    ./platform_root/keycloak/themes/exastro /opt/keycloak/themes/exastro

WORKDIR /opt/keycloak/META-INF

COPY    ./platform_root/keycloak/themes/keycloak-themes.json /opt/keycloak/META-INF/keycloak-themes.json

#
# Build for development
#   Specify options when creating this image: --target develop_build
#
FROM    common_build as develop_build

# RUN     cp -f /opt/jboss/keycloak/standalone/configuration/standalone.xml       /opt/jboss/keycloak/standalone/configuration/standalone.xml.org \
# &&      cp -f /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml    /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml.org \
# &&      mkdir -p /opt/jboss/startup-scripts

# COPY    ./platform_root/keycloak/configuration/standalone.dev.xml               /opt/jboss/keycloak/standalone/configuration/standalone.xml
# COPY    ./platform_root/keycloak/configuration/standalone-ha.dev.xml            /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml

# COPY    ./platform_root/keycloak/startup-scripts/01_dev_cp_original_file.sh    /opt/jboss/startup-scripts/.

#
# Build for production
#
FROM    common_build

# COPY    ./platform_root/keycloak/configuration/standalone.prod.xml               /opt/jboss/keycloak/standalone/configuration/standalone.xml
# COPY    ./platform_root/keycloak/configuration/standalone-ha.prod.xml            /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml
