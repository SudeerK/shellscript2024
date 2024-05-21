#!/bin/bash

ID=$(id -u)

# echo "Script Name is : $0" #this will print the script name
TimeStamp=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TimeStamp.log"

#echo "$TimeStamp"
#echo "$LOGFILE"

VALIDATE()
{
    if [ $1 -ne 0 ]
    then 
        echo "Error::$2 Installation is failed"
        exit 1
    else
        echo "$2 Installation is success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "Error:: Please run this script with root user."
    exit 1 #Any value other than 0 can be given so that it terminates here
else
    echo " You are a Root user"
fi #reverse of if indicating end.

yum install mysql -y &>> $LOGFILE
VALIDATE $? "mysql" 

yum install git -y &>> $LOGFILE
VALIDATE $? "git"