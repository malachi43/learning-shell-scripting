#!/bin/bash

#making the variables/parameters in the file available to this script at runtime.
source working_with_colours/colour.sh
ARG=1
USD=$
if [ -z "$1" ] 
then
echo -e "Error: invalid argument list (expect $ARG argument but got $#)\nUsage: ${RED}$(basename $0) <csv-file>${RESET}"
exit 1
fi

OLDIFS=$IFS
IFS=','

#prints a new line.
echo
while read product price quantity
do

#to format how the output is displayed.
echo -e "${BLUE}${product^^}${RESET}${YELLOW} =====================${RESET}\n\n${GREEN}\tPRICE:${RESET}\t\t${USD}${price}.00\n${GREEN}\tQUANTITY:${RESET}\t$quantity"

#prints a new line.
echo
done < "$1"
IFS=$OLDIFS

exit 0