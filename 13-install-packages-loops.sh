#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $ID -ne 0 ]
then 
echo -e "$R ERROR: $N Not a root user, Please run with root access"
else
echo "You are a root user"
fi

# echo "all arguments: $@" #if we pass args while executing then it will be printed here.
