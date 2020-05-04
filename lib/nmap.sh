#!/bin/bash

#-------------------------------------------#
# NMAP Scan                                #
#-------------------------------------------#

function mapping_networks () {
    command:nmap -A -T4 $target -n --open
}