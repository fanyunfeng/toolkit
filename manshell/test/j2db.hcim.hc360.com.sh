#!/bin/bash


MSHELL_TYPE=mysql
#MSHELL_USER=
#MSHELL_HOST=

MSHELL_PROXY=no

MSHELL_WORKING=./

MSHELL_DBNAME=jabberd2
MSHELL_DBPWD=secret
MSHELL_DBUID=jabberd2
MSHELL_DBHOST=192.168.20.153

MSHELL_COMMAND=""

source ${MSHELL_WORKING}/.config/proxy.sh
source ${MSHELL_WORKING}/.config/shell.sh