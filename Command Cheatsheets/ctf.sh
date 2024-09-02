# -----------
# Enumeration
# -----------

# Network Enum
sudo nmap -T4 --min-rate 1000 -sV -sC -p- -oN nmap_report <ip>

# Subdomain Enum
gobuster dns -d target.com -w /path/to/wordlist.txt


# Server Enum
gobuster dir -u <url> -w <wordlist>
nikto -h <url>
nikto -h http://target.url -useragent "Mozilla/5.0" # Change user agent


# ------------
# Exploitation
# ------------

# Brute Force
hydra -l <username> -P <password_list> ssh://<target IP>
python3 sqlmap.py -r /home/tryhackme/expose/expose.req — dump
