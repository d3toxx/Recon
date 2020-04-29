#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#
  
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
