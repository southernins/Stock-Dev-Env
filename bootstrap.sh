#!/usr/bin/env bash

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password 12passwd34'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password 12passwd34'
sudo apt-get update
sudo apt-get -y install mysql-server-5.5 php5-mysql apache2 php5
 
if [ ! -h /var/www ];
then 
    rm -rf /var/www
    sudo ln -s /vagrant/public /var/www

    a2enmod rewrite

    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default

    service apache2 restart
fi