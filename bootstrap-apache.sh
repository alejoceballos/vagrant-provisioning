#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# http://www.howtoforge.com/installing-apache2-with-php5-and-mysql-support-on-ubuntu-13.04-lamp

## #######################################################################################
## Apache 2
## #######################################################################################

# Installs the server
apt-get install -y apache2

# Fixes any broken package (just to be sure)
apt-get -y -f install

# Ensures var www to be /vagrant shared folder
rm -rf /var/www
ln -fs /vagrant /var/www

/etc/init.d/apache2 restart

## #######################################################################################
## Apache Web Server settings for other Virtual Hosts
## #######################################################################################

# Copies default apache site to vagrant shared dir
# rm -rf /vagrant/<VHost Name>/
# mkdir /vagrant/<VHost Name>
# cp -rf /var/www/* /vagrant/<VHost Name>

# Removes default apache site
# rm -rf /var/www

# Links /var/www to vagrant shared dir
# ln -fs /vagrant/<VHost Name> /var/www

# Changes the default physical path of the document root
# mv /vagrant/<VHost Name>/html /vagrant/<VHost Name>/Documents

# Updates the existing virtual host document root that points to port 80
# Changes "/var/www/html" to "/var/www/Documents" in "/etc/apache2/sites-available/000-default.conf"
# sed -i 's/\/var\/www\/html/\/var\/www\/Documents/g' /etc/apache2/sites-available/000-default.conf

# Restarts Web Server
# /etc/init.d/apache2 restart


