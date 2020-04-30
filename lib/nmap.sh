#!/bin/bash

#-------------------------------------------#
# NMAP Scan                                #
#-------------------------------------------#

function mapping_networks () {
    $NMAP -A -T4 $target -n --open
}