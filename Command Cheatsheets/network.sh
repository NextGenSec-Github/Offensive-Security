# ==========
# Traceroute
# ==========

# Basic Traceroute
traceroute google.com

# Setting Maximum Hops:
traceroute -h 20 google.com

# Specifying Number of Queries:
traceroute -q 5 google.com

# Setting Timeout:
traceroute -w 2 google.com

# Displaying IP Addresses:
traceroute -n google.com

# Using ICMP Echo Requests:
traceroute -I google.com

# Using TCP SYN Packets:
traceroute -T google.com

# Using UDP Datagrams:
traceroute -U google.com

# Specifying Destination Port:
traceroute -p 80 google.com

# Specifying Source IP Address:
traceroute -s 192.168.0.1 google.com

traceroute -d google.com

# Setting "Don't Fragment" Flag:
traceroute -F google.com

# Displaying IP Addresses and AS Numbers:
traceroute -n -A google.com


# =======
# Netstat 
# =======

# Netstat is a command-line network utility that displays network connections for Transmission Control Protocol, routing tables, and a number of network interface and network protocol statistics.

# Display All Active Connections:
netstat -a

# Display Listening Ports:
netstat -l

# Display Listening TCP Ports with Numeric Addresses:
netstat -lt

# Display Listening UDP Ports with Numeric Addresses:
netstat -lu

# Display PID and Program Name for Each Connection:
netstat -p

# Display Kernel Routing Table Information:
netstat -r

# Display Network Statistics for TCP:
netstat -st

# Display Network Statistics for UDP:
netstat -su

# Display Network Interfaces and Their State:
netstat -i 

# Display Network Services with PID and User:
netstat -pant

# Display Listening Ports with Process Names:
netstat -ltp

# Display All TCP Connections with Process Names:
netstat -atp

# Display All UDP Connections with Process Names:
netstat -aup

# Display All Established Connections (TCP and UDP):
netstat -atun

# Display Detailed Statistics for TCP Connections:
netstat -t -e

# Display Network Interface Statistics Continuously:
netstat -i 1

# =======
# tcpdump
# =======
# TCPDump is a powerful command-line packet analyzer tool.

# Capture Packets on a Specific Interface:
tcpdump -i eth0

# Capture Packets on a Specific Port:
tcpdump port 80

# Capture Packets with a Specific Host:
tcpdump host 192.168.1.100

# Capture Packets with a Specific Protocol:
tcpdump icmp

# Capture Packets with a Specific Source or Destination:
tcpdump src 192.168.1.100
tcpdump dst 192.168.1.200

# Capture Packets with a Specific Protocol and Port:
tcpdump udp port 53

# Capture Packets with a Specific Size:
tcpdump less 64

# Capture Packets with a Specific Source Port:
tcpdump src port 1024

# Capture Packets with a Specific Destination Port:
tcpdump dst port 22

# Capture Packets with a Specific TCP Flag (e.g., SYN, ACK):
tcpdump 'tcp[tcpflags] & (tcp-syn|tcp-ack) != 0'

# Capture Packets with a Specific VLAN ID:
tcpdump vlan 10

# Capture Packets and Display in ASCII:
tcpdump -A

# Capture Packets and Display in HEX and ASCII:
tcpdump -X

# Capture Packets and Save to a File:
tcpdump -w capture.pcap

# Read Packets from a Saved File:
tcpdump -r capture.pcap

# Capture Packets and Limit the Number of Packets:
tcpdump -c 100

# Capture Packets and Display Timestamps:
tcpdump -tttt

# Capture Packets and Resolve IP Addresses to Hostnames:
tcpdump -n













