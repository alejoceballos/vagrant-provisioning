#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html

## #######################################################################################
## Composer
## Dependencies: 
## + bootstrap-curl.sh
## + bootstrap-php5.sh (with php5-json)
## #######################################################################################

curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

