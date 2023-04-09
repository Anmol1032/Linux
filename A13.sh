#!/bin/bash

i=0
o=0
while [ $i -lt $1 ]
do
    while [ $o -lt $1 ]
    do
        if [ $(($i % 2)) -eq $(($o % 2)) ]
        then
            echo -en "\e[40m  \e[0m"
        else
            echo -en "\e[47m  \e[0m"
        fi
        o=$(($o + 1))
    done
    echo
    o=0
    i=$(($i + 1))
done



echo -e "\e[0m"