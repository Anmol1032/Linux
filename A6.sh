#!/bin/bash

case $2 in
    [+-/])
        echo $(($1 $2 $3))
        ;;
    'x')
        echo  $(($1 * $3))
esac
