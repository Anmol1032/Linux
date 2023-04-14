#!/bin/bash


# “Good morning” (5 AM – 12 PM)
# “Good noon” (12 PM – 1 PM)
# “Good afternoon” (2 PM – 5 PM)
# “Good evening” (5PM – 9 PM)
# “Good night” (9 PM – 5 AM)


hour=`date +"%H"`

case $hour in
    05|06|07|08|09|10|11)
        grt=morning
        ;;
    12|13)
        grt=noon
        ;; 
    14|15|16)
        grt=afternoon
        ;; 
    17|18|19|20|21)
        grt=evening
        ;;
    *)
        grt=night
        ;;
esac

echo "Good $grt $USERNAME, Have a nice day!
It's `date`"