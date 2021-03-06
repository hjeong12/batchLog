#!/usr/bin/expect -f
set timeout 20
set USER [lindex $argv 0]
set HOST [lindex $argv 1]
set PASSWORD [lindex $argv 2]
set LOG_FILE [lindex $argv 3]
set DEST [lindex $argv 4]
catch {spawn scp $USER@$HOST:$LOG_FILE $DEST}
expect {
        "yes/no" {send "yes\r"; exp_continue}
        "*password:*" {send "$PASSWORD\r"}
}
expect "100%"
expect eof
