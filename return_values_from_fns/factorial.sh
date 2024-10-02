#!/bin/bash 

calc_factorial(){
    if [ $1 -eq 1 ]
    then
    echo 1
    else
     #we use the $ sign, so we can retrieve the value of the operation.
     local var=$(( $1 - 1 ))
     local res=$(calc_factorial $var)

     #we can use stdout(echo) to return values from functions, we access the value to be returned with the $ sign.
     echo $(( $res * $1 ))
    fi
}

#this accepts only a single digit number  by using the flag -n1(no of character to accept is 1)
read -n1 -p "Enter a single digit number to calculate its factorial: " num
echo
result=$( calc_factorial $num )
echo "The fibonnacci of $num is: $result"

exit 0