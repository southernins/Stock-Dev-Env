#!/usr/bin/env bash

sudo add-apt-repository ppa:ondrej/php

sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php7.0-cli php7.0-common libapache2-mod-php7.0 php7.0 

# Install PHP Modules

sudo apt-get -y install php7.0-mysql php7.0-fpm php7.0-gd php7.0-curl php-mcrypt php7.0-mbstring php7.0-xml php-xdebug

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.0/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.0/cli/php.ini

