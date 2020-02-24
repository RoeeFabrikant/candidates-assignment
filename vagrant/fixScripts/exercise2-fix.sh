#!/bin/bash
#add fix to exercise2 here

# The DNS resolve for address: www.ascii-art.de was the localhost (127.0.0.1).

# Delete the Wrong DNS record from /etc/hosts file.

sudo sed -i 's/127.0.0.1 www.ascii-art.de//g' /etc/hosts

# Run the command

curl http://www.ascii-art.de/ascii/ab/007.txt

