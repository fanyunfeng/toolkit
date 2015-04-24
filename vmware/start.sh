if [ -z "$1" ]; then
	exit 1
fi

VMNAME="$1"

vmrun start "${VMNAME}" nogui
