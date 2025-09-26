#!/bin/bash

echo enter the PAN number
read -s Pan_number
echo "Pan entered is: $PAN_number"
# we shousld not put $ before variable name while reading in read command
# -s is for silent mode, it will not show what we are typing
# variables are case sensitive Pan_number is different from PAN_number