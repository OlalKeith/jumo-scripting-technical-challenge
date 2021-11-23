!/bin/bash
#create and assign _user variable to get current user. The -n option displays the name
_user="$(id -u -n)"
#print current user
echo "Current User : $_user"

#use the _user variable to establish if the current user is root or not
if [ $_user != 'root' ]; then
    echo "You must be root to do this."

#check to see if _user equals root. 
elif [ $_user == 'root' ]; then
echo "I am root"
fi #close the if statement
