#!/bin/bash


for i in $@; do
    printf 'Lenght of string %-33s -\t %5d\n' "($i)" "${#i}"
done


