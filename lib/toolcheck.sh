#!/bin/bash

#-------------------------------------------#
# Tool Check                                #
#-------------------------------------------#

declare -r VNMAP= command which nmap

function tool_not_found() {
if [ ! -x $1 ]; then
    echo "error $1 not installed"
    exit 1
  fi
  return 1
}

function not_sudo() {
if [ $UID -ne 0 -a $EUID -ne 0 ]; then
  echo "Gotta SUDO bro"
  exit 1
fi
}