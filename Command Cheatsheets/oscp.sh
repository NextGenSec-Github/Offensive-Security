# ---
# PRE
# ---

# Scanning
nmap <IP> --top-ports 10 --open # Quick Scan
nmap -p 1-65535 -T4 -A -v <IP>
nmap -p 445 --script=smb-enum-shares.nse,smb-enum-users.nse <IP> # Enumerating SMB Shares
nmap -p 111 --script=nfs-ls,nfs-statfs,nfs-showmount <IP>

# Linux PrivEsc

(cat /proc/version || uname -a ) 2>/dev/null






# Random
smbclient //IP/anonymous # Connecting to a SMB Share
smbget -R smb://IP/anonymous # Recursively download the SMB share
curl -I localhost




