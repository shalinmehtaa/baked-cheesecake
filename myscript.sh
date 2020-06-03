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

# COMPARISON OPERATORS
# -gt = greater than
# -lt = less than
# -eq = equal to
# -ne = not equal to
# -ge = greater than or equal to 
# -le = less than or equal to

# FILE CONDITIONS
# -d file = True if the file is a directory
# -f file = True if the provided string is a file
# -g file = True if the group id is set on the file
# -s file = True if the file has a non-zero size
# -u file = True if the user id is set on a file
# -r file = True if the file is readable
# -w file = True if the file is writable
# -x file = True if the file is executable

FILE="test.txt"
if [ -f "$FILE" ]
then 
    echo "$FILE is a file"
else
    echo "$FILE is not a file"
fi

# CASE STATEMENT
read -p "Are you 21 or over? Y/N " ANSWER
case "$ANSWER" in 
    [yY] | [yY][eE][sS])
        echo "You can have a beer :)"
        ;;
    [nN] | [nN][oO])
        echo "Sorry, no beer for you"
        ;;
    *)
        echo "Please enter y/yes or n/no"
        ;;
esac

# FOR LOOPS
NAMES="Shalin Shimoli"
for NAME in $NAMES 
    do 
        echo "Hello $NAME"
done

# FOR LOOP TO RENAME FILES
FILES=$(ls ?.txt)
NEW="new"
for FILE in $FILES
    do 
        echo "Renaming $FILE to new-$FILE"
        mv $FILE $NEW-$FILE
done

# WHILE LOOP - READ FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        ((LINE++))
done < "./new-1.txt"

# FUNCTION
function greet() {
    echo "Hello! I am $1 and I am $2"
}

greet "Shalin" "21"
