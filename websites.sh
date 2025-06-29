#!/bin/bash

# Installing Dependencies
echo "#################################"
echo "Installation packages"
echo "#################################"
sudo apt update && sudo apt install wget unzip apache2 -y
echo

# Start & enable services
echo "#################################"
echo "Start & Enable apache2 service"
sudo systemctl start apache2
sudo systemctl enable apache2
echo


# Creating temp directory
echo "#################################"
echo "Starting Artifact Deployment"
echo "#################################"
mkdir -p /tmp/webfiles
cd /tmp/webfiles
echo

wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null
sudo cp -r 2098_health/* /var/www/html/
echo

# Bounce Service
echo "#################################"
echo "Restarting apache2 service"
echo "#################################"
sudo systemctl restart apache2
echo