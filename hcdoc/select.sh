#!/bin/bash

sed -n '/^!!/{=;p};/^ID/,+1{p};/^TP/,+1{p;}' $1
