#!/bin/bash


#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#

################################################################################
# Help                                                                         #
################################################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

################################################################################
################################################################################
# Main program                                                                 #
################################################################################
################################################################################
################################################################################
# Process the input options. Add options as needed.                            #
################################################################################
# Get the options
while getopts ":h" option; do
   case $option in
      h) # display Help
         Help
         exit;;
   esac
done

  
#NMAP
echo "                                  "
echo "----------------------------------"
echo NMAP
echo "----------------------------------"
echo "                                  "
sleep 1
nmap -A -T4 $1 -n --open

sleep 1

#GoBuster
echo "                                  "
echo "----------------------------------"
echo GoBuster
echo "----------------------------------"
echo "                                  "
sleep 1
gobuster dns -d $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40

sleep 1

#Nikto
echo "                                  "
echo "----------------------------------"
echo Nikto
echo "----------------------------------"
echo "                                  "
sleep 1
nikto -h http://$1/
