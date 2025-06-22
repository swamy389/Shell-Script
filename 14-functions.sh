#!/bin/bash 

#our program goal is to install mysql 


DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

VALIDATE () {

if [ $1 -ne 0 ]
then 
   echo "$2 ... FAILURE"
   exit 1
else 
   echo "$2 ... SUCCESS"
fi

}


USERID=$(id -u)


if [ $USERID -ne 0 ]
then 
   echo "ERROR:: run this script with root access"
   exit 1
# else 
#    echo "INFO:: this is root user"
fi

#it is our responsibility to check installation of mysql is success or not
yum install mysql &>>$LOGFILE

VALIDATE $? "installation of mysql"

yum install postfix &>>$LOGFILE

VALIDATE $? "installation of postfix"
