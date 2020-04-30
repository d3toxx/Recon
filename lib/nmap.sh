#!/bin/bash

#NMAP Function
function mapping_networks () {
    nmap -A -T4 $target -n --open
}