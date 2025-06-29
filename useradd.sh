#!/bin/bash

MYUSERS="linux sre devops"

for usr in $MYUSERS
do
    echo "Adding user $usr"
    useradd $usr
    id $usr
    echo "#################################################"
done