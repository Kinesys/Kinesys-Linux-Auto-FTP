#!/usr/kinesys/bin/expect

export Day_data = `date '+%y-%m-%d'`"

spawn ssh userid@host

expect -re "yes/no" {
  send "yes\r"
  exp_continue
} -re "password : " {
  send "password\r"
  exp_continue
}
 interact
