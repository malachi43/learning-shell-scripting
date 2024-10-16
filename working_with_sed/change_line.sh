#!/bin/bash

read -p "enter a file you wish you change the text: " file_name

#prints a new line
echo 

sed = $file_name

#prints a new line
echo

read -p "enter the line number you wish to change the text: " line_number

read -p "enter the text you want to replace with: " new_text

#prints a new line
echo

sed "${line_number}c\\${new_text}" $file_name

exit 