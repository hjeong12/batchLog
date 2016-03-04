# batchLog
aggregate logs from multiple servers


###Make sure you have `expect` installed. if not, run the following code to install it.
```bash
yum install expect
#apt-get install expect
```

### Clone or donwload the code and make it executable.
```bash
chmod +x run.sh
chmod +x scp.tcl
```

###Write down all hosts in `server.list`
```bash
10.10.10.1
10.10.10.2
10.10.10.3
10.10.10.4
10.10.10.5
10.10.10.6
10.10.10.7
10.10.10.8
10.10.10.9
```

###Download logs from all the servers.
```bash
./run.sh /var/logs/access.log
```

###Download log from one server
```bash
./run.sh /var/logs/access.log 10.10.10.1
```