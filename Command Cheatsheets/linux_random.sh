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




# Malicious Activity
ls -al /var/www/html/uploads | grep -v ".jpeg" # Filtering out jpeg files
find / -user www-data -type f 2>/dev/null | less # Finding files owned by a user
find / -group GROUPNAME 2>/dev/null # Retrieve a list of files and directories owned by a specific group.
find / -perm -o+w 2>/dev/null # Retrieve a list of all world-writable files and directories.
find / -type f -cmin -5 2>/dev/null # Retrieve a list of files created or changed within the last five minutes.
exiftool /var/www/html/assets/reverse.sh # Viewing metadata of suspicious file
md5sum /var/www/html/assets/reverse.sh # Getting MD5 Hash of a File
sha256sum /var/www/html/assets/reverse.sh # Getting SHA256 Hash of a File
ls -l /var/www/html/assets/reverse.sh # Viewing the Modify Timestamp (mtime) 
ls -lc /var/www/html/assets/reverse.sh # Viewing the Change Timestamp (ctime)
ls -lu /var/www/html/assets/reverse.elf # Viewing the Access Timestamp (atime)
cat /etc/passwd | cut -d: -f1,3 | grep ':0$' # Filtering the Contents of /etc/passwd
cat /etc/group # Groups on a host
cat /etc/shadow # Hashes of Password on a host
groups <username> # Viewing a Specific Users' Groups
getent group adm # Viewing a Specific Groups' Users
getent group 27 # Viewing Group Members by Group ID
last # Examining user logins and sessions. It is used to display the history of the last logged-in users
lastb # Tracks failed login attempts
lastlog # Provides information about all user logins 
cat /var/log/auth.log # Authentication Logs/Info
who # Display currently logged in users
sudo cat /etc/sudoers # Sudoers group file
ls -a /home/jane # Listing Jane's Hidden Files and Directories
ls -al /home/jane/.ssh # SSH Information
cat /home/jane/.ssh/authorized_keys # Authorized key information
stat /home/jane/.ssh/authorized_keys # Viewing the Timestamps on the authorized_keys File
find / -type f -executable 2> /dev/null # Listing all Executable Binaries on the System
sudo debsums -e -s # Scanning Packages with debsums
find / -perm -u=s -type f 2>/dev/null # Listing SUID Binaries with find
sudo cat /home/jane/.bash_history | grep -B 2 -A 2 "python" # Correlating SUID Abuse in bash_history
md5sum /var/tmp/bash # Integrity Checking the Suspicious SUID Binary
sudo chkrootkit # chkrootkit for first-base rootkit checking
sudo rkhunter -c -sk # More in-depth rootkit analysis with malicious hash database
exiftool -all= filename.pdf # Metadata Stripping
ps -eFH # Viewing all processes
sudo lsof -p <pid> # Open file open processes by PID
pstree -p -s 775 # Parent and pid processes hierarchy
top -d 5 -c -u janice # Listing real-time processes related to a user
sudo ls -al /var/spool/cron/crontabs/ # 








