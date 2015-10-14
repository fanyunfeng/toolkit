#!/bin/bash

TIME=`echo "$1 * 30" | bc`

date -d @${TIME} +"%F %T %z"
