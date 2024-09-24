#!/bin/bash
read -p "which server should be ping? " server_addr
echo "pinging... $server_addr"
ping -c3 $server_addr > /dev/null 2>&1 || echo "Server Dead"