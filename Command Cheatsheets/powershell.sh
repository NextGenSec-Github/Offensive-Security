# Powershell Commands

# Constructs
Get-Help Command-Name # Display information about a command
Get-Help Command-Name -examples # Display information about how to use the command
Get-Command # Gets all the cmdlets installed on the current Computer
Get-Command Verb-* # Pattern matching
Get-Command *-Noun
Get-Command New-*
Get-Command | Get-Member -MemberType Method # Using pipe (|) to pass output from one cmdlet to another
Get-ChildItem | Select-Object -Property Mode, Name # Listing the directories and filtering via mode and name
Verb-Noun | Where-Object -Property PropertyName -operator Value # Filtering Objects
Verb-Noun | Where-Object {$_.PropertyName -operator Value}
Get-Service | Where-Object -Property Status -eq Stopped # Use of operators only to show stopped services
Get-ChildItem | Sort-Object # Using the Sort-Object cmdlet to sort piped information

# Filesystem
Get-ChildItem -Path C:\ -Include *interesting-file.txt* -File -Recurse -ErrorAction SilentlyContinue # Find a file on the filesystem
Get-Content "C:\Program Files\interesting-file.txt" # Specify contents of file
(Get-Command -CommandType Cmdlet).Count # Number of cmdlets installed on system
Get-FileHash -Algorithm MD5 -Path "C:\Program Files\interesting-file.txt" # Getting the MD5 hash of a file
Get-Location # Print the current working directory
Test-Path "C:\Users\Administrator\Documents\Passwords" # Test if a path exists or not

# General
Invoke-WebRequest -Uri "http://example.com" # Make a request to a Web Server
certutil -decode "C:\Users\Administrator\Desktop\b64.txt" decode.txt # Decode a Base64 file

# Enumeration
(Get-LocalUser).count # Count how many users are on host
Get-LocalUser -SID "S-1-5-21-1394777289-3961777894-1791813945-501" # Find a user with a specific SID

# Security
gc C:\Windows\System32\LogFiles\Firewall\pfirewall.log | more # Using the Get-Content module to output the Firewall Logs
# See what processes are making TCP connections
Get-NetTCPConnection | select LocalAddress,localport,remoteaddress,remoteport,state,@{name="process";Expression={(get-process -id $_.OwningProcess).ProcessName}}, @{Name="cmdline";Expression={(Get-WmiObject Win32_Process -filter "ProcessId = $($_.OwningProcess)").commandline}} | sort Remoteaddress -Descending | ft -wrap -autosize
Get-NetUDPEndpoint | select local*,creationtime, remote* | ft -autosize # Show UDP Connections
(Get-NetTCPConnection).remoteaddress | Sort-Object -Unique # List the IP addresses associated with ongoing TCP connections on the host
Get-NetTCPConnection -remoteaddress 51.15.43.212 | select state, creationtime, localport,remoteport | ft -autosize # Get information on an IP and what it's doing
Get-DnsClientCache | ? Entry -NotMatch "workst|servst|memes|kerb|ws|ocsp" | out-string -width 1000 # Retrieve DNS Cache
gc -tail 4 "C:\Windows\System32\Drivers\etc\hosts" # View host files
qwinsta # Querying RDP Logs
Get-SmbConnection 
Get-SmbShare # Querying SMB Shares

# -----
# TOOLS
# -----


# Kape
.\kape.exe --tsource C:\Windows\System32\sru --tdest C:\Users\CMNatic\Desktop\SRUM --tflush --mdest C:\Users\CMNatic\Desktop\MODULE --mflush --module SRUMDump --target SRUM # Using KAPE's SRUMDump module

# Packet Monitor (pktmon)
pktmon start # Start a PacketMonitor capture.
pktmon stop # Stop a PacketMonitor capture.
pktmon reset # Reset the count of packets that PacketMonitor has captured.
pktmon counters # View the amount of packets PacketMonitor has captured across the interfaces.
pktmon etl2txt # Convert a PacketMonitor capture file to a text file. 
pktmon etl2pcap # Convert a PacketMonitor capture file to a pcap.

# Netstat
netstat -a # Display all currently active TCP connections and TCP/UDP ports.
netstat -b # Display the executable responsible for the connection (i.e. payload.exe).
netstat -o # Display all TCP connections and include the process ID.
netstat -p # Display connections by protocol. Options include TCP, UDP, ICMP, and the IPV6 iterations.
netstat -a -o > netstat.txt # Exporting netstat output


