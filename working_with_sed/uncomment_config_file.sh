#!/bin/bash

#search in the file for the pattern that starts with the pattern before the comma(,) and ends with the pattern after the comma(,)
/^#<VirtualHost/,/^#<\/VirtualHost/ {
# replace # with empty string, this will uncomment the file.
s/#//
# write the uncommented file to "template.text".
w template.text
}