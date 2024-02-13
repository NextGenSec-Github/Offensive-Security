# Script for various Nmap scans

# Basic Scan
nmap target_ip

# TCP SYN Scan (Stealth Scan)
nmap -sS target_ip

# UDP Scan
nmap -sU target_ip

# OS Detection
nmap -O target_ip

# Service Version Detection
nmap -sV target_ip

# Aggressive Scan
nmap -A target_ip

# Port Range Scan
nmap target_ip -p 1-100

# Scan Multiple Targets
nmap target1_ip target2_ip

# Script Scanning
nmap --script=default target_ip

# Exclude Hosts from Scan
nmap target_ip --exclude exclude_ip

# Save Output to a File
nmap target_ip -oN output.txt

# Fast Scan
nmap -F target_ip





