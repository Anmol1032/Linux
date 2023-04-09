#!/bin/bash

read -p "Enter number: " num


i=0

while [ $i -lt $num ]; do

    i=`expr $i + 1`

    o=0
    while [ $o -lt $i ]; do
        o=`expr $o + 1`
        echo -n "$o "
        
    done
    echo 




done