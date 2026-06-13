#!/bin/bash

read -rp "Enter IP range: " ip_range

prefix="$ip_range"

while [[ "$prefix" =~ \.0$ ]]; do
    prefix="${prefix%.0}"
done

sudo masscan -p80,22,445,3389,5900,139,23 $ip_range/16 --rate 1000 -oG $prefix-80-22-445-3389-5900-139-23.txt



awk '/Ports: 445\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-smb.txt
awk '/Ports: 22\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-ssh.txt
awk '/Ports: 80\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-http.txt
awk '/Ports: 3389\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-rdp.txt
awk '/Ports: 23\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-telnet.txt
awk '/Ports: 139\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-netbios.txt
awk '/Ports: 5900\/open/ {print $4}'  $prefix-80-22-445-3389-5900-139-23.txt | sort -u > $prefix-vnc.txt
