#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#

#-------------------------------------------#
# Tools PATH                                #
#-------------------------------------------#

source /lib/toolcheck.sh
source /lib/nmap.sh
source /lib/gobuster.sh
source /lib/nikto.sh

#-------------------------------------------#
# Main program                              #
#-------------------------------------------#

#-------------------------------------------#
# Help                                      #
#-------------------------------------------#
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [h|v|o]"
   echo "options:"
   echo "h     Print this Help."
   echo "t     Target"
   echo
}

#-------------------------------------------#
# Input                                     #
#-------------------------------------------#
Input()
{
    # Accepts input
    target="$1"
}

#-------------------------------------------#
# Input Options                             #
#-------------------------------------------#
while getopts ":ht:" option; do
   case $option in
      h) # display Help
         Help
         exit;;
         \?) # incorrect option
         echo "Wrong option"
         exit;;
      t) # accept input
         Input
         exit;;
         \?) # incorrect option
         echo "Wrong option"
         exit;;
   esac
done

#-------------------------------------------#
# Checking Root Privileges                  #
#-------------------------------------------#

not_sudo

#-------------------------------------------#
# Checking Target Is Set                    #
#-------------------------------------------#

target_not_set

#-------------------------------------------#
#Checks to ensure NMAP is installed         #
#-------------------------------------------#

tool_not_found $NMAP

#-------------------------------------------#
#Scanning                                   #
#-------------------------------------------#

#HTB/CTF Scanning
mapping_networks $target