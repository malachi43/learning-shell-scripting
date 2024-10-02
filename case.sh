#!/bin/bash

#the case statement pattern

#case "$1" in

#case 1)
#statement1
#the ;; signifies the end of the statement.
#;;

#case 2)
#statement1
#statement2
#;;

#the *) serves as the else statement, if everything else is not matched, this should be provided last.
#*)
#statement1
#;;

#signifies the end of the case block. It is the case keyword spelt backwards (esac)
#esac


read -n1 -p "Enter a b or c: " letter

#prints a newline
echo

case ${letter^^} in
A)
echo "you entered letter A or a"
exit 0
;;
B)
echo "you entered letter B or b"
exit 0
;;
C)
echo "you entered letter C or c"
exit 0
;;
*)
echo "enter the required options"
exit 1
;;
esac
