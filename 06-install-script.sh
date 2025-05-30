#!bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then    
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1
fi 

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installing MySql... FAILURE"
    exit 1
else
    echo "Installing MySql... SUCCESS"
fi

dnf install git -y 

if [ $? -ne 0 ]
then
    echo "Installing Git... FAILURE"
    exit 1
else
    echo "Installing Git... SUCCESS"
fi