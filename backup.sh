#!/bin/bash
#Author: Uko Chibuike Malachi
#Last Edited: 23/09/2024
#This script will be used to backup file(s) located in the HOME directory to a location within the HOME directory.
read -p "which file do you want to save: " file_extension
read -p "enter the directory you want to perform the search for the backup: " search_dir
read -p "which directory do you want to backup to: " dir_name

#check if the directory and create it if does not exist.
test -d $HOME/$dir_name || mkdir $HOME/$dir_name

#find in the HOME/bin directory and save a file with the .sh extension.
find $HOME/$search_dir -path $HOME/backup -prune -o -name "*$file_extension" -exec cp {} $HOME/$dir_name \;
echo "backup script executed successfully."
exit 0