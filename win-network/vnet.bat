@echo off
rasdial ServerHome workclient 513700
route add 10.128.117.0 mask 255.255.255.0 10.128.100.237
route add 10.128.118.0 mask 255.255.255.0 10.128.100.237