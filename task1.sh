#!/bin/bash

#script to determine the OS version
#filter the OS version
grep '^VERSION' /etc/*release

#create task1.txt file in tmp directory and write the os version into task1.txt file
cat  /etc/*release > /tmp/task1.txt
grep 'VERSION' /tmp/task1.txt
