#!/bin/bash

#the makes the variable/parameter in this file path available to this script at runtime.
source "working_with_colours/colour.sh"

#The script provides the user with three options H, M, L  to select the compression technique to use to archive a directory.

read -p "Select either of the options H, M, L to determine the compression technique to use: " file_compression

read -p "Enter the directory where the backup will be saved to: " dir_name
#create directory if it does not exit
test -d $HOME/$dir_name || mkdir $HOME/$dir_name


# the flags:
# -c - create a file, 
# -v(verbose) - shows the file being processed.
# -f - the name to give the archive file.
# -j - compress the file using bzip2 technique.
# -z - compress the file using gzip technique.


# archive the file without compressing.
tar_l="-cvf $HOME/$dir_name/archive.tar --exclude $HOME/$dir_name $HOME/bin"

# archive and compress the file using bzip2 technique. -j(bzip2)
tar_h="-cvjf $HOME/$dir_name/archive.tar.bzip2 --exclude $HOME/$dir_name $HOME/bin"

# archive and compress the file using gzip technique. -z(gzip)
tar_m="-czvf $HOME/$dir_name/archive.tar.gz --exclude $HOME/$dir_name $HOME/bin"

err_msg="enter a valid compression option."

case ${file_compression^^} in # the ^^ in the parameter expansion operator helps to capitalize the options the user chose.
H)
tar_opts=$tar_h
;;
L)
tar_opts=$tar_l
;;
M)
tar_opts=$tar_m
;;
*)
echo
echo -e "$RED$err_msg$RESET"
exit 1
;;
esac

# create an archive file base on the option the user chose.
tar $tar_opts
echo
echo -e "check: ${GREEN}$HOME/$dir_name${RESET} folder for the archived file."
exit 0