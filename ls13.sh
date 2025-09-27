#!/bin/bash/

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR ::change to root user"
    exit 1
fi

dnf install mysql -y
if [ $? -ne 0 ]; then 
    echo "error ::mysql installation failed "
    exit 1
fi

dnf install nginx -y
if [ $? -ne 0 ]; then 
    echo "error ::ngnix installation failed "
    exit 1
fi

dnf install python3 -y
if [ $? -ne 0 ]; then 
    echo "error ::python3 installation failed "
    exit 1
fi
