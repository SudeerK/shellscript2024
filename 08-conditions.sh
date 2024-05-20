#!/bin/bash

Number=$1

if (($Number>100))
then 
echo "Given Number:$Number is greater than 100"
else
echo "Given Number:$Number is less than 100"
fi