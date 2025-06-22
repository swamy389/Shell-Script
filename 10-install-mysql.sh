#!/bin/bash 

#our program goal is to install mysql 

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
   echo "ERROR:: run this script with root access"
   exit 1
# else 
#    echo "INFO:: this is root user"
fi

yum install mysql -y