#!/usr/bin/env bash
#
###############################
# Zend Framework Install Script
#
# Instructions from
# http://framework.zend.com/manual/2.0/en/user-guide/skeleton-application.html
#

# Since we cannot currently install into a populated directory
# we'll use a temp dir to hold the project.
mkdir /home/vagrant/zf

# PHP Update....

sudo apt-get install python-software-properties

sudo add-apt-repository ppa:ondrej/php5
sudo apt-get update
sudo apt-get install php5



# Install Zend Framework Skeleton via Composer
composer create-project --repository-url="http://packages.zendframework.com" zendframework/skeleton-application /home/vagrant/zf

# Clean up some directories.
rm -rf README.md /home/vagrant/zf/vendor/bin/ /vagrant/public/

# Move 
mv * /vagrant/

rm -rf /var/www/html
sudo ln -s /vagrant/public /var/www/html
sudo service apache2 restart