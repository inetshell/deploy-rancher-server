FROM staticfloat/nginx-certbot:latest

ARG RANCHER_DNS
COPY rancher.template /etc/nginx/conf.d/
COPY gen_config.sh /scripts/gen_config.sh
RUN chmod u+x /scripts/gen_config.sh
CMD ["/bin/bash", "/scripts/entrypoint.sh"]