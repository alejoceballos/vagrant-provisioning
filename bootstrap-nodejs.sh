#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html
# http://www.saltycrane.com/blog/2014/11/how-install-grunt-ubuntu-1404/

## #######################################################################################
## Node.js
## Using a different PPA since the official one seems to have problems with grunt
## #######################################################################################

# Adds
add-apt-repository -y ppa:chris-lea/node.js

# Reloads with the new PPA packages
apt-get update

# Installs Node.js
apt-get -y install nodejs

# Installs Grunt task runner
npm install -g grunt
npm install -g grunt-cli
