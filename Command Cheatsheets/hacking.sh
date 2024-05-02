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

# ========
# Gobuster
# ========
gobuster dir -u http://target-ip -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x php,txt -t 3 # Bruteforce webdirectories and files by extention

# =====
# Wfuzz
# =====
wfuzz -u http://target-ip/path/index.php?param=FUZZ -w /usr/share/wordlists/rockyou.txt # Bruteforce web parameter
wfuzz -u http://target-ip/path/index.php?action=authenticate -d 'username=admin&password=FUZZ' -w /usr/share/wordlists/rockyou.txt # Brute force POST login

# ====
# ffuf
# ====
ffuf -w /path/to/wordlist -u https://target/FUZZ # Brute force web directories

# =======
# davtest
# =======
davtest -url http://target-ip/ -sendbd auto # Tries to upload (executable) files to webdav
















