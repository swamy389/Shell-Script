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

#it is our responsibility to check installation of mysql is success or not
yum install mysql -y

if [ $? -ne 0 ]
then 
   echo "installation of mysql is error"
   exit 1
else 
   echo "installation of mysql is success"
fi

yum install python 3.12.0 -y 

if [ $? -ne 0 ]
then 
   echo "installation of python is error"
   exit 1
else 
   echo "installation of python is success"
fi
