#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "Not a root user."
else
echo " Root user"
fi