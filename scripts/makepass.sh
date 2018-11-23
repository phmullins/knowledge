#!/bin/bash
#
# Script Name: ~/bin/makepass.sh
# Description: Super easy way of generating a random 24 character password.
# Created: 2017-12-21 @ 10:28 AM | Modified 2018-11-23 @ 09:24 AM.
# Author: patrick@arkmail.us 
#
# Generates a random 24 character password. Change the number increase or decrease
# the length of the password.
#
echo `env LC_CTYPE=C tr -dc "a-zA-Z0-9-_\$\?" < /dev/urandom | head -c 24`