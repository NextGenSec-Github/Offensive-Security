# GOBUSTER COMMANDS

gobuster dir --url <IP> -w /usr/share/wordlists/dirb/big.txt -b 404 -k -f -x php

gobuster dir --url <IP> --wordlist=/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt

gobuster dir --url <IP>:7125 --wordlist=/usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x txt,php,html -t 30 -k | tee gobuster_7125.raw.md
