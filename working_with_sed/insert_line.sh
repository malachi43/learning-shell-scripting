#!/bin/bash

#prints a new line
echo

read -p "choose the file you want to insert a line into: " file_name

# display file with line number.
sed = $file_name

echo

read -p "choose the line number you want to insert the text(the text will be inserted above the line number): " line_number

read -p "enter the text you want to insert: " text

sed "${line_number}i\\${text}" $file_name

#prints a new line
echo

exit 0