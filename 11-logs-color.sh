#!/bin/bash

ID=$(id -u)

# echo "Script Name is : $0" #this will print the script name
TimeStamp=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TimeStamp.log"

R="\e[31m" # denotes red color
G="\e[32m" # denotes Green color
N="\e[0m" # denotes No color
#echo "$TimeStamp"
#echo "$LOGFILE"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo "Error::$2 Installation is $R failed $N"
        exit 1
    else
        echo "$2 Installation is $G success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo "$R Error:: $N Please run this script with root user."
    exit 1 #Any value other than 0 can be given so that it terminates here
else
    echo " You are a Root user"
fi #reverse of if indicating end.

yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql" 

yum install git -y &>> $LOGFILE
VALIDATE $? "git"