# ---
# PRE
# ---

# Scanning
nmap <IP> --top-ports 10 --open # Quick Scan
nmap -p 1-65535 -T4 -A -v <IP>
