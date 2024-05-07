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
nmap -sN [target] # Performs Stealth scan with tcp headers set to "Null"
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

# =====
# Hydra
# =====
hydra -l name -P rockyou.txt ftp://<target>:21 -v


# =========
# Bettercap
# =========
syn.scan 192.168.1.0/24 1 10000 # Ports 1-10000

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

# =============
# Random Server
# =============
curl -I <URL> | grep Server # Server HTTP Header
nc <IP> 22 # Grab SSH Header
nmap -sV -p <port_number> <hostname or IP address>



# =======
# davtest
# =======
davtest -url http://target-ip/ -sendbd auto # Tries to upload (executable) files to webdav

# ========
# Yersinia
# ========
apt-get install yersinia #Installation
sudo apt install kali-linux-large # Another way to install it in Kali
yersinia -I # Interactive mode
yersinia -G # For graphic mode
# STP BPDU DoS
yersinia stp -attack 2
yersinia stp -attack 3
# STP TCP Attack
yersinia stp -attack 1 # Will send 1 TCP packet and the switch should restore the CAM in 15 seconds
yersinia stp -attack 0 # Will send 1 CONF packet, nothing else will happen
# STP Root Attack
yersinia stp -attack 4 # Behaves like the root switch
yersinia stp -attack 5 # This will make the device behaves as a switch but will not be root
# Inducing CDP Table Flooding
sudo yersinia cdp -attack 1 # Initiates a DoS attack by simulating fake CISCO devices
# CDP Impersonation Attack
sudo yersinia cdp -attack 2 # Simulate a new CISCO device
sudo yersinia cdp -attack 0 # Send a CDP packet
# DHCP DoS (RELEASE Packets)
yersinia dhcp -attack 1
yersinia dhcp -attack 3 #More parameters are needed











