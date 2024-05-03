# Random Linux Commands Impotant to Know

netstat -tulpn # Show Linux network ports with Process IDs (PIDs)
watch ss -stplu # Watch tcp, udp open ports in real time with socket summary
lsof -i # List established connections
macchanger -m MACADDR INTR # Change MAC address in Kali
ifconfig eth0 192.168.2.1/24 # Set IP Address in Linux
ifconfig eth0:1 192.168.2.3/24 # Add IP Address to existing Network Interface in Linux
ifconfig eth0 hw ether <MACADDR>
ifconfig eth0 mtu 1501 # Change the MTU size
dig -x <IP> # Reverse DNS Lookup
host <IP>  # Reverse DNS Lookup if dig is not installed
