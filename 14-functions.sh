#!/bin/bash 

#our program goal is to install mysql 

USERID=$(id -u)
VALIDATE () {

if [ $1 -ne 0 ]
then 
   echo "installation ... FAILURE"
   exit 1
else 
   echo "installation ... SUCCESS"
fi

}

if [ $USERID -ne 0 ]
then 
   echo "ERROR:: run this script with root access"
   exit 1
# else 
#    echo "INFO:: this is root user"
fi

#it is our responsibility to check installation of mysql is success or not
yum install mysql -y

VALIDATE $?

yum install postfix -y 

VALIDATE $?
