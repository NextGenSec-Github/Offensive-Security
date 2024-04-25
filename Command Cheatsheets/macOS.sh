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
