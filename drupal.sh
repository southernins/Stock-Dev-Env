#!/usr/bin/env bash

#Drupal Version
version=7.34


# If no index.php exists in the public folder start the Drupal download.
if [ ! -f /vagrant/public/index.php ];
then

	# Download and extract Drupal files.
	cd /vagrant/public
	wget https://www.drupal.org/files/projects/drupal-$version.tar.gz
	tar -zxvf drupal-$version.tar.gz
	
	# Change directory to extracted folder	
	cd ./drupal-$version
	
	# Move extracted files into Document root.
	mv * ../
	
	
	cd /vagrant/public
	rm -rf drupal-*

fi

if [ ! -f /var/log/databasesetup ];
then
    echo "CREATE USER '$dbname'@'localhost' IDENTIFIED BY '{$dbpass}'" | mysql -uroot -p12passwd34
    echo "CREATE DATABASE dev_db" | mysql -uroot -p12passwd34
    echo "GRANT ALL ON dev_db.* TO 'dev_db_usr'@'localhost'" | mysql -uroot -p12passwd34
    echo "flush privileges" | mysql -uroot -p12passwd34

    touch /var/log/databasesetup

    if [ -f /vagrant/data/initial.sql ];
    then
        mysql -uroot -p12passwd34 dev_db < /vagrant/data/initial.sql
    fi
fi

