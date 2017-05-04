#!/usr/bin/expect -f

spawn ssh $env(MSHELL_PROXY_USER)@$env(MSHELL_PROXY_HOST)

expect "password:"
send $env(MSHELL_PROXY_PWD)
send "\r"

expect "Mode:"
send "1"
send "\r"

expect "group:"
send "3"
send "\r"

expect "device:"
send $env(MSHELL_HOST)
send "\r"

expect "accounts:"
send $env(MSHELL_USER)
send "\r"

expect "password:"
send $env(MSHELL_PWD)
send "\r"

expect "bsdsp"
send "sudo su"
send "\r"

expect "password"
send $env(MSHELL_PWD)
send "\r"

expect "#"
send "export LC_ALL=\"en_US.UTF-8\""
send "\r"

interact {
#    exit\r     { send "exit"; exit }
#    \003\003   exit
}

