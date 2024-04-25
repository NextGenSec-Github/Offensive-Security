# SYSTEM INFO

date # Display the system date and time
date -s "2024-04-25 12:00:00" # Set the system date and time
cal # Displays calendar
uptime # Show time since starting up 
w # List users
whomami # Current user
finger username # Info about user
uname -a # sysinfo
sysctl -a | grep machdep.cpu # Display cpu related info
top -l 1 | head -10 | grep PhysMem # Physical memory usage
vm_stat # Virtual memory stats
df # Disk usage

launchctl list # List services
sysctl -a # List kernel configuration
diskutil list # List connnected hard drives
nettop # Monitor network usage

system_profiler SPSoftwareDataType # System info
system_profiler SPPrinterDataType # Printer
system_profiler SPApplicationsDataType # Installed apps
system_profiler SPFrameworksDataType # Installed frameworks
system_profiler SPDeveloperToolsDataType # Developer tools info
system_profiler SPStartupItemDataType # Startup Items
system_profiler SPNetworkDataType # Network Capabilities
system_profiler SPFirewallDataType # Firewall Status
system_profiler SPNetworkLocationDataType # Known Network
system_profiler SPBluetoothDataType # Bluetooth Info
system_profiler SPEthernetDataType # Ethernet Info
system_profiler SPUSBDataType # USB info
system_profiler SPAirPortDataType # Airport Info

# Searches
mdfind password # Show all the files that contains the word password
mfind -name password # List all the files containing the word password in the name

#Open any app
open -a <Application Name> --hide # Open app hidden
open some.doc -a TextEdit # Open a file in one application

#Computer doesn't go to sleep
caffeinate &

#Screenshot
# This will ask for permission to the user
screencapture -x /tmp/ss.jpg #Save screenshot in that file

#Get clipboard info
pbpaste

#system_profiler
system_profiler --help #This command without arguments take lot of memory and time.
system_profiler -listDataTypes
system_profiler SPSoftwareDataType SPNetworkDataType

#Network
arp -i en0 -l -a #Print the macOS device's ARP table
lsof -i -P -n | grep LISTEN
smbutil statshares -a #View smb shares mounted to the hard drive

#networksetup - set or view network options: Proxies, FW options and more
networksetup -listallnetworkservices #List network services
networksetup -listallhardwareports #Hardware ports
networksetup -getinfo Wi-Fi #Wi-Fi info
networksetup -getautoproxyurl Wi-Fi #Get proxy URL for Wifi
networksetup -getwebproxy Wi-Fi #Wifi Web proxy
networksetup -getftpproxy Wi-Fi #Wifi ftp proxy

#Brew
brew list #List installed
brew search <text> #Search package
brew info <formula>
brew install <formula>
brew uninstall <formula>
brew cleanup #Remove older versions of installed formulae.
brew cleanup <formula> #Remove older versions of specified formula.

# High privileges actions
sudo purge #purge RAM
#Sharing preferences
sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist (enable ssh)
sudo launchctl unload /System/Library/LaunchDaemons/ssh.plist (disable ssh)
#Start apache
sudo apachectl (start|status|restart|stop)
 ##Web folder: /Library/WebServer/Documents/
#Remove DNS cache
dscacheutil -flushcache
sudo killall -HUP mDNSResponder


# SECURITY
log show # Show logs
log show --predicate 'eventMessage contains "error"' --last 1h # Search for error logs within last hour

# Calculating File Hashes with md5, sha1, sha256:
md5 /path/to/file
sha1 /path/to/file
sha256 /path/to/file

sudo fs_usage # Verifying File System Integrity with fs_usage
