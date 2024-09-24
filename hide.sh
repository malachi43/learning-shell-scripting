#!/bin/bash
#this script uses the -s (silent option) to hide sensitive data.
read -p "Enter username: " username
read -sp "Enter password: " password

#this creates a new line.
echo
echo

# -e option provide the use of escape character(s).
echo -e "USERNAME: $username\nPASSWORD: $password"
exit 0