#!/bin/bash

# this script is used to provide default value, we a parameter is not set. e.g $1,$2

#alternative 1
name="$1"
[ -z $name ] && name="Anonymous"
echo "Welcome, $name"
exit 0

# alternative 2
firstname="${1-"Anonymous"}" #this is known as parameter substitution, that can be used to provide default value. ${<parmater>-<default>}
echo "Welcome, $firstname"
exit 0