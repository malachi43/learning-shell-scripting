#!/bin/bash

# the pseucode code of the "if" statement
# if condition; then
#  statement 1
#  statement 2
# fi

if [ $# -lt 1 ]; then
echo "Usage: $0 <name>"
exit 1
fi
echo "Welcome, $1"
exit 0