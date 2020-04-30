#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#
#-------------------------------------------#
# Tools PATH                                #
#-------------------------------------------#

if [ ! -L $0 ]; then
	PATH="$( cd "$(dirname "$0")" ; pwd -P )"
else
	PATH=`dirname $(readlink -f $0)`
fi

source $PATH/lib/toolcheck.sh
source $PATH/lib/nmap.sh
source $PATH/lib/gobuster.sh
source $PATH/lib/nikto.sh

#-------------------------------------------#
# Main program                              #
#-------------------------------------------#
#-------------------------------------------#
# Help                                      #
#-------------------------------------------#
function Help()
{
   # Display Help
   echo
   echo "Thank you for using sniffer! Enjoy!"
   echo "Options:"
   echo "-h     Print this Help."
   echo "-t	Target, IP, Site."
   echo "Howto: sudo ./[script].sh [IP or site]"
   echo
}

#-------------------------------------------#
# Input Options                             #
#-------------------------------------------#
while getopts "ht:" option; do
   case "$option" in
      h) # display Help
         Help
         exit 3
         ;; 
      ?) # incorrect option
         echo "Please see use -h for any questions"
         exit 1
         ;;
   esac
done

target="$2"

#-------------------------------------------#
# Checking Root Privileges                  #
#-------------------------------------------#

not_sudo

#-------------------------------------------#
#Checks to ensure NMAP is installed         #
#-------------------------------------------#

tool_not_found $NMAP

#-------------------------------------------#
#Scanning                                   #
#-------------------------------------------#

#HTB/CTF Scanning

mapping_networks $target