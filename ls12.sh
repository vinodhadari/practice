#!/bin/bash

# $? -> previous command exit status
# 0 -> SUCCESS
# 1-127 -> FAILURE
# root user id =0
# user id -> (id -u)

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi
