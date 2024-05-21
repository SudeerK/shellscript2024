#!/bin/bash

ID=$(id -u)

R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then 
echo -e "$R ERROR: $N Not a root user"
else
echo "root user"
fi