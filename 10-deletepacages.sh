#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LIST_OF_APPS="mysql postfix git eclipse"

if [ $USERID -ne 0 ]
then 
    echo -e "$R ERROR $N:: Please run this script with root access"
    exit 1
#else
     #echo "INFO:: You are root user"
     #remember this if ur not using else part then else also comment ok.....
fi

#this function concept syntax is VALIDATE(){
#WRITE YOUR LOGIC HERE.
#}

VALIDATE(){
    #$1--> it will rceive the arugment1

    if [ $LIST_OF_APPS -ne 0 ]
    then
        echo "Remove..... $R FAILURE $N"
        exit 1
    else
        echo "Remove .....$G SUCCESS $N"
    fi
}


#yum install mysql -y

#VALIDATE $? "$Y mysql Installing"

#yum install postfix -y

#VALIDATE $? "$Y postfix Installing"

yum remove $LIST_OF_APPS -y

VALIDATE $? " Removing $LIST_OF_APPS"