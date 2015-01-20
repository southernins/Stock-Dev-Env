#!/usr/bin/env bash

sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password 12passwd34'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password 12passwd34'
sudo apt-get update
sudo apt-get -y install mysql-server-5.5 php5-mysql apache2 php5
 
if [ ! -f /var/log/databasesetup ];
then
    echo "CREATE USER 'dev_db_usr'@'localhost' IDENTIFIED BY 'dev_db_pass'" | mysql -uroot -p12passwd34
    echo "CREATE DATABASE dev_db" | mysql -uroot -p12passwd34
    echo "GRANT ALL ON dev_db.* TO 'dev_db_usr'@'localhost'" | mysql -uroot -p12passwd34
    echo "flush privileges" | mysql -uroot -p12passwd34

    touch /var/log/databasesetup

    if [ -f /vagrant/data/initial.sql ];
    then
        mysql -uroot -p12passwd34 dev_db < /vagrant/data/initial.sql
    fi
fi

if [ ! -h /var/www ];
then 
    rm -rf /var/www
    sudo ln -s /vagrant/public /var/www

    a2enmod rewrite

    sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default

    service apache2 restart
fi