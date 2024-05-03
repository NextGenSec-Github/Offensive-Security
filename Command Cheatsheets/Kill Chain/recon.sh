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
# More Complex
nmap -sC -sV -oN normal.txt target-ip # Enumerate services and use default scripts
nmap -p- -oN all_ports.txt target-ip # Scan all tcp ports
nmap -p- -sU -oN all_udp_ports.txt target-ip # Scan all udp ports
ls -lh /usr/share/nmap/scripts/ # List all nse scripts
nmap --proxies socks4://proxy-ip:1080 target-ip # Nmap through socks4 proxy
nmap -P0 -n -b username:password@target-ip target2-ip --proxies socks4://proxy-ip:1080 -vvvv # Ftp bounce scan
nmap -sV -sC -O -T4 -n -Pn -oA fastscan <IP> # Nmap fast scan for the most 1000tcp ports used
nmap -sV -sC -O -T4 -n -Pn -p- -oA fullfastscan <IP> # Nmap fast scan for all the ports
nmap -sV -sC -O -p- -n -Pn -oA fullscan <IP> # # Nmap fast scan for all the ports slower to avoid failures due to -T4
nmap -sU -sV --version-intensity 0 -n -F -T4 <IP> # # Nmap fast check if any of the 100 most common UDP services is running
nmap -sU -sV -sC -n -F -T4 <IP> # # Nmap check if any of the 100 most common UDP services is running and launch defaults scripts
# DNS Enum with NMAP
nmap --script dns-nsec-enum --script-args dns-nsec-enum.domains vulnerable.com -p 53 <target-ip>
nmap --script dns-random-srcport -p 53 <target-ip>
nmap --script dns-recursion -p 53 <target-ip>
nmap --script dns-service-discovery -p 53 <target-ip>
nmap --script dns-* -p 53 <target-ip>
nmap -n --script "(default and *dns*) or fcrdns or dns-srv-enum or dns-random-txid or dns-random-srcport" <target-ip>


# =======
# dnsenum
# =======





