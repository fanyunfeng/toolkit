#!/bin/bash

DBHOST=""

if [ ${MSHELL_PROXY} = 'yes' ]; then
    echo "connect by proxy..."
    DBHOST="PROXY"
    MSHELL_COMMAND=${MSHELL_PROXY_SHELL}
fi

if [ "${MSHELL_TYPE}" = 'ssh' ]; then
    export MSHELL_HOST
    MSHELL_COMMAND="${MSHELL_COMMAND}"
elif [ "${MSHELL_TYPE}" = 'mysql' ]; then
    if [ -n "${MSHELL_USER}" ] && [ -n "${MSHELL_HOST}" ]; then
        DBHOST=${MSHELL_HOST}
        
        echo "run mysql on ${MSHELL_USER}@${MSHELL_HOST}"
        MSHELL_COMMAND="${MSHELL_COMMAND} ssh -v -t ${MSHELL_USER}@${MSHELL_HOST}"
    fi

    MSHELL_MYSQL="mysql ${MSHELL_DBNAME} --auto-rehash --default-character-set=utf8"

    if [ -n "${MSHELL_DBHOST}" ]; then
        DBHOST=${MSHELL_DBHOST}
        MSHELL_MYSQL="${MSHELL_MYSQL} -h ${MSHELL_DBHOST}"
    fi

    if [ -n "${MSHELL_DBUID}" ]; then
        MSHELL_MYSQL="${MSHELL_MYSQL} -u ${MSHELL_DBUID}"
    fi

    if [ -n "${MSHELL_DBPWD}" ]; then
        MSHELL_MYSQL="${MSHELL_MYSQL} --password=${MSHELL_DBPWD}"
    fi

    echo "database on: ${DBHOST}"

    MSHELL_COMMAND="${MSHELL_COMMAND} ${MSHELL_MYSQL}"
fi

TITLE="`basename "$PWD"` : `basename "$0"`"
OTITLE=`xdotool getwindowname ${WINDOWID}`

wmctrl -i -r ${WINDOWID} -T "${TITLE}"

echo ${MSHELL_COMMAND}
eval ${MSHELL_COMMAND}

echo

wmctrl -i -r ${WINDOWID} -T "${OTITLE}"
