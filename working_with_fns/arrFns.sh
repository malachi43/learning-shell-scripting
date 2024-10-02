#!/bin/bash

#variables declared inside a function are global by default to make it a visible only with the scope of the function we use the keyword "local" e.g local my_var=13.

my_func1() {
 #reading array passed to the function.
 myarr=$@
 echo "array from inside the function, my_func is: ${myarr[*]}"
}

test_arr=(1 2 3 4 5) #array elelments are separated with spaces.
echo "the original array is: ${test_arr[*]}"

#passing array to function
my_func1 "${test_arr[*]}"

my_var=100
my_func2() {
    my_var=13
}

#the value of my_var has been updated to 13 by the my_func2 function.
my_func2
echo "my_var=$my_var"

my_id=3579
my_func3() {
 #using the local keyword makes the my_id variable/parameter only accessible inside the my_func3 function.
 local my_id=4810
}


my_func3
echo "my_id=$my_id"