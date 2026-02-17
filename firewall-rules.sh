#!/bin/bash

iptables -P FORWARD DROP

# HR <-> Engineering
iptables -A FORWARD -s 10.0.1.0/24 -d 10.0.2.0/24 -j ACCEPT
iptables -A FORWARD -s 10.0.2.0/24 -d 10.0.1.0/24 -j ACCEPT

# Engineering -> DMZ
iptables -A FORWARD -s 10.0.2.0/24 -d 10.0.3.0/24 -j ACCEPT
