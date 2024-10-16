#!/bin/bash

read -p "enter a filename(should be a shell script) for which you want to transform its text: " file_name

#prints a new line
echo

#multiple commands are separated with a semi-colon.
sed "s/bin/xbin/; s/bash/xbash/" $file_name
