#!/bin/bash 

#our program goal is to install nginx

DATE=$(date)
SCRIPT_NAME=$0
LOGFILE=/tmp/SCRIPT_NAME-$DATE.log

USERID=$(id -u)
VALIDATE () {
    if [ $? -ne 0 ]
    then 
       echo "$2 ... FAILURE"
       exit 1
    else
       echo "$2 ... SUCCESS"
fi

}



if [ $USERID -ne 0 ]
then 
   echo "ERROR:: can you please run this script with root access"
   exit 1
# else
#    echo "INFO:: this is root user"
fi

#it is our responsibility to check installation of nginx is success or not 
yum install nginx &>>$LOGFILE

VALIDATE $? "installation of nginx"

yum install maven &>>$LOGFILE

VALIDATE $? "installation of maven"