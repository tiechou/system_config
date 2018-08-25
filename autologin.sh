#!/usr/bin/expect

set timeout 7200
set password "answer.wlf"

spawn ssh 10.101.220.23
expect "Password: "
send "$password\r"

#expect "/home/tiechou]"
spawn ssh 10.232.128.3
expect "password:"
send "$password\r"

expect ")->"
send "screen -dr tiechou\r"

interact
