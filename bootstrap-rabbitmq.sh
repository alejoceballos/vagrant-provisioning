#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# http://www.howtoforge.com/installing-apache2-with-php5-and-mysql-support-on-ubuntu-13.04-lamp

## #######################################################################################
## RabbitMQ Server
## #######################################################################################

apt-get -y install rabbitmq-server
apt-get -y -f install

