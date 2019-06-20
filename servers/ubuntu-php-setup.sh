#!/bin/bash

sudo apt-get install -y python-software-properties
sudo apt-get install -y software-properties-common
sudo apt-get install -y nginx
sudo add-apt-repository -y ppa:ondrej/php
sudo apt-get update
apt-cache pkgnames | grep php7.2

sudo apt-get install -y php7.2 php7.2-curl php7.2-cli \
php7.2-common php7.2-mbstring php7.2-gd php7.2-intl \
php7.2-xml php7.2-mysql php7.2-mcrypt php7.2-zip \
php7.2-pdo-pgsql php7.2-dom php7.2-bcmath \
php7.2-imagick php7.2-mysql  

sudo apt-get install -y php7.2-fpm

sudo wget https://getcomposer.org/installer && php installer && chmod +x composer.phar
sudo mv composer.phar /usr/bin/composer

composer 

#handle letsencrypt
sudo add-apt-repository -y ppa:certbot/certbot
sudo apt-get update
sudo apt-get install -y python-certbot-nginx

#install mysql 
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password password your_password'
sudo debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password your_password'
sudo apt-get -y install mysql-server
