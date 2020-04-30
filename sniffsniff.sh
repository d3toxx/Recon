#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
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
   echo "v     Verbose mode."
   echo "o     Save to text file."
   echo
}

#-------------------------------------------#
# Main program                              #
#-------------------------------------------#

#-------------------------------------------#
# Input Options                             #
#-------------------------------------------#
# Get the options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
         \?) # incorrect option
         echo "Error: Invalid option"
         exit;;
   esac
done

if [ ! -L $0 ]; then
	SCRIPATH="$( cd "$(dirname "$0")" ; pwd -P )"
else
	SCRIPATH=`dirname $(readlink -f $0)`
fi

. $SCRIPATH/tools/nmap.sh
. $SCRIPATH/tools/gobuster.sh
. $SCRIPATH/tools/nikto.sh