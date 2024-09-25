#!/bin/bash

name="eve"

if [ $name == "adam" ]
then
echo "name is adam"
exit 0
elif [ $name == "eve" ]
then
echo "name is eve"
exit 0
else
echo "name is not eve or adam"
exit 1
fi
