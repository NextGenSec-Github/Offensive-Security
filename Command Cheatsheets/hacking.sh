# ====
# NMAP
# ====

# NMAP BASICS
nmap [target] # Scan a single target
nmap [target1,target2,etc] # Scan multiple targets
nmap -iL [list.txt] # Scan a list of targets
nmap [range of IP addresses] # Scan a range of hosts
nmap [IP address/cidr] # Scan a subnet
nmap -iR [number] # Scan random hosts
nmap [targets] –exclude [targets] # Exclude targets from scan
nmap [targets] –excludefile [list.txt] # Exclude a list of targets
nmap -A [target] # Aggressive Scanning
nmap -6 [target] # Scan an IPv6 target
# DISCOVERY OPTIONS
nmap -sP [target] # Perform a ping scan
nmap -PN [target] # Dont ping
nmap -PS [target] # TCP SYN ping
nmap -PA [target] # TCP ACK ping
nmap -PU [target] # UDP ping
nmap -PY [target] # SCTP Init Ping
nmap -PE [target] # ICMP echo ping
nmap -PP [target] # ICMP Timestamp ping
nmap -PM [target] # ICMP address mask ping
nmap -PO [target] # IP protocol ping
nmap -PR [target] # ARP ping
nmap –traceroute [target] # Traceroute
nmap -R [target] # Force reverse DNS resolution
nmap -n [target] # Disable reverse DNS resolution	
nmap –dns-servers [servers] [target # Alternative DNS lookup
nmap -sL [targets] # Create a host list

