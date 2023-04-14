#!/bin/bash

min="root"
max=

while read -rd $'\000' e; do
	if [ ${#e} -gt ${#max} ]
	then

		max=$e
		
	fi

	if [ ${#e} -lt ${#min} ]
	then
		min=$e
		
	fi

	read
done < /etc/passwd

echo "
Longest  user name	: $max
Shortest user name	: $min
"
