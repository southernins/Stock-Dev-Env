#!/usr/bin/env bash

#############
# Setup and Strucutre Angular Proejct
############


# Gotta install Git
sudo apt-get install -y git

# Currently using Angular-seed.
# https://github.com/angular/angular-seed

# inside /vagrant/
sudo mkdir angular_seed
git clone --depth=1 https://github.com/angular/angular-seed.git ./angular_seed


##########
# WE NEED TO UPDATE PATHS!!!!
# Angular Seed currently uses the "app" directory
# my vagrant setup has public files inside "public"
# a quick scan and replace of the files to swap "app" with 
# "public" needs to be done before proceding
#####################


# install node modules and use --no-bin-links to sidestep symlink issue in vagrant on windows.
sudo npm install --no-bin-links

# angular-seed states it runs bower automaticlly
# this does not seem to happen in this setup.
# possible vagrant / windows issue?
# overcome this by calling manually while still inside /vagrant/

./node_modules/bower/bin/bower install