#!/bin/bash

#GoBuster Function
busting_directories () {
    gobuster dns -d $target -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -t 40
}