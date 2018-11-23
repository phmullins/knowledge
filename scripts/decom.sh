#!/bin/bash
#
# Script Name: ~/bin/decom.sh
# Description: Uncompress archives with a single command.
# Created: 2017-12-21 @ 10:28 AM | Modified 2018-11-23 @ 10:43 AM.
# Author: patrick@arkmail.us 
#
# Note: p7zip and unrar on MacOS require installation via Homebrew.

if [ $# -lt 1 ]; then
  echo "Usage: $(basename "$0") file"
fi

decom() {
  if [ -f "$1" ]; then
    case $1 in
      *.tar.xz)   tar -xvf "$1"                         ;;
      *.tar.bz2)  tar -jxvf "$1"                        ;;
      *.tar.gz)   tar -zxvf "$1"                        ;;
      *.bz2)      bunzip2 "$1"                          ;;
      *.dmg)      hdiutil mount "$1"                    ;;
      *.gz)       gunzip "$1"                           ;;
      *.tar)      tar -xvf "$1"                         ;;
      *.tbz2)     tar -jxvf "$1"                        ;;
      *.tgz)      tar -zxvf "$1"                        ;;
      *.zip)      unzip "$1"                            ;;
      *.pax)      cat "$1" | pax -r                     ;;
      *.pax.z)    uncompress "$1" --stdout | pax -r     ;;
      *.rar)      unrar x "$1"                          ;;
      *.z)        uncompress "$1"                       ;;
      *.7z)       7z x "$1"                             ;;
      *)          echo "'$1' cannot be extracted/mounted via decom()" ;;
    esac
  else
    echo "'$1' is not a valid file."
  fi
}

decom "$@"
