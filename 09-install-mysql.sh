#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:: Please run this script with root user."
else
echo " You are a Root user"
fi

yum install mysql-y