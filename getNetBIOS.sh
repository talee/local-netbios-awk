#!/bin/bash
echo -n "Starting "
nmap -version | tr -d '\n'
echo -n " at "
date
sudo nmap -sU --script nbstat.nse -p137 10.0.0.1-15 | awk -f formatNetBIOS.awk | grep --color ' [^ ]\{3,\} $\|$'
