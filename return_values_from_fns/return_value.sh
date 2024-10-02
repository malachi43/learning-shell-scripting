#!/bin/bash -v

to_lower() {
    input="$1"
    #the tr command translates form uppercase to lowercase characters.
    output=$( echo $input | tr [A-Z] [a-z] )

    #convert to lowercase also
    #output=${input,,}
    
    #use "echo" to return text/strings from functions and use the "return" keyword to return numeric digits(0-255) from functions.
    echo "$output"
}


while true
do
read -n1 -p "Enter c to continue or q to exit: "
user_choice=$(to_lower $REPLY)

#prints a new line.
echo

 if [ "$user_choice" = "q" ]
   then
   break
 fi
done

echo "Finished"
exit 0
