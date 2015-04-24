#!/bin/bash

function PROC_CHG_COLOR(){
    local FILE=$1
    local COLOR=$2
    local VAL=$3

    sed -i -e "s/\\(\"Colour$COLOR\"=\"\\)\\([0-9,]*\\)\"\\r\$/\\1$VAL\"\r/" $1
}

[ -e $1 ] || exit 1

FILE=`basename $1`
TMP_FILE=/tmp/$FILE

iconv -f UNICODELITTLE -t UTF-8 $1 -o $TMP_FILE 

PROC_CHG_COLOR $TMP_FILE  8 "255,0,0"
PROC_CHG_COLOR $TMP_FILE 10 "0,255,0"
PROC_CHG_COLOR $TMP_FILE 14 "0,0,255"

iconv -t UNICODELITTLE -f UTF-8 $TMP_FILE -o `dirname $1`/new-$1 

#rm $TMP_FILE -f
