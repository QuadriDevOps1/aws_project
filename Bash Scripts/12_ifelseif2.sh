#!/bin/bash

echo -n "Enter a number: "
read var

if [[ $var -gt 10 ]]
then    
    echo "The variable is greater than 10"
elif [[ $var -eq 10 ]]
then 
    echo "The variable is equal to 10"
else
    echo "The variable is less than 10"
fi