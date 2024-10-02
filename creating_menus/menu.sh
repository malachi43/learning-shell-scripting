#!/bin/bash

#the variables/parameter in the file is made availabe to this current script at runtime.
source ../working_with_colours/colour.sh

to_lower(){
    output=$( echo "$1" | tr [A-Z] [a-z] )
    echo $output
}

do_backup(){
 dir_name="$HOME/menu_archive"
 #create directory if it does not exit.
 [ -d "$dir_name" ] || mkdir "$dir_name"
 echo
 echo "ARCHIVING..."
 tar -czvf ${dir_name}/menu_arch.tar.gz --exclude .git ../
 echo
 echo -e "${GREEN}ARCHIVED FILE LOCATED IN: ${YELLOW}$dir_name${RESET} ${GREEN}DIRECTORY.${RESET}"
}

while true
do
clear
echo "Choose an item: a, b or c"
echo "a: Backup "
echo "b: Display Calendar "
echo "c: Exit "

read -sn1

val=$(to_lower $REPLY)

case "$val" in

a)
  do_backup
;;

b)
cal || echo "exit code: $?"
;;

c)
exit 0
;;

esac

read -sn1 -p "Press any key to continue: "

done