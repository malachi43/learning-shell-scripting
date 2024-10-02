#!/bin/bash

#print a new line.
echo

for ((v1=1; v1 <= 3; ++v1))
do
#the output of the echo command is appended to the file.
echo "  First loop $v1:" >> ./out.txt

 for((v2=1; v2 <= 3; ++v2))
 do
 #the output of the echo command is appended to the file.
 echo "     Second loop $v2" >> ./out.txt
 done

done
exit 0