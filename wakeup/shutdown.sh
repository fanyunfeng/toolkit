#!/bin/bash

for IP in *.ip ; do
	#echo check the login session on:`cat $IP`
	CMD="ssh  `cat ${IP}`"

	SESSIONS=`eval "${CMD} who" | wc -l`

	if [ ${SESSIONS} -eq 1 ]; then
		eval "${CMD} shutdown -h now"
		echo shutdown `cat ${IP}`
	fi
done
