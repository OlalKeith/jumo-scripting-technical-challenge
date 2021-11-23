#!/bin/bash

# obtain the machine name

machinename=$HOSTNAME #declare variable machinename and assign it $HOSTNAME
echo $machinename

length=${#machinename} #get the length of machine name
i=$((length-1)) #set i to the length of machine name
for (($i - 1; i >= 0; i--)) # $i - 1 for reversing a string 
do
    revstr=$revstr${machinename:$i:1} # extract a single character from string
done #end the loop
echo "$machinename reversed is $revstr"

#create task3.txt file in tmp directory and write the machine name 
#backwards into task3.

echo $revstr>/tmp/task3.txt
cat /tmp/task3.txt
