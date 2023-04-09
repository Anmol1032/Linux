#!/bin/bash

nums=(0 1)

i=1


while [ ${nums[-1]} -le $1 ]
do

    i=$(($i + 1))

    prv1=${nums[-1]}
    prv2=${nums[-2]}


    nums[$i]=$(($prv1 + $prv2))
done

nums[-1]=''


for i in ${nums[@]}
do
    echo -n "$i, " 
done

echo -e "\b\b "