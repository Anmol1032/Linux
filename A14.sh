#!/bin/bash

echo "
1- Ascending
2- Descending
"

read -p "Enter (1 or 2): " a

list=($@)





case $a in
    1)
        for ((i=0; i<${#@}; i++))
        do
            for ((o=0; o<${#@}; o++))
            do
                if [ ${list[$o]} -gt ${list[$(($o + 1))]:-$((2 << 61))} ]
                then
                    # echo "${list[$o]} -gt ${list[$(($o + 1))]:-$((2 << 61))}"
                    temp=${list[$o]}
                    list[$o]=${list[$(($o + 1))]}
                    list[$(($o + 1))]=$temp
                # else
                    # echo "                                       ---${list[$o]} -lt ${list[$(($o + 1))]:-$((2 << 61))}"

                fi
            done
        done

        echo ${list[@]}
        ;;
    2)
        for ((i=0; i<${#@}; i++))
        do
            for ((o=0; o<${#@}; o++))
            do
                if [ ${list[$o]} -lt ${list[$(($o + 1))]:-$((2 << 61))} ]
                then
                    # echo "${list[$o]} -lt ${list[$(($o + 1))]:-$((2 << 61))}"
                    temp=${list[$o]}
                    list[$o]=${list[$(($o + 1))]}
                    list[$(($o + 1))]=$temp
                # else
                    # echo "                                       ---${list[$o]} -gt ${list[$(($o + 1))]:-$((2 << 61))}"

                fi
            done
        done

        echo ${list[@]}
        ;;
    *)
        :
        ;;
esac