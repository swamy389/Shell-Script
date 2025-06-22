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

#it is our responsibility to check installation of nginx is success or not 
yum install nginx -y

if [ $? -ne 0 ]
then 
   echo "print install of nginx is error"
   exit 1
else
   echo "installation of nginx is success"
fi