#!/bin/bash

#this script is used to print out all the even numbers from 1 through 50
for (( v1=2; v1 <= 50; ++v1 ))
do
(( v1 % 2 == 0 )) && echo -n "$v1  " #the -n flag in the echo command prevents the command from printing a new line(\n).
continue #the skip the current loop iteration
done

exit 0