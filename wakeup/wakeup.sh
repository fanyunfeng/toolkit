#!/bin/bash

PATH=/usr/local/bin:/bin

for(( i=0; i< 3; i++)); do
	for MAC in *.mac ; do
		#echo wackup the machine with mac:`cat $MAC` 
		wol `cat $MAC` 
	done
	sleep 5
done
