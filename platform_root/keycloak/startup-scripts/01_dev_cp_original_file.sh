#!/bin/bash

rm -rf /workspace/platform_root/keycloak/themes/base
rm -rf /workspace/platform_root/keycloak/themes/keycloak
rm -rf /workspace/platform_root/keycloak/themes/keycloak.v2

cp -rp /opt/jboss/keycloak/themes/base        /workspace/platform_root/keycloak/themes/.
cp -rp /opt/jboss/keycloak/themes/keycloak    /workspace/platform_root/keycloak/themes/.
cp -rp /opt/jboss/keycloak/themes/keycloak.v2 /workspace/platform_root/keycloak/themes/.
cp -f /opt/jboss/keycloak/themes/README.txt   /workspace/platform_root/keycloak/themes/.

cp -f /opt/jboss/keycloak/standalone/configuration/standalone.xml.org     /workspace/platform_root/keycloak/configuration/.
cp -f /opt/jboss/keycloak/standalone/configuration/standalone-ha.xml.org  /workspace/platform_root/keycloak/configuration/.
