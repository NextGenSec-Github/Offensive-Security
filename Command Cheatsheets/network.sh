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




