#!/bin/#!/usr/bin/env bash

ID=$(id -u)

VALIDATE() {

  if [ $? -ne 0]

  then

     echo "ERROR:: installing is failed "

     exit 1

  else

    echo " installing is SUCCESS "

  fi

}

if [ $ID  -ne 0 ]

then

  echo "ERROR:: please run this script with root access "

  exit 1 #you can give other than 0

else

  echo " you are not root user"

fi

yum install mysql -y

VALIDATE $? "installing mysql"

yum install git -y

VALIDATE $? "installing GIT"
