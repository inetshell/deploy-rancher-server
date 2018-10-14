#!/bin/sh

echo "Generating NGINX config file"
export DOLLAR='$'
envsubst < /etc/nginx/conf.d/rancher.template > /etc/nginx/conf.d/rancher.conf

echo "Starting entrypoint"
/scripts/entrypoint.sh
