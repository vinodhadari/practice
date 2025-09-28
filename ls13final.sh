#!/bin/bash/

USERID=$(id -u)
# dnf remove mysql mysql-server
if [ $USERID -ne 0 ]; then
    echo "ERROR ::change to root user"
    exit 1
fi
# we give $? as input argument to $1 and ,installation software as input arguement for $2
VALIDATE() {
        if [ $1 -ne 0 ]; then # functions receive inputs through args just like shell script args
            echo "error ::$2 installation failed "
            exit 1
        else 
            echo " Installing $2 is SUCCESS "
        fi
}
dnf install mysql -y
VALIDATE $? "mysql"
# VALIDATE $? "mysql"
#   or
#mysql=$2
#VALIDATE $? "mysql" ,after rumming the code it onle show is 100
#dnf list installed mysql
#echo $? for installation status 0 if installed 

dnf install nginx -y
VALIDATE $? "nginx"

dnf install python3 -y
VALIDATE $? "python3"
