#!/bin/bash


MSHELL_TYPE=mysql
MSHELL_USER=hcsystem03
MSHELL_HOST=192.168.90.10

MSHELL_PROXY=yes

MSHELL_WORKING=./

MSHELL_DBNAME=log
MSHELL_DBPWD=secret
MSHELL_DBUID=hc_log
MSHELL_DBHOST=192.168.90.33

MSHELL_COMMAND=""

source ${MSHELL_WORKING}/.config/proxy.sh
source ${MSHELL_WORKING}/.config/shell.sh