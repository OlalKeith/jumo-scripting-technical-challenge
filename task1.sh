#!/bin/bash

#declare a variable osversion and assign to $(grep -w "VERSION" /etc/*release),
#filter the OS version using grep.
#use -w option to match whole words
osversion=$(grep -w "VERSION" /etc/*release)
echo $osversion

#create task1.txt file in tmp directory and write the os version into task1.txt f>

echo $osversion>/tmp/task1.txt
cat /tmp/task1.txt

