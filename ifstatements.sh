#!/bin/bash

read -p "Enter a number: " num
echo

if [ $num -gt 100 ]
then
    echo "The number is greater than 100."
elif [ $num -eq 100 ]
then
    echo "The number is equal to 100."
else
    echo "The number is less than 100."
fi

echo "Script execution completed."