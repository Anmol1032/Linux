#!/bin/bash


echo "
1 - ssh
2 - scp
"

read num

case $num in
    1)
        echo '-------------------ssh'-------------------
        read -p 'Enter remote system IP address: ' ip
        read -p 'Enter user name: ' user

        ssh "$user@$ip"

        ;;
    2)
        echo ''-------------------scp'-------------------'

        read -p 'Enter remote system IP address: ' ip
        read -p 'Enter user name: ' user
        read -p 'Enter source file location: ' source_file
        read -p 'Enter destination file location: ' dest_file

        scp $source_file "$user@$ip:$dest_file" 


        ;;
    *)
        echo 'error:
        Type: "1" or "2"
        Try again'
        ;;
esac