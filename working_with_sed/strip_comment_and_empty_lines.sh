#!/bin/bash

#the variables/parameter declare in the file are made available to this current script at runtime.
source ../working_with_colours/colour.sh

#checks for a regular file.
is_file () {
    if [ ! -f "$1" ]
    then
    echo -e "${RED}The $1 seems not to be a file.${RESET}"
    exit 2
    fi
}

clean_file () {
    is_file "$1"

    BEFORE=$(wc -l "$1")

    echo -e "${GREEN}BEFORE PROCESSING:${RESET} ${YELLOW}$BEFORE${RESET} ${GREEN}line(s).${RESET}"

    #remove comments and empty lines.
    sed -i.bak '/^\s*#/d;/^$/d' "$1"

    echo "processing $1..."

    AFTER=$(wc -l "$1")
    echo -e "${GREEN}AFTER PROCESSING:${RESET} ${YELLOW}$AFTER${RESET} ${GREEN}line(s).${RESET}"

    exit 0
}

read -p "Enter a file to clean: " file_to_clean

clean_file "$file_to_clean"

exit 1