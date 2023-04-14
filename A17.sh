#!/bin/bash

if [ -z $1 ]
then
    read -p "Enter any String in Lower Case : " str1
    STR1=`tr [:lower:] [:upper:] <<< $str1`
    echo "Result: $STR1"

    read -p "Enter any String in Upper Case : " STR2
    str2=`tr [:upper:] [:lower:] <<< $STR2`
    echo "Result: $str2"

    exit
fi


file=$1
File=`tr "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM" "QWERTYUIOPASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm" <<< $file`



if [ -f "$PWD/$file" ]
then
    mv "$PWD/$file" "$PWD/$File"
else
    echo "file not found"
fi
