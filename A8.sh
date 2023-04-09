#!/bin/bash



case $1 in
    [0-9])
        echo "Error: pass a multi-digit number"
        exit 1
        ;;
    '')
        echo "Error: No argument given"
        exit 1
        ;;

esac



rev_num=0

i=0
o=${#1}





while [ $i -lt $o ]; do
    i=$(( $i + 1 ))

    e=`cut -b $(($o - $i + 1)) <<< $1`
    rev_num=$(($rev_num + 10 ** $(($o - $i)) * $e ))

done


echo "$rev_num"
