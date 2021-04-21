#!/usr/bin/env bash

## Ubuntu 20 ships with PHP 7.4
#sudo add-apt-repository ppa:ondrej/php
#
#sudo apt-get update



# Install PHP
# sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json
sudo apt-get -y install php7.4-cli php7.4-common libapache2-mod-php php7.4

# Install PHP Modules
sudo apt-get -y install php7.4-mysql php7.4-fpm php7.4-gd php7.4-curl php7.4-mbstring php7.4-xml php7.4-xdebug php7.4-sqlite

# install PHP-zip extension for Facebook/WebDriver dependency of laravel/dusk
sudo apt-get -y install php7.4-zip

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.4/apache2/php.ini

# update time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php/7.4/cli/php.ini

# Enable xDebug Remote Debugging
# sudo sed -i "$ xdebug.remote_enable = 1" /etc/php/7.0/mods-available/xdebug.ini

# PS1="React-Form: \w\$ "
