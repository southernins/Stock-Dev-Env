#!/usr/bin/env bash

###############################
## Drupal Initialization Script
## this time taking a different route
## download composer and drush to 
## hopefully automate creating drupal
## installitions from simple make files.
##

## Get composer.. This may be useful for more than just drupal
## i may need to move this into the bootstrap script(s)
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

## now go and get Drush current version 6.x
composer global require drush/drush:6.*