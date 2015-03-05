#####################
## Node Installer
#####################


sudo apt-get install nodejs npm


## Updating Node to latest version
# using instructions found at http://davidwalsh.name/upgrade-nodejs

sudo npm cache clean -f 
sudo npm install -g n
sudo n stable