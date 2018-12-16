#!/usr/bin/env bash
#
###########################################
# Scripts to setup a Django Python Project
#

sudo rm -rf /vagrant/.git

./apache-python.sh
./pip.sh
./django.sh
./mysql.sh
./db.sh