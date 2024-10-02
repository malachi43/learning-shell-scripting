#!/bin/bash -v

#this script shows how to use the while loop to print a countdown from 20 through 0

count=20
echo "printing countdown..."
while (( $count >= 0))
do
echo -n "$count -> "
(( --count )) # with this decrement, the loop will evaluate to a false eventually.
done


exit 0