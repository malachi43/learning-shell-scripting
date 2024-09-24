#!/bin/bash
echo "you are using $(basename $0)"
# this check if the first positional parameter is empty using the -z (zero byte)flag.
#test -z $1 || echo "Hello, $1"
[ -z $1 ] || echo "Hello, $1" 