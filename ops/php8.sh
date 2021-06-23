#!/usr/bin/env bash

## Ubuntu 20 ships with PHP 8
#sudo add-apt-repository ppa:ondrej/php
#
#sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php-cli php-common libapache2-mod-php php

# Install PHP Modules
sudo apt-get -y install php-mysql php-fpm php-gd php-curl php-mbstring php-xml php-xdebug php-sqlite

# install PHP-zip extension for Facebook/WebDriver dependency of laravel/dusk
sudo apt-get -y install php-zip

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/8.0/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/8.0/cli/php.ini

# Enable xDebug Remote Debugging
# sudo sed -i "$ xdebug.remote_enable = 1" /etc/php/7.0/mods-available/xdebug.ini

# PS1="React-Form: \w\$ "