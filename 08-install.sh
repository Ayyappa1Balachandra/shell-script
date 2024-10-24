#!/bin/bash

#our goal is to install mysql or any applications

USERID=$(id -u)
G="\e[32m"
N="e\[0m"

if [ $USERID -ne 0 ]
then 
    echo "ERROR:: Please run this script with root access"
    exit 1
#else
     #echo "INFO:: You are root user"
     #remember this if ur not using else part then else also comment ok.....
fi

yum install mysql -y

if [ $1? -ne 0 ]
then
    echo "Installation of mysql is error"
    exit 1
else
    echo -e " $2? Installation of mysql is $G success"
fi


