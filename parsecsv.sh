#!/bin/bash

#making the variables/parameters in the file available to this script at runtime.
source working_with_colours/colour.sh
OLDIFS=$IFS
IFS=','

#prints a new line.
echo
while read product price quantity
do

#to format how the output is displayed.
echo -e "${BLUE}${product^^}${RESET}${YELLOW} =====================${RESET}\n\n${GREEN}\tPRICE:${RESET}\t\t$price\n${GREEN}\tQUANTITY:${RESET}\t$quantity"

#prints a new line.
echo
done < "$1"
IFS=$OLDIFS

exit 0