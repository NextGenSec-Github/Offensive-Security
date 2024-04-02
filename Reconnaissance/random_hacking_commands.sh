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





