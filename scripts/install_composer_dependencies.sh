#!/bin/bash
cd /usr/share/nginx/html
#yum install wget -y
wget https://getcomposer.org/composer.phar
php composer.phar install