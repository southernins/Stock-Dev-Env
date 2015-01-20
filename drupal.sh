#!/usr/bin/env bash

#Drupal Version
version=7.34
if [ ! -f /vagrant/public/index.php ];
then

	cd /vagrant/public
	wget https://www.drupal.org/files/projects/drupal-$version.tar.gz
	tar -zxvf drupal-$version.tar.gz
	
	cd ./drupal-$version
	mv * ../
	cd /vagrant/public
	rm -rf drupal-*
	
	find /vagrant/public -type d -print0 | xargs -0 chmod 755 
    find /vagrant/public -type f -print0 | xargs -0 chmod 644

fi

