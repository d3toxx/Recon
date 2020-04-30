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


NetworkMAP=`nmap -A -T4 $1 -n --open 2>/dev/null \;`
if [ "$NetworkMAP" ]; then
  echo -e "\e[00;31m[-] Running NMAP" 
  echo -e "\n"
fi

GoBuster=`gobuster dns -d $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40 2>/dev/null \;`
if [ "$GoBuster" ]; then
  echo -e "\e[00;31m[-] Running GoBuster" 
  echo -e "\n"
fi

Nikto=`nikto -h http://$1/ 2>/dev/null \;`
if [ "$Nikto" ]; then
  echo -e "\e[00;31m[-] Running Nikto" 
  echo -e "\n"
fi


  
#NMAP
#echo "                                  "
#echo "----------------------------------"
#echo NMAP
#echo "----------------------------------"
#echo "                                  "
#sleep 1
#nmap -A -T4 $1 -n --open

#sleep 1

#GoBuster
#echo "                                  "
#echo "----------------------------------"
#echo GoBuster
#echo "----------------------------------"
#echo "                                  "
#sleep 1
#gobuster dns -d $1 -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40

#sleep 1

#Nikto
#echo "                                  "
#echo "----------------------------------"
#echo Nikto
#echo "----------------------------------"
#echo "                                  "
#sleep 1
#nikto -h http://$1/
