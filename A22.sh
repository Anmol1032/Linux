#!/bin/bash

if [ -z $1 ]
then
    echo "no file name given"
    exit 1
elif [ ! -f $1 ]
then
    echo "no such file: '$1'"
    exit 1
fi

data=`cat $1`

echo "
1 - Lower to Upper
2 - Upper to Lower"

read -p "Choose an option: " opt

case $opt in
    1)
        tr [:lower:] [:upper:] <<< $data
        ;;
    2)
        tr [:upper:] [:lower:] <<< $data
        ;;
esac
