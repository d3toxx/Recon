#!/bin/bash

#-------------------------------------------#
# $ whoami							                		#
# d3toxxx							                  		#
# $ date							                  		#
# Tue 28 Apr 2020 00:00:00 AM EDT	      		#
# $ recon.sh -s 				              			#
# v0.1									                  	#
# $ man recon						                		#
#	Step1: chmod +x recon.sh			          	#
#	Step2: ./recon.sh <IP Address>		      	#
#	Optional: > [filename].txt			        	#
# $ echo enjoy!								              #
# enjoy!									                  #
#-------------------------------------------#
  
#NMAP
echo "                                  "
echo "----------------------------------"
echo NMAP
echo "----------------------------------"
echo "                                  "
sleep 1
nmap -sV -A -T4 -O $1 --open

sleep 1

#Dirb
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
