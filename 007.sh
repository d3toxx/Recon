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

source $PATH/lib/functions.sh
source $PATH/lib/nmap.sh
source $PATH/lib/gobuster.sh
source $PATH/lib/nikto.sh

#-------------------------------------------#
# Main program                              #
#-------------------------------------------#

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

target="$1"

mapping_networks $target