#!/bin/bash

read -p "Enter a configuration file to insert a <Directory> tag into: "

#search for this pattern (/^#<\/VirtualHost>/) in the file.
sed -i.bak "/^#<\/VirtualHost>/i <Directory>\n allow from: 127.0.0.1\n allow from: <enter a host-ip>\n<\/Directory>" "$REPLY"