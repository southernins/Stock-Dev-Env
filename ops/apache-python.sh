#!/usr/bin/env bash

sudo apt-get -y install  apache2

if [ ! -h /var/www ];
then
    sudo rm -rf /var/www/html
    sudo ln -s /vagrant/public /var/www/html

    sudo a2enmod rewrite

    sudo a2dismod mpm_event

    sudo a2enmod mpm_prefork cgi

    #sed -i '/AllowOverride None/c AllowOverride All' /etc/apache2/sites-available/default
	# Use sed to add AllowOverride All to default config.
	sudo sed -i '/DocumentRoot \/var\/www\/html/c DocumentRoot \/var\/www\/html \n\n\<Directory \/var\/www\/html \>\nAllowOverride All\n Options +ExecCGI\n DirectoryIndex index.py\<\/Directory\>\n\nAddHandler cgi-script .py' /etc/apache2/sites-available/000-default.conf

	sudo /bin/cp -rf /vagrant/env_config/envvars /etc/apache2/envvars
	sudo chown vagrant /var/lock/apache2
    sudo usermod -a -G adm vagrant

    sudo service apache2 restart
fi
