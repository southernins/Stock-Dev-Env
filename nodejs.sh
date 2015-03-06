#!/usr/bin/env bash
#####################
## Node Installer
#####################

#sudo apt-get install nodejs npm


## Updating Node to latest version
# using instructions found at http://davidwalsh.name/upgrade-nodejs

#sudo npm cache clean -f 
#sudo npm install -g n
#sudo n stable

## Changing this again to follow the instructions at
## https://github.com/joyent/node/wiki/installing-node.js-via-package-manager
## 
## 

curl -sL https://deb.nodesource.com/setup | sudo bash -

sudo apt-get install -y nodejs

