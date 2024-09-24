#!/bin/bash

while [ -n "$1" ]
do
case "$1" in

-a) echo "-a option was passed"
    ;;

-b) echo "-b option, param: $2"
    ;;

-c) echo "-c option was passed"
    ;;

--) shift
    break
    ;;

#the default if none match
-*) echo "option $1 is not an option"
    ;;

esac

shift
done

#iteration for options is finished.
#iteration for parameter is started.
echo
num=1
for param in "$@"
do
echo "#:$num $param"
num=$(($num + 1))
done