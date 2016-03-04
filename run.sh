#!/bin/bash
# changong <changong@tencent.com>
#

log=$1

function help() {
        cat <<HELP
usage: ./run.sh <logpath> [<host>]
HELP
}

if [[ $log == "" ]]; then
        help
        exit;
fi
if [ ! -d "logs" ]; then
        mkdir logs
fi

name=`basename $log log`

echo -n "ssh username:"
read username
echo -n "ssh password:"
read password

if [[ $2 != "" ]]; then
        ./scp.tcl $username $2 $password $log "logs/$name.$2.log"
        echo "Done"
        exit;
fi

while read line; do
        ./scp.tcl $username $line $password $log "logs/$name.$line.log"
done < server.list

if [ -f "logs/$name.all.log" ]; then
        rm -rf "logs/$name.all.log"
fi

cat "logs/$name"* > "logs/$name.all.log"

echo "All done"
