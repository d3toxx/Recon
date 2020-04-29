#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#

echo " "
echo "-"
echo OS
echo "-"
echo " "
sleep 1
uname -n -v

sleep 1

echo " "
echo "-"
echo Hostname
echo "-"
echo " "
hostname -s 

sleep 1

echo " "
echo "-"
echo Who is logged
echo "-"
echo " "
who -H

sleep 1

echo " "
echo "-"
echo "What's my privilege"
echo "-"
echo " "
sudo -l