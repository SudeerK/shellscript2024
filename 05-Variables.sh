#!/bin/bash

# If we write the code like this then we can see the username and password entered while executing in terminal.
#echo "Enter the username: "
#read Username
#echo "Enter Password: "
#read Password
#echo " Username is: $Username, Password is : $Password"

echo "Enter the username: "
read -s Username #Value entered will be attached to Username. Same ffor pwd.
echo "Enter Password: "
read -s Password
echo " Username is: $Username, Password is : $Password" #Just for confirmation. Donot print.