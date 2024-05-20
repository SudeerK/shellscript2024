#!/bin/bash

Number=$1

<<comment
if (($Number>100))
then 
echo "Given Number:$Number is greater than 100"
else
echo "Given Number:$Number is less than 100"
fi
comment

if [ $Number>50 ]
then 
echo "Given Number:$Number is greater than 50"
else
echo "Given Number:$Number is less than 50"
fi