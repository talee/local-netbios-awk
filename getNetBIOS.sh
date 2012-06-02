#!/bin/bash
sudo nmap -sU --script nbstat.nse -p137 10.0.0.1-9 | awk -f formatNetBIOS.awk
