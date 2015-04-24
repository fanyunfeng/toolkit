#!/bin/bash

WORKING="/root/vmware"
VMSLIST=vms.list

cd ${WORKING}

function PROC_SAVE_CURRENT_VMS(){
	if [ -z "$1" ]; then
		return
	fi

	vmrun list | sed "1d" > $1
}

function PROC_ALL_VMWARES(){
	if [ -z "$1" -o -z "$2" ]; then
		return;
	fi

	if [ -s "$1" ]; then
		xargs -a $1 -n 1 -d "\n" $2
	fi
}

function PROC_START_VMWARES(){
	PROC_ALL_VMWARES $1 ./start.sh

	rm -f $1
}

function PROC_STOP_VMWARES(){
	PROC_SAVE_CURRENT_VMS $1

	PROC_ALL_VMWARES $1 ./suspend.sh
}

if [ -z "$1" ]; then
	exit
fi

case $1 in
	start)
		PROC_START_VMWARES ${VMSLIST} 
		;;

	stop)
		PROC_STOP_VMWARES ${VMSLIST}
		;;
	*)
		echo "unknown sub command."
		;;
esac
