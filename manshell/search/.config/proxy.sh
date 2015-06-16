#!/bin/bash

source ~/.ssh/gate1.sh

#MSHELL_PROXY_HOST=
#MSHELL_PROXY_USER=
#MSHELL_PROXY_PWD=

export MSHELL_PROXY_HOST MSHELL_PROXY_USER MSHELL_PROXY_PWD
env
MSHELL_PROXY_SHELL="expect -f .config/expect.sh "
