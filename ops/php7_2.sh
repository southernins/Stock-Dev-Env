#!/usr/bin/env bash

sudo add-apt-repository ppa:ondrej/php

sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php7.2-cli php7.2-common libapache2-mod-php7.2 php7.2

# Install PHP Modules
sudo apt-get -y install php7.2-mysql php7.2-fpm php7.2-gd php7.2-curl php7.2-mbstring php7.2-xml php-xdebug php7.2-sqlite

# install PHP-zip extension for Facebook/WebDriver dependency of laravel/dusk
sudo apt-get -y install php7.2-zip

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.2/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.2/cli/php.ini

# Enable xDebug Remote Debugging
# sudo sed -i "$ xdebug.remote_enable = 1" /etc/php/7.0/mods-available/xdebug.ini

# PS1="React-Form: \w\$ "
