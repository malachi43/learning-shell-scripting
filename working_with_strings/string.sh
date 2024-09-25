#!/bin/bash
# checks if string1 is equal to string2
[ $string1 == $string2 ]

# checks if string1 is not equal to string2
[ $string1 != $string2 ]

# alternatively, checks if string1 is not equal to string2
! [ string1 == string2 ]

# checks if string1 is less than string2
[ $string1 \< $string2 ]

# checks if string1 is greater than string2
[ $string1 \> $string2 ]

# checks if string is greater than zero
[ -n $string ]

# checks if string has zero length(zero bytes)
[ -z $string ]