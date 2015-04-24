#!/usr/bin/expect -f
send_user "$argv0 [lrange $argv 0 2]\n"
spawn ssh 118.244.209.209 
expect "password:"
send "M2bcCkcsPLjmcByB2ZkYIE38g\r"
expect "Ip:"
send "192.168.90.17\r"
interact
