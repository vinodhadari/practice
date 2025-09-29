#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo -e "$R ERROR $N:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e "$R ERROR:: Installing $2 is failure $N"
        exit 1
    else
        echo -e "$Y Installing $2 is SUCCESS $N"
    fi
}
dnf list installed mysql
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MySQL"
else
    echo -e " mysql is already exist ....$Y SKIPING $N "
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo -e " nginx is already exist ....$Y SKIPING $N "
fi

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo -e " python is already exist ....$Y SKIPING $N "
fi
