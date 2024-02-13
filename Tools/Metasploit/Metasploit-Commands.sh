# | METASPLOIT COMMANDS |

# Metasploit Commands Cheatsheet

# Basic Commands
# Start the Metasploit Framework console
msfconsole

# Update Metasploit to the latest version
msfupdate

# Database management commands
# Start the PostgreSQL database service
msfdb start
# Stop the PostgreSQL database service
msfdb stop
# Rebuild the Metasploit Framework database
msfdb rebuild
# Reset the Metasploit database to its initial state
msfdb reset

# Generate payloads
msfvenom

# Start the Metasploit RPC daemon
msfrpcd

# Module Management
# Select a module by its path
use
# Search for modules
search
# Display information about the selected module
info
# Show or set options for the selected module
options
# Go back to the previous menu
back
# Reload all modules from the module path
reload_all
# Save the current session
save

# Exploit Commands
# List all available exploit modules
show exploits
# Select an exploit module
use exploit/[exploit_name]
# Show available targets for the selected exploit
show targets
# Set the payload for the exploit
set PAYLOAD [payload_name]
# Set the target IP address
set RHOSTS [target_ip]
# Set the local IP address
set LHOST [local_ip]
# Execute the selected exploit module
exploit

# Payload Commands
# List all available payloads
show payloads
# Select a payload
use payload/[payload_name]
# Set the local IP address
set LHOST [local_ip]
# Set the local port
set LPORT [local_port]
# Generate the payload
generate
# Execute the payload
run

# Post-Exploitation Commands
# List all active sessions
sessions -l
# Interact with a specific session
sessions -i [session_id]
# Put the current session in the background
background
# Display system information for the target
sysinfo
# Gain a shell session on the target
shell
# Upload a file to the target system
upload
# Download a file from the target system
download
# Dump password hashes from the target system
hashdump

# Reporting and Miscellaneous
# Import data into the Metasploit database
db_import
# Export data from the Metasploit database
db_export
# List all credentials stored in the database
creds
# Import Nmap scan results into the Metasploit database
db_nmap
# Manage workspaces for organizing data
workspace
