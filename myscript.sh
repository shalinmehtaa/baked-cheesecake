#!/bin/bash

# ECHO COMMAND
echo Hello World!

# VARIABLES
# Uppercase by convention
# Can include letters, numbers and underscores
NAME="Shalin"
echo "My name is $NAME"

# USER INPUT
# -p = prompt the user
read -p "Enter your favourite number: " NUMBER
echo "Your favourite number is $NUMBER"

# IF-ELSE STATEMENTS
if [ "$NAME" == "Shalin" ]
then 
    echo "You are the owner of this Mac"
elif [ "$NAME" == "Sheetal" ]
then 
    echo "You are definitely the owner of this Mac"
else 
    echo "You are not the owner of this Mac"
fi 



