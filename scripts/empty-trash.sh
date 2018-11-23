#!/bin/bash
#
# Script Name: ~/bin/empty-trash.sh
# Description: Securely empty trash on MacOS.
# Created: 2017-11-18 @ 06:08 PM | Modified 2018-11-23 @ 04:01 AM.
# Author: patrick@arkmail.us 
#
# Note: Requires the installation of srm via source (http://srm.sourceforge.net/).

echo "Are you sure you want to empty the trash? [Y/n]"
read confirm

if test confirm = "n"; then
	echo "Aborted empyting trash..."
else
  # Deletes everything in the Trash.
  if test $1 = "-s"; then 
    # Securely empty Trash.
    echo "Securely empyting trash..."
    srm -rf ~/.Trash/*
  else 
    # Empty Trash normally.
    echo "Empyting trash..."
    rm -rf ~/.Trash/*
  fi

	# Plays the Mac OSX empty trash sound effect
	afplay /System/Library/Components/CoreAudio.component/Contents/SharedSupport/SystemSounds/finder/'empty trash.aif'
fi