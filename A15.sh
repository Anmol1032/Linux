#!/bin/bash

echo "
 1. Currently logged users
 2. Your shell directory
 3. Home directory
 4. OS name & version
 5. Current working directory
 6. Number of users logged in
 7. Show all available shells in your system
 8. Hard disk information
 9. CPU information
10. Memory information
11. File system information
12. Currently running process
"

read -p "Choose your option: " option

case $option in
    1)
        who
        ;;
    2)
        echo $SHELL
        ;;
    3)
        echo $HOME
        ;;
    4)
        uname -o
        uname -v
        ;;
    5)
        pwd
        ;;
    6)
        users | wc -l
        ;;
    7)
        echo "not created"
        ;;
    8)
        echo "not created"
        ;;
    9)
        echo "not created"
        ;;
    10)
        echo "not created"
        ;;
    11)
        df
        ;;
    12)
        ps
        ;;
    *)
        echo "Unknon option"
        ;;

esac

echo -e "\n"

read -p "Continue (y/n): " -n 1 cont
if  [ $cont == "y" ]
then
    ./A15.sh
fi

