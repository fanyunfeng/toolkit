#!/bin/bash

PROGRAME=$1

if [ -z "${PROGRAME}" ]; then
    PROGRAME="hcim"
fi

echo ${PRAGRAME}

APID=`adb shell ps | grep ${PROGRAME} | cut -d " " -f 4`

echo ${APID}

#adb logcat -v threadtime | grep ${APID} | tee log.txt
adb logcat -v threadtime | grep ${APID} 
