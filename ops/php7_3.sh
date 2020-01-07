#!/usr/bin/env bash

sudo add-apt-repository ppa:ondrej/php

sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php7.3-cli php7.3-common libapache2-mod-php7.3 php7.3

# Install PHP Modules
sudo apt-get -y install php7.3-mysql php7.3-fpm php7.3-gd php7.3-curl php7.3-mbstring php7.3-xml php-xdebug php7.3-sqlite

# install PHP-zip extension for Facebook/WebDriver dependency of laravel/dusk
sudo apt-get -y install php7.3-zip

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.3/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.3/cli/php.ini

# Enable xDebug Remote Debugging
# sudo sed -i "$ xdebug.remote_enable = 1" /etc/php/7.0/mods-available/xdebug.ini

# PS1="React-Form: \w\$ "
