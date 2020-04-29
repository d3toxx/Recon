#!/bin/bash

#-------------------------------------------#
# $ whoami                                  #
# d3toxxx                                   #
#-------------------------------------------#

echo "-"
echo OS
echo "-"
uname -a

sleep 1

echo "-"
echo Hostname
echo "-"
hostname -s 

sleep 1

echo "-"
echo Who is logged
echo "-"
who -H

sleep 1

echo "-"
echo "What's my privilege"
echo "-"
sudo -l