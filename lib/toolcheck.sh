#!/bin/bash

declare -r NMAP='dpkg -s NMAP &> /dev/null'

function tool_not_found() {
  if [ "$NMAP" -eq 0 ]; then
    echo "Package is not installed"
    exit 1
  fi
  return 1
}

function not_sudo() {
if [ $UID -ne 0 -a $EUID -ne 0 ]; then
  echo "Gotta SUDO bro"
  exit 1
fi
}