#!/bin/basg/

USERID=$(id -u)

if [ $USERID -ne 0 ] ; then
    echo "ERROR:: you must run with root user "
    exit 1
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: mysql installation failed"
    exit 1
else
    echo " mysql installation is succesful "
fi
