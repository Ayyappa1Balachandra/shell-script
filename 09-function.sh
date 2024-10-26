#!/bin/bash

#this function should validate the previous command and inform user it is success or failure.

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

#this function concept syntax is VALIDATE(){
#WRITE YOUR LOGIC HERE.
#}

VALIDATE(){
    #$1--> it will rceive the arugment1

    if [ $1 -ne 0 ]
    then
        echo -e "$2 Installation .....$R FAILURE $N"
        exit 1
    else
        echo -e "$2 Installation .....$G SUCCESS $N"
    fi
}

if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR $N:: Please run this script with root access"
    exit 1
#else
     #echo "INFO:: You are root user"
     #remember this if ur not using else part then else also comment ok.....
fi



yum install mysql -y

VALIDATE $? "$Y mysql Installing"

yum install postfix -y

VALIDATE $? "$Y postfix Installing"
