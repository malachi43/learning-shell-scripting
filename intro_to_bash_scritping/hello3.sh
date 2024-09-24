#!/bin/bash
name="Malachi"
usernames=(lisha mikey mally)
age=25
account_balance=#2,000,000.00
curr_dir=$(pwd)
file_list="$(ls $HOME/bin)"
echo "$name"
echo "$age"
echo "$account_balance"
echo
echo "current working directory: $curr_dir"
echo
echo -e "DIRECTORY LIST:\n$file_list"
# the unset command is used to remove an element from an array.
#unset usernames

# reading from an array.
echo "user: ${usernames[0]}"
echo "user: ${usernames[1]}"
echo "user: ${usernames[2]}"




# this prints all elements in the array.
#echo "${usernames[*]}"
exit 0