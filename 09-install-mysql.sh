#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Error:: Please run this script with root user."
exit 1 #Any value other than 0 can be given so that it terminates here
else
echo " You are a Root user"
fi #reverse of if indicating end.

yum install mysql -y