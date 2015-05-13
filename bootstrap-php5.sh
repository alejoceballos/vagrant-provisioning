#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# http://www.howtoforge.com/installing-apache2-with-php5-and-mysql-support-on-ubuntu-13.04-lamp

## #######################################################################################
## PHP 5
## Dependencies:
## + libapache2-mod-php5 => bootstrap-apache.sh
## + php5-mysql          => bootstrap-mysql.sh
## #######################################################################################

# Installs last php5
apt-get -y install php5

# MySQL integration
apt-get -y install php5-mysql 

## #######################################################################################
# Other PHP packages
## #######################################################################################

# apt-get -y install php5-json # JSON lib (already installed in the new version)
# apache2 integration (already installed in the new version) # apt-get -y install libapache2-mod-php5
# apt-get -y install php5-dev
# apt-get -y install php5-curl 
# apt-get -y install php5-gd 
# apt-get -y install php5-intl 
# apt-get -y install php5-imagick 
# apt-get -y install php5-imap 
# apt-get -y install php5-mcrypt 
# apt-get -y install php5-memcache 
# apt-get -y install php5-ming 
# apt-get -y install php5-ps 
# apt-get -y install php5-pspell 
# apt-get -y install php5-recode 
# apt-get -y install php5-snmp 
# apt-get -y install php5-sqlite 
# apt-get -y install php5-tidy 
# apt-get -y install php5-xmlrpc 
# apt-get -y install php5-xsl
# apt-get -y install php5-xcache

# Fixes any broken package (just to be sure)
apt-get -y -f install

## #######################################################################################
## Install xdebug
## #######################################################################################

# apt-get -y install php-pear
# pecl install xdebug

# XDEBUG_PATH=$(sudo find / -name "xdebug.so")
# PHP_INI_PATH=/etc/php5/apache2/php.ini

# echo >> $PHP_INI_PATH
# echo >> $PHP_INI_PATH
# echo [xdebug] >> $PHP_INI_PATH
# echo zend_extension=\"$XDEBUG_PATH\" >> $PHP_INI_PATH
# echo xdebug.default_enable=1 >> $PHP_INI_PATH
# echo xdebug.remote_enable=on >> $PHP_INI_PATH
# echo xdebug.remote_handler=dbgp >> $PHP_INI_PATH
# echo xdebug.remote_mode=req >> $PHP_INI_PATH
# echo xdebug.remote_host=localhost >> $PHP_INI_PATH
# echo xdebug.remote_port=9000 >> $PHP_INI_PATH
# echo xdebug.remote_autostart=0 >> $PHP_INI_PATH
# echo xdebug.remote_log=/vagrant/xdebug_remote_log >> $PHP_INI_PATH

## #######################################################################################
## Other php.ini settings
## #######################################################################################

# "php.ini" (PHP config file) full path
PHP_INI_PATH=/etc/php5/apache2
PHP_INI_FILE=$PHP_INI_PATH/php.ini

# Create a backup file from the original one
cp $PHP_INI_FILE $PHP_INI_FILE.bak

# Set "memory_limit" to "2G"
# sed -i '/memory_limit/ c\memory_limit = 2048M' $PHP_INI_FILE

# Set "post_max_size" to "24M"
# sed -i '/post_max_size/ c\post_max_size = 24M' $PHP_INI_FILE

# Set "expose_php" to "Off"
# sed -i '/expose_php/ c\expose_php = Off' $PHP_INI_FILE

# Set "upload_max_filesize" to "4M"
# sed -i '/upload_max_filesize/ c\upload_max_filesize = 4M' $PHP_INI_FILE


## #######################################################################################
## Default phpinfo file
## #######################################################################################

# To test if it is working, an info file will be placed (Warning! Apache bootstrap must have created Documents directory)
PHP_INFO_PATH=/var/www/Documents/phpinfo.php

touch $PHP_INFO_PATH
echo '<?php' >> $PHP_INFO_PATH
echo '	phpinfo();' >> $PHP_INFO_PATH
echo '?>' >> $PHP_INFO_PATH

## #######################################################################################
## Web Server restart
## #######################################################################################

# Restarts web server to apply PHP configurations
/etc/init.d/apache2 restart

