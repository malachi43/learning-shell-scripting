#!/bin/bash
# this script is use to read from a file
while read line
do
echo $line
done < $HOME/bin/read_from_file/test.txt