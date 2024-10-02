#!/bin/bash

# the makes the variables/parameters in the file available to the current script at runtime
source ../working_with_colours/colour.sh

# declaring parameters

count=0
#the number of files to process.
files_to_process=3
file_count=0
dir_count=0
dir="directory"
file="file"

#print a new line
echo

for f in ../*
do
# break out of the loop if count is equal to the files_to_process
if [ $count == $files_to_process ]
then
break
fi

#increment to get the number of files currently processed.
(( ++count ))

# check if it is a regular file.
if [ -f "$f" ]
then
echo -ne "FILE-TYPE( FILE ):\n"
stat "$f"
echo
#echo -e "${YELLOW}$f${RESET} - is a file."

((++file_count))

#pluralize if file is greater than one.
(( file_count > 1 )) && file="files"
else
echo -ne "FILE-TYPE( DIRECTORY ):\n"
stat "$f"
echo
#echo -e "${YELLOW}$f${RESET} - this is a directory."

((++dir_count))

#pluralize if directory is greater than one.
(( dir_count > 1 )) && dir="directories"

fi
echo
done
echo
echo -e "${GREEN}We have a total of${RESET} $dir_count ${GREEN}$dir and a total of${RESET} $file_count ${GREEN}regular $file.${RESET}"
exit 0

count=0
for user in bash scripting in linux
do
echo "username: $user"
echo "password: ${user}_password$((++count))"
echo
done
exit 0