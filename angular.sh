#!/usr/bin/env bash

#############
# Setup and Structure Angular Project
############

# Gotta install Git
sudo apt-get install -y git

# Currently using Angular-seed.
# https://github.com/angular/angular-seed

# inside /vagrant/ there were issues related to virtualbox shares.
# moved the inital download of angular-seed away from /vagrant/angular-seed
# DONT use sudo here so the dir is owned by the vagrant user...
mkdir /home/vagrant/angular-seed
git clone --depth=1 https://github.com/angular/angular-seed.git /home/vagrant/angular-seed

##########
# WE NEED TO UPDATE PATHS!!!! Angular Seed uses the "./app" directory
# my vagrant setup has public files inside "./public". a scan and replace
# of the files to swap "app" with "public" needs to be done before proceeding
#####################

cd /home/vagrant/angular-seed

# we don't need/want angular-seeds .git directory the license or readme file.
sudo rm -rf .git LICENSE README.md

# First try at updating paths pragmatically

## get list of files that need to be updated.
# set max depth to only look at files in current directory.
# find ./ -maxdepth 1 -type f -exec grep -l app\/ {} \;

# This perl command replaces the string app/ in the angular seed project files with my
# string "public/" so the config files will properly match the vagrant setup.
# this does not work in a virtual box shared folder... So I'm changing the initial download
# of the angular seed project to /home/vagrant/angular-seed and will move files into
# my /vagrant share when done
perl -p -i -e 's/app\//public\//g' `find . -maxdepth 1 -type f -exec grep -l app\/ {} \;`

# Now that i have updated the config files lets move things to there proper location
# move the angular-seed ./app/* files to my ./public/* folder
sudo mv ./app/* /vagrant/public/
sudo mv ./app/.??* /vagrant/public/

# git rid of the now empty app directory
sudo rm -rf ./app

# move the rest of the files
sudo mv ./* /vagrant/
sudo mv ./.??* /vagrant/

# lets move back to the /vagrant working directory
cd /vagrant

# install node modules and use --no-bin-links to sidestep symlink issue in vagrant on windows.
# sudo npm install --no-bin-links

# using --no-bin-links i still have issues related to symlinks and shared folders.
## other articles suggest moving node_modules outside the shared /vagrant folder to remedie issues 
## running vagrant/node/npm
## http://kmile.nl/post/73956428426/npm-vagrant-and-symlinks-on-windows

# Since my current expectation is  to have a single Vagrant environment for each project.
# it should be acceptable to use global installs for node modules.  Normally this is frowned up because
# different projects may require different versions of modules... 

#  I should'nt have to use -g
# sudo npm install -g

sudo npm install 

# After this I still had to install bower manually
# sudo npm install -g bower

# then I can run bower install ( trying to get npm install working )
# bower install

# angular-seed states it runs bower automaticlly
# this does not seem to happen in this setup.
# possible vagrant / windows issue?
# overcome this by calling manually while still inside /vagrant/

#./node_modules/bower/bin/bower install



##########################################
# Problems running npm install
#
#
##########################################

# Running npm install
# symlink issues
# Error: UNKNOWN symlink '../'

# Running npm install -g
# Bower: not found.
# Exit status 127