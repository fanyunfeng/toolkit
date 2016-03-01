#!/bin/bash

INPUTFILE=$1

cat ${INPUTFILE} | jq '{"RAWTEXT": .[]} | .RAWTEXT.DB="5"' | sed -e 's/"RAWTEXT": {/"RAWTEXT": {"TYPE":"0",/' | jq . -c 
