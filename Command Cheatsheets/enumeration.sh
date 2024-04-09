# NMAP Commands

# Basic Scanning
nmap <target-ip>

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

