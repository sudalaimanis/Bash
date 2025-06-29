#!/bin/bash

echo "Welcome to $USER on $HOSTNAME."

echo "#################################"

freeram=$(free -m | grep Mem | awk '{print $4}')
load=$(uptime | awk '{print $9}')
rootfree=$(df -h | grep '/dev/sdd' | awk '{print $4}')

echo "#################################"
echo "Free RAM: $freeram MB"
echo "#################################"
echo "Load Average: $load"
echo "#################################"
echo "Free Space in Root: $rootfree MB"
echo "#################################"