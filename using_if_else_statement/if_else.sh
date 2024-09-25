#!/bin/bash
# the if  block is run if the script is run with no argument.
if [ $# -lt 1 ]
then
read -p "Enter a name: "
name=$REPLY
else
name=$1
fi
echo "Welcome, $name"
exit 0
