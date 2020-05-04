#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#

#-------------------------------------------#
# functions                                 #
#-------------------------------------------#

function Help()
{
   # Display Help
   echo
   echo "The name is Bond, James Bond."
   echo "Options:"
   echo "-h Print this Help."
   echo "-t Target, IP, Site."
   echo "Howto: sudo ./[script].sh [IP or site]"
   echo
}

function not_sudo() {
if [ $UID -ne 0 -a $EUID -ne 0 ]; then
  echo "Gotta SUDO bro"
  exit 1
fi
}