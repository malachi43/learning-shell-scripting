#!/bin/bash
# this test if the argument passed to the script is greater than zero.
[ $# -gt 0]

# this test if file.txt is a regular file.
[ -f file.txt]

# this test if the directory has a symbolic link.
[ -h /usr/src/linux ]

# this test if the $1 is non-empty
[ -n $1 ]

# this test if the $1 is empty
[ -z $1 ]

# this check if a file is executable
[ -x read.sh ]

# this test if a file exists in any form.
[ -e <any_file> ]

# this tests if the file is readable
[ -r <any_file> ]

# this check if file1 is newer than file2
[  file1 -nt file2 ]

# this checks if file1 is older than file2
[ file -ot file2 ]