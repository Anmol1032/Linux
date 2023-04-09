#!/bin/bash


if [ ${#@} -lt 1 ]
then
    echo -e "\e[91mError: No argument passed"
    exit 1
fi


max_num=$1

for i in $@
do
    if [ $max_num -lt $i ]
    then
        max_num=$i
    fi
done

echo "The largest value is $max_num"
    
