#!/bin/bash

HOST=`basename $0 .sh`

ENVNAME=`pwd`
ENVNAME=`basename ${ENVNAME}`

HOSTNAME=${HOST}:${ENVNAME}

HOSTNAME=`echo -n ${HOSTNAME} | sed -e 's/\.//g'`

echo ${ENVNAME}

#ssh root@192.168.245.60 "echo ;hostname "${HOSTNAME}"; bash"
ssh root@192.168.245.60 
