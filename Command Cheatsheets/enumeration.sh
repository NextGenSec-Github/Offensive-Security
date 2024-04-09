# =============
# NMAP Commands
# =============

# Basic Scanning
nmap <target-ip>

# Scan a Range of Hosts:
nmap 192.168.1.1-20

# Scan Specific Ports:
nmap -p 22,80,443 192.168.1.1

# Scan All Ports
nmap -p- 192.168.1.1

# Detect OS and Services:
nmap -A 192.168.1.1

# Aggressive Scan (Tries to get as much information as possible):
nmap -T4 -A -v 192.168.1.1

# Scan Multiple Hosts:
nmap 192.168.1.1 192.168.1.2 192.168.1.3

# Scan Hosts from a File:
nmap -iL hosts.txt

# Scan IPv6 Hosts:
nmap -6 fe80::1

# TCP SYN Stealth Scan:
nmap -sS 192.168.1.1

# UDP Scan:
nmap -sU 192.168.1.1

# Operating System Detection Only:
nmap -O 192.168.1.1

# Service Version Detection Only:
nmap -sV 192.168.1.1

# Print Output in XML Format:
nmap -oX output.xml 192.168.1.1

# Exclude Hosts from Scan:
nmap --exclude 192.168.1.5,192.168.1.10 192.168.1.1

# Use a Specific Source IP Address:
nmap -S 192.168.2.10 192.168.1.1

# Perform a Ping Scan:
nmap -sn 192.168.1.0/24

# ===================
# Enum4Linux Commands
# ===================

# This command will perform basic enumeration on the target system and display user, group, and share information.
enum4linux <TARGET_IP>

# This command will enumerate usernames on the target system.
enum4linux -U <TARGET_IP>

# =======================
# Hydra for Brute Forcing
# =======================

# SMB Brute Force
hydra -l <USERNAME> -P <PASSWORD_FILE> smb://<TARGET_IP>

# SSH Brute Force
hydra -l <USERNAME> -P <PASSWORD_FILE> ssh://<TARGET_IP>

# ==================================
# GoBuster for Directory Enumeration
# ==================================

gobuster dir --url <IP> -w /usr/share/wordlists/dirb/big.txt -b 404 -k -f -x php

gobuster dir --url <IP> --wordlist=/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

gobuster dir --url <IP>:7125 --wordlist=/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x txt,php,html -t 30 -k | tee gobuster_7125.raw.md

