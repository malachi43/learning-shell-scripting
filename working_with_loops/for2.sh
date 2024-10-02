#!/bin/bash

#the variables/parameters in the file is made available to this current script at runtime.
source ../working_with_colours/colour.sh

# the IFS-Internal Field Separator, is used to delimit fields. e.g ("\n", "\t", " ", "\r\n")

#we used single quotes $'\n' to preserve the new line character.
#IFS=$'\n'
#echo "the value of IFS: $IFS"
#for data in $(cat ../README.md)
#do
#echo -e "${GREEN}$data${RESET}"
#done
#exit 0

#to print a new line to the console.
echo

#we used the read command to read a line at a time from the file.
while read line
do
echo -e "${YELLOW}$line${RESET}"
#the file we are reading from.
done < ../README.md
exit 0