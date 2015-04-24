#!/usr/bin/expect -f

spawn ssh $env(MSHELL_PROXY_USER)@$env(MSHELL_PROXY_HOST)

expect "password:"
send $env(MSHELL_PROXY_PWD)
send "\r"

expect "Ip:"
send $env(MSHELL_HOST)
send "\r"

interact {
    \003\003   exit
}
