#!/usr/bin/env bash
export SCRIPT_HOME="$( cd "$(dirname "${0}")" ; pwd -P )"

if [ -z "${CERTBOT_EMAIL}" ] || [ -z ${RANCHER_DNS} ] || [ -z ${RANCHER_VERSION} ] || [ -z ${RANCHER_VOLUME} ]; then
    echo "CERTBOT_EMAIL, RANCHER_DNS, RANCHER_VERSION or RANCHER_VOLUME variables are not defined"
    exit 1
fi

docker-compose --project-name 'rancher' -f docker/docker-compose.yml up --build -d