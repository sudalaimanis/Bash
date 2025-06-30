#!/bin/bash

for host in $(cat remhosts)
do
   echo
   echo "#########################################################"
   echo "Connecting to $host"

   # Choose username based on host
   if [[ "$host" == *"amzlnx"* || "$host" == *"amazon"* || "$host" == "web03" ]]; then
       USR="ec2-user"
   else
       USR="ubuntu"
   fi

   echo "Using user: $USR"
   echo "Pushing Script to $host"
   scp multios_websetup.sh $USR@$host:/tmp/
   
   echo "Executing Script on $host"
   ssh $USR@$host "sudo /tmp/multios_websetup.sh"
   ssh $USR@$host "sudo rm -rf /tmp/multios_websetup.sh"

   echo "#########################################################"
   echo
done
