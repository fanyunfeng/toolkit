#!/bin/bash

[ -e $1 ] || exit 1

if [ -z "$2" ]; then
    OUT_FILE=x-config-common.reg
else
    OUT_FILE=$2
fi

FILE=`basename $1`
TMP_FILE=/tmp/$FILE
CONF_NAME="x-router"
NEW_NAME="x-config"

function PROC_EXPORT_ONE_CONF(){
    sed -i -n -e "1,2P;/\\[HKEY_CURRENT_USER\\\\Software\\\\SimonTatham\\\\PuTTY\\\\Sessions\\\\$2/,/^\$/P" $1
}

function PORC_ADD_ECHO_EVERY_LINE(){
    sed -i -e 's/^/ECHO /;s/^ECHO $/ECHO./' $1
}

function PROC_TO_ANSII_FILE(){
    iconv -f UNICODELITTLE -t UTF-8 $1 -o $2

    sed -i -e '1s/^.//;s/\r//' $2
}

function PROC_REPLACE_CONF_NAME(){
    sed -i -e "s/\\\\Sessions\\\\$2/\\\\Sessions\\\\$3/" $1
}

function PORC_REPLACE_HOST_ADDR(){
    sed -i -e '/"HostName"/s/\(="[0-9.]*"\)/="%1%"/' $1
}

function PROC_ADD_BATCH_HEADER(){
    sed -i -e '1i@ECHO OFF' $1
}


#begin
PROC_TO_ANSII_FILE $1 $TMP_FILE 

PROC_EXPORT_ONE_CONF $TMP_FILE $CONF_NAME

#PORC_ADD_ECHO_EVERY_LINE $TMP_FILE

PROC_REPLACE_CONF_NAME $TMP_FILE $CONF_NAME $NEW_NAME

#PROC_ADD_BATCH_HEADER $TMP_FILE

mv -f $TMP_FILE $OUT_FILE

