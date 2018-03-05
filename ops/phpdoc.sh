#!/usr/bin/env bash

#########################
# Set up phpDocumentor 2
#########################

wget https://github.com/phpDocumentor/phpDocumentor2/releases/download/v2.9.0/phpDocumentor-2.9.0.tgz

tar xzf phpDocumentor-2.9.0.tgz

rm phpDocumentor-2.9.0.tgz

sudo mv phpDocumentor-2.9.0/ /usr/share/php

sudo ln -s /usr/share/php/phpDocumentor-2.9.0/bin/phpdoc /usr/local/bin/phpdoc