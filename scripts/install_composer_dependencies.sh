#!/bin/bash

# Copy source files to DEVELOPMENT environment
if [ "$DEPLOYMENT_GROUP_NAME" == "development" ]; then
sudo rsync -av /var/www/html/ /var/www/development/domain.com
cd /var/www/development/domain.com && npm install
fi
# Copy source files to PRODUCTION environment
if [ "$DEPLOYMENT_GROUP_NAME" == "production" ]; then
sudo rsync -av /var/www/html/ /var/www/production/domain.com
cd /var/www/production/domain.com && npm install
fi

cd /usr/share/nginx/html
#yum install wget -y
wget https://getcomposer.org/composer.phar
php composer.phar install