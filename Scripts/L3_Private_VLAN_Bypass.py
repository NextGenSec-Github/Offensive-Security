from scapy.all import Ether, IP, UDP, Raw, sendp

# Define the router's MAC address and client's IP address
router_mac = "00:11:22:33:44:55"
client_ip = "192.168.1.100"

# Craft the packet
packet = Ether(src=router_mac) / IP(src=client_ip, dst="destination_ip") / UDP(dport=12345) / Raw(b"Hello, World!")

# Send the packet
sendp(packet, iface="eth0")  # Replace "eth0" with the appropriate interface name
