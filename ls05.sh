#!/bin/bash

echo enter the PAN number
read -s PAN_number
echo "Pan entered is: $PAN_number"
# we shousld not put $ before variable name while reading input
# -s is for silent mode, it will not show what we are typing