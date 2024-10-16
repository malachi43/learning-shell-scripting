#!/bin/bash

read -p "choose a file for which the contents of the file will be replaced with "_" for every occurence of b and a: " file_name

#prints a new line
echo 

#the pattern y/abc/ABC <file_name> will replace all occurence of abc with their uppercase equivalent.So the example below will replace all occurence of a and b with an underscore. Note, the transform from and transform to text must be of the same length.
sed "y/ba/__/" $file_name