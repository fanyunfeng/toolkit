#!/bin/bash
#tag: web

MSHELL_TYPE=ssh
MSHELL_USER=hcsystem03
MSHELL_HOST=192.168.50.117

MSHELL_PROXY=yes

MSHELL_WORKING=./

#MSHELL_DBNAME=jabberd2
#MSHELL_DBPWD=secret
#MSHELL_DBUID=jabberd2
#MSHELL_DBHOST=192.168.90.31

MSHELL_COMMAND=""

source ${MSHELL_WORKING}/.config/proxy.sh
source ${MSHELL_WORKING}/.config/shell.sh
