#!/bin/bash


MSHELL_PROXY_HOST=192.168.119.199
MSHELL_PROXY_USER=nagios

MSHELL_PROXY_SHELL="ssh -X -v -t ${MSHELL_PROXY_USER}@${MSHELL_PROXY_HOST}"
