#!/usr/bin/env bash

# Check:
# http://docs.vagrantup.com/v2/getting-started/provisioning.html

## #############################################################################
## Maven 3.0.5
## #############################################################################

echo "## ######################################################################"
echo "## Maven"
echo "## ######################################################################"

apt-get -y install maven

# Maven project name: Jack-Ketch-4-Flow
# _____________________________________
# Source Code Management: Git
# -------------------------------------
# Repository URL: https://github.com/alejoceballos/jack-ketch-4-flow.git
# Add Credentials
#   Kind: Username with password
#   Scope: Global (...)
#   Username: alejceballos
#   Password: ************
# Branch Specifier (blank for 'any'): */master
# Repository browser: AUto
# _____________________________________
# Build
# -------------------------------------
# Root POM: jk4j/pom.xml
