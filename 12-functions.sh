#!/bin/bash 

#our program goal is to install nginx

USERID=$(id -u)
VALIDATE () {
    if [ $1 -ne 0 ]
    then 
       echo "Installation .... FAILURE"
       exit 1
    else
       echo "Installation .... SUCCESS"
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
yum install nginx -y

VALIDATE $?

yum install maven -y 

VALIDATE $?
