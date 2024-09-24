#!/bin/bash
# echo "You are using `basename $0`"
name="Uko Chibuike Malachi"
#echo "Today's date $(date)"
echo "You are using $(basename $0)"
#echo "from first script name: $name"
echo "Hello $name"
export name
$HOME/bin/hello3.sh
echo "name is printed after the second script ran: $name"
exit 0
