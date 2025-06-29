#!/bin/bash

# Variable Declaration
PACKAGE="httpd wget unzip"
SVC="httpd"
#URL='https://www.tooplate.com/zip-templates/2098_health.zip'
#ART_NAME='2098_health'
TEMPDIR="/tmp/webfiles"

# Installing Dependencies
echo "#################################"
echo "Installation packages"
echo "#################################"
sudo apt update && sudo apt install $PACKAGE -y
echo

# Start & enable services
echo "#################################"
echo "Start & Enable Apache2 service"
sudo systemctl start $SVC
sudo systemctl enable $SVC
echo

# Creating temp directory
echo "#################################"
echo "Starting Artifact Deployment"
echo "#################################"
mkdir -p $TEMPDIR
cd $TEMPDIR
echo

wget $1 > /dev/null
unzip $2 > /dev/null
sudo cp -r $2/* /var/www/html/
echo

# Bounce Service
echo "#################################"
echo "Restarting apache2 service"
echo "#################################"
sudo systemctl restart $SVC
echo