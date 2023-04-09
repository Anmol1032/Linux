#!/bin/bash



opration="${1: -1}"

case $opration in
    '*')
        opration_str="Mul is: "
        ;;
    '/')
        opration_str="Div is: "
        ;;
    '+')
        opration_str="Sum is: "
        ;;
    '-')
        opration_str="Sub is: "
        ;;
    *)
        echo "Error"
        exit 0
        ;;
esac

num="${1:0:-1}"

# 


result="${num:0:1}"

num=${num: 1}

if ./A8.sh $num; then
    num=`./A8.sh $num`
else
    num=$num
fi



echo "$num"

while [ $num -gt 0 ]
do
    

    sum_num=$(($num % 10))
    result=$(($result $opration $sum_num))
    num=$(($num / 10))



    
done



echo $result

