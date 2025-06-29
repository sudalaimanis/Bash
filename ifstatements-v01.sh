#!/bin/bash

VALUE=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [$VALUE -eq 1 ]
then
	echo "1 Active Network Interface Found"
elif [$VALUE -gt 1 ]
then
	echo "Found Multiple Active Interface"
else
	echo "No Active Interface Found"
fi