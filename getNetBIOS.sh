#!/bin/bash
#
#  Gets the NetBIOS names of a bunch of local network devices
#
#  Author: Thomas Lee
#  Date:   Jun 01, 2012

# Change to script directory
cd "$( cd "$( dirname "$0" )" && pwd )"
sudo echo -n "Starting "
nmap -version | tr -d '\n'
echo -n " at "
date
sudo nmap -sU --script nbstat.nse -p137 192.168.42.1-150 | awk -f formatNetBIOS.awk | grep --color ' [^ ]\{3,\} $\|$'
