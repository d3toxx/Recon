#!/bin/bash

declare -r NMAP='which nmap'


function tool_not_found() {
  if [ ! -x $1 ]; then
    echo "error $1 Not installed"
    exit 1
  fi
  return 1
}

function not_sudo() {
if [ $UID -ne 0 -a $EUID -ne 0 ]; then
  echo "error Gotta SUDO bro"
  exit 1
fi
}

function target_not_set() {
if [ -z $target ]; then
  echo "error missing target"
  exit 1
fi
}