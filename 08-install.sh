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
exit 1

if [ $? -ne 0 ]
then
    echo "Installation of mysql is error"
    exit 1
else
    echo -e " $? Installation of mysql is $Gsuccess"
fi


