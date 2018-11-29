# Rancher v1.6 Deployment

Rancher 1.6 with the following configuration:
- Rancher server, single container
- Bind mount MySQL volume
- HTTPS support with Let's Encrypt certificate
- Tested on CentOS 7.5

## Requirements:
* docker-ce-18.06.x
* docker-compose

## To deploy:
```
chmod u+x deploy.sh
export CERTBOT_EMAIL=info@example.com
export RANCHER_DNS=rancher.example.com
export RANCHER_VERSION=stable
export RANCHER_VOLUME="/rancher/volume/"
./deploy.sh
```
