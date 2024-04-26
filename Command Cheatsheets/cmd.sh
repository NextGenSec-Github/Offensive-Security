# FUNDAMENTAL COMMANDS

dir # List contents of directory
cd [directory_path] # Change directory
mkdir [directory_name] # Create a directory
rmdir [directory_name] # Remove a directory
copy [src] [dst] # Copies one or more files to another location 
move [src] [dst] # Moves one or more files from one location to another
del [file_name] # Deletes one or more files
ren [current_name] [new_name] # Renames a file or files
cls # Clears the Command Prompt window.
ipconfig # Displays network interface configuration information
ping [host] # Sends ICMP Echo Request packets to a specified network host
tasklist # Displays a list of currently running processes
taskkill /pid [process_id] # Terminates one or more processes
systeminfo # Displays detailed configuration information about a computer and its operating system

# NETWORKING

tracert [dst] # Traces the route that packets take to reach a specified destination
netstat # Displays active network connections, routing tables, interface statistics, etc
nslookup [domain] # Performs DNS (Domain Name System) queries to retrieve DNS records.
arp -a # Displays and modifies the ARP (Address Resolution Protocol) cache
route print # Displays and modifies the local IP routing table
nbtstat -a [IP_address] # Displays NetBIOS over TCP/IP information, such as NetBIOS name tables and MAC addresses
telnet [host] [port] # Connects to a specified remote host using the Telnet protocol
ipconfig /all # Displays detailed IP configuration information for all network adapters
netsh interface ipv4 show config # Command-line scripting utility that allows you to display or modify the network configuration of a computer

# SECURITY

net user [username] [password] /add
