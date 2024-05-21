#!/bin/sh

# Show network connections with processes
lsof -i

# Show network connections with PID
netstat -p

# Show network connections with PID
ss -tup