#!/usr/bin/env bash
#
###############################
# Scripts to run after you vagrant ssh into a new box for the first time
#

sudo rm -rf /vagrant/.git

./apache.sh
./php7.sh
./mysql.sh
./composer.sh
./nodejs.sh
./dusk-dependencies.sh
./db.sh
