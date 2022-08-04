#!/bin/sh
BASEDIR=$(dirname "$0")

swagger-cli bundle -o ${BASEDIR}/build/openapi.yaml -t yaml ${BASEDIR}/openapi.yaml
swagger-cli bundle -o ${BASEDIR}/build/user_referense.yaml -t yaml ${BASEDIR}/user_referense.yaml
swagger-cli bundle -o ${BASEDIR}/build/system_manager_referense.yaml -t yaml ${BASEDIR}/system_manager_referense.yaml
