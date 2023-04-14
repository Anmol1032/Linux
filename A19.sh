#!/bin/bash

if [ -z "$1" ]
then
    echo "no name given"
else
    for i in `ls`
    do
        if [ -f $i ]; then
            mv "$PWD/$i" "$PWD/$1$i"
        fi
    done
fi