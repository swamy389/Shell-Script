#!/bin/bash 

#our program goal is to install nginx

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "ERROR:: can you please run this script with root access"
   exit 1
# else
#    echo "INFO:: this is root user"
fi

yum install nginx -y