#!/bin/sh

ssh -2 -q -f -N -g -L 50001:192.168.60.84:55535 dev.search
