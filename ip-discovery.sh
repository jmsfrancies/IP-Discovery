#!/bin/bash
# Asks for the first address octet 
echo What"'s" the first octet or Hexidecimal value for your IP address: 
read IP 
# Command that can either return the regular expression of the IP octet and prints the address, CIDR number, and the network type.
# Or returns the IPv6 address and network type, IPv6's CIDR is usually default at /64
ip addr | grep $IP | awk -F ' ' '{print "Local IP Address: " $2 " " "Internet Type: " $9}'

