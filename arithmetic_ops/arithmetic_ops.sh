#!/bin/bash

#the makes the variable/parameter in this file path available to this script at runtime.
source ../working_with_colours/colour.sh

# the signature: (( arithmetic operation )) should be used for arithmetic operation(s).
count=5
inc=$(( ++count ))
decr=$(( --count ))
echo
((inc > decr )) && echo -e "${BLUE}the value $inc is greater than $decr${RESET}"
echo -e "${GREEN}the inc value of count is: $inc${RESET}"
echo -e "${YELLOW}the decr value of count is: $decr${RESET}" 
