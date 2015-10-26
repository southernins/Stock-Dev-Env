#!/usr/bin/env bash

<<<<<<< HEAD
sudo apt-get -y install php5-mysql php5 php5-gd
=======
# Install PHP and modules
sudo apt-get -y install php5-mysql php5 php5-gd php5-curl php5-json

# Edit Config to set Timezone in apache config file
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php5/apache2/php.ini

# udpate time zone in CLI config file.
sudo sed -i "/date.timezone \=/c date.timezone \= America\/Chicago" /etc/php5/cli/php.ini
>>>>>>> refs/remotes/origin/Development
