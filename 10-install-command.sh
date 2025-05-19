#1/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "ERROR: please run the script with root access"
    exit 1 #other than 0 upto 127#
else
    echo "You are running with root access"
fi

dnf install mysql -y