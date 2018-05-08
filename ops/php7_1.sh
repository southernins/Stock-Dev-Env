#!/usr/bin/env bash

sudo add-apt-repository ppa:ondrej/php

sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php7.1-cli php7.1-common libapache2-mod-php7.1 php7.1 

# Install PHP Modules
sudo apt-get -y install php7.1-mysql php7.1-fpm php7.1-gd php7.1-curl php7.1-mcrypt php7.1-mbstring php7.1-xml php-xdebug

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.1/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.1/cli/php.ini

# Enable xDebug Remote Debugging
# sudo sed -i "$ xdebug.remote_enable = 1" /etc/php/7.0/mods-available/xdebug.ini

# PS1="React-Form: \w\$ "