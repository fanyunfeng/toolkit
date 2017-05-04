#!/bin/bash
#tag: adapter

MSHELL_TYPE=ssh
MSHELL_USER=bsdsp
MSHELL_HOST=10.1.2.105

MSHELL_PROXY=yes

MSHELL_WORKING=./

MSHELL_COMMAND=""

source ${MSHELL_WORKING}/.config/proxy.sh
source ${MSHELL_WORKING}/.config/shell.sh
