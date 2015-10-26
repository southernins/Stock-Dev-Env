#!/usr/bin/env bash
#
###############################
# yii Framework Install Script
#
# Instructions from
# http://www.yiiframework.com/download/
#
# Prefered method of using Composer


# install the Composer Asset Plugin: ( changed install mthod
# to asset file
# composer global require "fxp/composer-asset-plugin:1.0.0"

cd /vagrant/public

# download Asset file
wget -O advanced.tar.gz https://github.com/yiisoft/yii2/releases/download/2.0.3/yii-advanced-app-2.0.3.tgz

# Extract archive ( results in a advanced folder inside /vagrant/public/)
tar -xvf advanced.tar.gz

# 1. Run command `init` to initialize the application with a specific environment.
# run /vagrant/public/advanced/init
# Answer questions

# create Database and update config file
#2. Create a new database and adjust the `components['db']` configuration in `common/config/main-local.php` accordingly.


#   3. Apply migrations with console command `yii migrate`. This will create tables needed for the application to work.

# run the yii migrate command to setup initial DB.