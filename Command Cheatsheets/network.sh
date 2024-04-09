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


# ================
# Netstat Commands
# ================

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

