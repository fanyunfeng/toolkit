#!/bin/bash


#declare
TEMP_DIR=.


function SysncFile() {
local FILE_NAME=$1

#load from dhost.info
ftp -n -i -v dhost.info <<EOF
user fanyunfeng 4567yunfeng
bin
cd report
get $FILE_NAME
del $FILE_NAME
EOF


#upload to ftp
FTP_DIR=data/ul_report

if [ -e $FILE_NAME ]; then
	scp ./${FILE_NAME} upload@192.168.22.236:${FTP_DIR}
	rm ./${FILE_NAME}

	#mv ./${FILE_NAME} ${FTP_DIR}
	#chown upload:upload ${FTP_DIR}/${FILE_NAME}
fi

}

#entry
FILE_NAME="`date --date="1 days ago" +%F`.ul.users.tar.gz"
SysncFile $FILE_NAME

FILE_NAME="`date +%F`.ul.users.tar.gz"
SysncFile $FILE_NAME

