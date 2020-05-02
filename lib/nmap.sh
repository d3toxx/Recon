#!/bin/bash

#-------------------------------------------#
# NMAP Scan                                #
#-------------------------------------------#

function mapping_networks () {
    nmap -A -T4 $target -n --open
}