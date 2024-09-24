#!/bin/bash
# this script is use to read from a file
while read line
do
echo $line
done < $HOME/bin/test.txt