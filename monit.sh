#!/bin/bash

echo "#################################################"
date

ls /var/run/nginx.pid &> /dev/null

if [ $? -eq 0 ]
then
   echo "The Nginx Process is Running"
else
   echo "The Nginx Process is Not Running"
   echo "Starting The Process"
   systemctl start nginx.service
   if [ $? -eq 0 ]
   then
      echo "Nginx Process Started Successfully"
   else 
      echo "Nginx Process Failed, Contact The Admin"
   fi
fi
echo "#################################################"