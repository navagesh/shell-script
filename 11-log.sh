#!/bin/#!/usr/bin/env bash

ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"
LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script name: $0"

VALIDATE() {

  if [ $1 -ne 0 ]

  then

     echo -e "ERROR:: $2 ...$R FAILED $N "

     exit 1

  else

    echo -e " $2... $G SUCCESS $N "

  fi

}

if [ $ID  -ne 0 ]

then

echo -e " $R ERROR :: please run this script with root access $N"

exit 1
else
  echo "you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE

VALIDATE $? "installing GIT"
