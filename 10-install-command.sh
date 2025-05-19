#1/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR: please run the script with root access"
    exit 1 #other than 0 upto 127#
else
    echo "You are running with root access"
fi

dnf list installed mysql
#checks already installed or not if installed$? is 0,then expression is false and go to else condition
#if not installed already then $? is not 0, exp is 1 ne 0 becomes true and installs the mysql
#post that checks the proper installed or not in seconf if condition#
if [ $? -ne 0 ]
then
    echo "MYSQL is not installed ... going to install it"
    dnf install mysql -y

    if [ $? -eq 0 ]
    then
        echo "installing MYSQL is .... Success"
    else
        echo "Installing MYSQL is .... Failure"
        exit 1
    fi
else
    echo "MYSQL is installed already.... nothing to do"
    
fi



