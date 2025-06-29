#!/bin/bash

sudo systemctl stop apache2
sudo systemctl disable apache2
sudo rm -rf /var/www/html/*
sudo rm -rf /tmp/webfiles
sudo rm -f /tmp/2098_health.zip
sudo apt remove --purge wget unzip apache2 -y
sudo apt autoremove -y
echo "Apache2 service stopped and cleaned up."
echo "Temporary files and directories removed."
echo "Uninstalled packages and removed dependencies."
echo "Dismantling completed successfully."