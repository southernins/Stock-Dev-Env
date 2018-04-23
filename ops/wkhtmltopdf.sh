#!/usr/bin/env bash

###############################
## Install wkthmltopdf
##

wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.4/wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

tar -Jxvf wkhtmltox-0.12.4_linux-generic-amd64.tar.xz

sudo mv ./wkhtmltox/bin/wkhtmltopdf  /usr/local/bin/wkhtmltopdf

sudo rm -rf ./wkhtmltox*

