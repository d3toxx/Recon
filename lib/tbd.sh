#!/bin/bash

#GoBuster Function
busting_directories () {
    gobuster dns -d $target -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40
}

#Nikto Function
checking () {
    gobuster dns -d $target -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40
}

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