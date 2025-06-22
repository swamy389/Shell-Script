#!/bin/bash


DATE=$(date +%F)
LOGSDIR=/tmp
#/home/centos/shellscript-logs/script-name-date.log
SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log
USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

if [ $USERID -ne 0 ];
then 
   echo "$R ERROR:: Please run this script with root access $N"
   exit 1
# else
#     echo "INFO:: this is root user"
fi

VALIDATE(){
    if [ $1 -ne 0 ];
    then 
       echo -e "$2...$R FAILURE $N"
       exit 1
    else
       echo -e "$2...$G SUCCESS $N"
    fi
}

cp mongo.repo /etc/yum.repos.d/mongo.repo &>>$LOGFILE

VALIDATE $? "Copied MongoDb repo into yum.repos.d"

VALIDATE $? "Installation of MongoDB"

systemctl enable mongod &>>$LOGFILE

VALIDATE $? "enable mongodb"

systemctl start mongodb &>>$LOGFILE

VALIDATE $? "Start MongoDB"

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf &>>$LOGFILE

VALIDATE $? "Enable Mongod Conf"

systemctl restart mongod &>>$LOGFILE

VALIDATE $? "Restarting MongoDB"