
#!/bin/bash

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 ) # $0 script name ,echo is used to prin the name
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log" # /var/log/shell-script/16-logs.log

mkdir -p $LOGS_FOLDER # -p is given because if that directory is there it will create or  else it will skip
                      # normal if we use normal mkdir if that directory exists it will show directory already exists
echo "Script started executed at: $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run this script with root privelege"
    exit 1 # failure is other than 0
fi
# suppose 
# ls -l > output.log ->saves the output to that file
# lsadasdf -l > output.log dispite the invalid command , "-bash: lsadasdf: command canot found" this will store in the output.log file
# 1 or 2 before >output.log mean ( ls -l 1 > output.log ,ls -l 2 > output.log ) 1-. sussess , 2 -> failure
# use & ( lsadasdf -l &> output.log) if u dont know fail or pass
#normally if u run multiple commands everytime outpul will be replaced use >> in place of > to append

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N" | tee -a $LOG_FILE
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}

dnf list installed mysql &>>$LOG_FILE
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE
    VALIDATE $? "MySQL"
else
    echo -e "MySQL already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi

dnf list installed nginx &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE
    VALIDATE $? "Nginx"
else
    echo -e "Nginx already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi

dnf list installed python3 &>>$LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE
    VALIDATE $? "python3"
else
    echo -e "Python3 already exist ... $Y SKIPPING $N" | tee -a $LOG_FILE
fi
