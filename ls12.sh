#!/bin/bash

# $? -> previous command exit status
# 0 -> SUCCESS
# 1-127 -> FAILURE
# root user id =0
# user id -> (id -u)

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0,we are forcing thinking the above case might fail
    #the main disadvantage of shell script is even if we get error it will continue that's why we are forcing to exit using exit 1 cmd
    # uf exit 0 given it will continue and procede

dnf install mysql -y

if [ $? -ne 0 ]; then # $? -> Exit status of the last command that was run
                      # if put : insted of ; else statement wont work
    echo "ERROR:: Installing MySQL is failure"
    exit 1
else
    echo "Installing MySQL is SUCCESS"
fi
