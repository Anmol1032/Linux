#!/bin/bash

read -p 'Enter numbers: ' -a nums

if [ ${#nums[@]} == 2 ]
then
    echo '${nums[0]} + ${nums[1]}' | bc 

else
    echo "Error:
        Two numbers required, not ${#nums[@]}"

fi
