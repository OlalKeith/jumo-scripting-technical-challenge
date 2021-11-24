!/bin/bash
#create and assign currentUser variable to get current user. The -n option displa>
currentUser="$(id -u -n)"
#print current user
echo "Current User : $currentUser"

FILE=/tmp/task2.txt
machinename=$HOSTNAME #declare variable machinename  and assign it $HOSTNAME

#use the currentUser variable to establish if the current user is root or not
if [ $currentUser != 'root' ]; then
    echo "You must be root to do this."

#check to see if _user equals root. 
elif [ "$currentUser" == 'root' ]; then
echo "I am root". #this message will display if you switch to root user by using sudo su command. 


elif [ -f $FILE ]; then
  echo "File $FILE does not exist."
else
  touch $FILE #create file  
echo $machinename>$FILE  
fi #close the if statement

