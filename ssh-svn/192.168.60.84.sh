#!/bin/sh

SVN_SERVER=192.168.245.237
SVN_PORT=3690
SSH_HOST=192.168.119.165

#example
#ssh -2 -q -f -N -g -L 3690:192.168.34.237:3690 192.168.119.165

ssh -2 -q -f -N -g -L ${SVN_PORT}:${SVN_SERVER}:${SVN_PORT} ${SSH_HOST}

