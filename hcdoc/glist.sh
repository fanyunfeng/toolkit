#!/bin/bash

PLATFORM=`uname`



find $1 -name '*.dat' -a -type f | sed -e 's|/e/|e:/|;s|/|\\|g' > list.txt
