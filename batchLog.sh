#! /bin/sh
#
# batchLog.sh
# Copyright (C) 2016 gcaufy <gcaufy@GCAUFY-ELEMENTARY>
#
# Distributed under terms of the MIT license.
#
echo -n "ssh username: "
read username
echo -n "ssh password: "
read password

s1=`head -1 server.list`
ssh "$username@$s1" -p$password "echo Test ok"
echo $s1
exit

while read -p "ssh username: " username




while read line; do
    echo $line
done < server.list

