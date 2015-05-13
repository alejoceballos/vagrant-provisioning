#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# https://github.com/videlalvaro/php-amqplib

## #############################################################################
## #############################################################################
##
## BASIC DEV ENVIRONMENT AND INITIALIZATION
##
## #############################################################################
## #############################################################################

## Project path

PROJ_PATH=/vagrant/project-code
mkdir $PROJ_PATH

## Library: php-amqplib

COMPOSER_JSON=$PROJ_PATH/composer.json
touch $COMPOSER_JSON
echo { >> $COMPOSER_JSON
echo "  "\"require\": { >> $COMPOSER_JSON
echo "    "\"videlalvaro/php-amqplib\": \"2.2.*\" >> $COMPOSER_JSON
echo "  "} >> $COMPOSER_JSON
echo } >> $COMPOSER_JSON

cd $PROJ_PATH

composer install

cp -R $PROJ_PATH/vendor/videlalvaro/php-amqplib/demo/ $PROJ_PATH/demo/
cd $PROJ_PATH/demo/

echo ===========================================================================
echo ==      CHECK USAGE at https://github.com/videlalvaro/php-amqplib        ==
echo ===========================================================================

