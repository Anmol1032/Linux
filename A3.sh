#!/bin/bash

read -p "Enter number: " num


i=0
p=0

while [ $i -lt $num ]; do

    i=`expr $i + 1`

    o=0
    while [ $o -lt $i ]; do
        p=`expr $p + 1`
        o=`expr $o + 1`
        echo -n "$p "
        
    done
    echo 




done