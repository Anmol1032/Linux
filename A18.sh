#!/bin/bash

if [ -z "$1" ]
then
    echo "no name given"
else
    if [ -d "$PWD" ]
then
    mv "$PWD" "$PWD/../$1"
else
    echo "directory not found"
fi
fi