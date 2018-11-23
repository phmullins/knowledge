#!/bin/bash
#
# Name: ~/bin/cleanup.sh
# Description: Deletes .DS_Store and *$RECYCE.BIN files on MacOS
# Created: 2018-01-14 @ 07:43 AM | Modified 2018-11-23 @ 09:14 AM.
# Author: patrick@arkmail.us 

# Change to the home folder.
cd ~/ ||
# Find and delete all .DS_Store files.
find . -type f -name "*.DS_Store" -ls -delete
# Find and delete all $RECYCE.BIN files.
find . -type d -name "*$RECYCE.BIN" -ls -delete
