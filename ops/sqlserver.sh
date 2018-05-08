#!/usr/bin/env bash

###############################
## Install Microsoft SQL Server on Linux for Dev boxes
#
# instructions from:
# https://docs.microsoft.com/en-us/sql/linux/quickstart-install-connect-ubuntu?view=sql-server-linux-2017


# Import the public repository GPG keys:
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft SQL Server Ubuntu repository
sudo add-apt-repository "$(wget -qO- https://packages.microsoft.com/config/ubuntu/16.04/mssql-server-2017.list)"

# Install SQL Server
sudo apt-get update
sudo apt-get install -y mssql-server

# Run mssql-conf setup
sudo /opt/mssql/bin/mssql-conf setup

# to verify the servcie is running 
# systemctl status mssql-server
# 

# Install the SQL Server command-line tools

# Import the public repository GPG keys:
curl https://packages.microsoft.com/keys/microsoft.asc | sudo apt-key add -

# Register the Microsoft Ubuntu repository.
curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list | sudo tee /etc/apt/sources.list.d/msprod.list

# run the installation command with the unixODBC developer package.
sudo apt-get update
sudo apt-get install mssql-tools unixodbc-dev

# Add /opt/mssql-tools/bin/ to your PATH environment variable in a bash shell.
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile