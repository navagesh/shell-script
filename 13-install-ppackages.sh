#!/bin/#!/usr/bin/env bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"
ID=$(id -u)
TIMESTAMP=$(date+ %F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
  echo "script started executing at $TIMESTAMP"    &>> $LOGFILE

  VALIDATE(){

    if [$1 -ne 0]
    then
       echo -e " ERROR::$2.....$R FAILED $N"
       exit 1
    else
       echo "$2....$G SUCCESS $N"
    fi
  }

if [ $ID -ne 0 ]
then
   echo -e "$R ERROR:: please run this script with root access $N"

   exit 1
else
  echo "you are root user "

fi
echo "All arguments passed: $@"

for package in $@
do
  yum list installed $packages &>> $LOGFILE

  if[ $? -ne 0 ]

  then

    yum install $package -y &>> $LOGFILE

    VALIDATE $? "installation of $package "

  else

    echo -e "$package is already installed ...$Y SKIPPING $N"

  fi
