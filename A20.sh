#!/bin/bash

if [ -z $1 ]
then
    echo "No argumet given"
    exit 1
fi

file="$PWD/$1"

if [ -f "$file" ]
then
    e=`cat "$file" | wc -l`

    tail -n $(($e - $2 + 1)) file.txt | head -n $3
else
    echo "file not found: $file"
fi