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
        echo "You can have a beer :)" ;;
    [nN] | [nN][oO])
        echo "Sorry, no beer for you" ;;
    *)
        echo "Please enter y/yes or n/no" ;;
esac

# FOR LOOPS
NAMES="Shalin Shimoli"
for NAME in $NAMES 
    do 
        echo "Hello $NAME"
done

START=1
END=5
echo "Countdown..."
for (( i=$START; i<=$END; i++ ))
    do 
        echo -n "$i "
        sleep 1
done
echo
echo "Boom!"

# FOR LOOP TO RENAME FILES
# Using variable substitution
# FILES=$(ls ?.txt)
# NEW="new"
# for FILE in $FILES
#     do 
#         echo "Renaming $FILE to new-$FILE"
#         mv $FILE $NEW-$FILE
# done

# WHILE LOOP - READ FILE LINE BY LINE
LINE=1
while read -r CURRENT_LINE
    do
        echo "$LINE: $CURRENT_LINE"
        (( LINE++ ))
done < "./new-1.txt"

N=1
while [ $N -le 10 ]
     do
        echo "$N"
        (( N++ ))
done

# FUNCTION
function greet() {
    echo "Hello! I am $1 and I am $2"
}

greet "Shalin" "21"

# PARAMETER ALIASES
# $$ = process id on your computer
# $0 = script name
# $1-$9 = first nine parameters for a command/program
# $? = error message from previous command
# $_ = last parameter from previous command
# $# = number of parameters the program expects/can take
# $@ = list of the parameters

# echo $? for no error = 0 and for error = 1
# || = or operator and && = and operator

# VARIABLE SUBSTITUTION
# foo=$(pwd)
# echo "You are in $(pwd)"

# PROCESS SUBSTITUTION
# Redirects the output of a command to a file
# cat <(ls) <(ls ..)

# GLOBBING/REG-EX
# *.sh = any files that have a .sh extension
# ? = any single character
# touch foo{,1,2,3} = touch foo foo1 foo2 foo3
# touch foo{0..3} = touch foo0 foo1 foo2 foo3 (can also do {a..f})
# diff <(ls foo) <(ls bar) = difference in files between foo and bar directories

# SHEBANGS
# For shell: #!/usr/bin/bash
# For python: #!/usr/bin/env python - can then run python scripts from bash just by typing ./script.py

# download shellcheck tool for easier debugging
# tldr tool for better manual pages for commands with examples

# ARRAYS
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}

# STDOUT AND STDERR
# ls -al > file.txt (will only output the STDOUT into file.txt)
# ls -al > file.txt 2>&1 === ls -al >& file.txt (will direct both STDOUT and STDERR into file.txt)
# ls -al 1> file1.txt 2> file2.txt (similar to previous command but different syntax)