# -------------
# Linux PrivEsc
# -------------

# OS Info
(cat /proc/version || uname -a ) 2>/dev/null 
lsb_release -a 2>/dev/null
cat /etc/os-release 2>/dev/null

echo $PATH # Check if you have any write permission on folders in your path
(env || set) 2>/dev/null # Possible sensitive info in ENV variables

# Checking for Kernel Exploits
cat /proc/version
uname -a
searchsploit "Linux Kernel"

searchsploit sudo # Checking for vulnerable sudo
sudo -V | grep "Sudo ver" | grep "1\.[01234567]\.[0-9]\+\|1\.8\.1[0-9]\*\|1\.8\.2[01234567]"
dmesg 2>/dev/null | grep "signature" # Dmesg sig verification failed
date 2>/dev/null # Date
(df -h || lsblk) # System stats
lscpu # CPU info
lpstat -a 2>/dev/null # Printers info

# Enumerating Possible Defenses
# AppArmor
if [ `which aa-status 2>/dev/null` ]; then
    aa-status
  elif [ `which apparmor_status 2>/dev/null` ]; then
    apparmor_status
  elif [ `ls -d /etc/apparmor* 2>/dev/null` ]; then
    ls -d /etc/apparmor*
  else
    echo "Not found AppArmor"
fi

((uname -r | grep "\-grsec" >/dev/null 2>&1 || grep "grsecurity" /etc/sysctl.conf >/dev/null 2>&1) && echo "Yes" || echo "Not found grsecurity") # Grsecurity
(which paxctl-ng paxctl >/dev/null 2>&1 && echo "Yes" || echo "Not found PaX") # Pax
(grep "exec-shield" /etc/sysctl.conf || echo "Not found Execshield") # Execshield
sestatus 2>/dev/null || echo "Not found sestatus") # SELinux
cat /proc/sys/kernel/randomize_va_space 2>/dev/null # ASLR: If 0, not enabled

# Drives
ls /dev 2>/dev/null | grep -i "sd"
cat /etc/fstab 2>/dev/null | grep -v "^#" | grep -Pv "\W*\#" 2>/dev/null
#Check if credentials in fstab
grep -E "(user|username|login|pass|password|pw|credentials)[=:]" /etc/fstab /etc/mtab 2>/dev/null

# Enumerate useful binaries
which nmap aws nc ncat netcat nc.traditional wget curl ping gcc g++ make gdb base64 socat python python2 python3 python2.7 python2.6 python3.6 python3.7 perl php ruby xterm doas sudo fetch docker lxc ctr runc rkt kubectl 2>/dev/null
# Enumerate for compiler. May be useful for compiling kernel exploits
(dpkg --list 2>/dev/null | grep "compiler" | grep -v "decompiler\|lib" 2>/dev/null || yum list installed 'gcc*' 2>/dev/null | grep gcc 2>/dev/null; which gcc g++ 2>/dev/null || locate -r "/gcc[0-9\.-]\+$" 2>/dev/null | grep -v "/doc/")

# Process
ps aux
ps -ef
top -n 1



# Random
smbclient //IP/anonymous # Connecting to a SMB Share
smbget -R smb://IP/anonymous # Recursively download the SMB share
curl -I localhost




