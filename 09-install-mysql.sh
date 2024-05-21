#!/bin/bash

if [ id -ne 0 ]
then
echo "Not a root user."
else
echo " Root user"
fi