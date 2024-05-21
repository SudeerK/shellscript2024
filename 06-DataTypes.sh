#!/bin/bash

NUM1=$1
NUM2=$2

SUM=$(($NUM1+$NUM2))

echo "Total is : $SUM"

echo "Total args passed :: $#"

echo "Args Passed are :: $@"

echo "Script Name :: $0"