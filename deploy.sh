#!/usr/bin/env bash
export SCRIPT_HOME="$( cd "$(dirname "${0}")" ; pwd -P )"

if [ -z "${CERTBOT_EMAIL}" ] || [ -z ${RANCHER_DNS} ]; then
    echo "CERTBOT_EMAIL or RANCHER_DNS variables are not defined"
    exit 1
fi

docker-compose --project-name 'rancher' -f docker/docker-compose.yml up --build -d