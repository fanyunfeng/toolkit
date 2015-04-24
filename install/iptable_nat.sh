#!/bin/bash


iptables -t nat -A POSTROUTING -s 10.128.27.0/24 -o eth1 -j SNAT --to 192.168.34.239
