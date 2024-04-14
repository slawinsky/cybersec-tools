#!/bin/sh

sudo tshark -i eth0 -nn -e ip.src -e ip.dst -e tcp.dstport -Tfields -E separator=, -Y ip > traffic.log

# Log traffic on specific NIC to file 
# EXAMPLE 192.168.1.58,8.8.8.8,53