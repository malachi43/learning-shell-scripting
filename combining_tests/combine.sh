#!/bin/bash
firstname="chibuike"
lastname="uko"

if [ "malachi" == "chibuike" ] || [ $lastname == "uko" ]
then
echo "lastname is: $lastname or firstname: is $firstname"
exit 0
else
echo "lastname is not: $lastname or firstname is not: $firstname"
exit 1
fi
