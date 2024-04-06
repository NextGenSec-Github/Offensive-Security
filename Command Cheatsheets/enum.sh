# NMAP Commands

# Basic Scanning
nmap <target-ip>

# ===================
# Enum4Linux Commands
# ===================

# This command will perform basic enumeration on the target system and display user, group, and share information.
enum4linux <TARGET_IP>

# This command will enumerate usernames on the target system.
enum4linux -U <TARGET_IP>

# Hydra Command for Brute Forcing

# SMB Brute Force
hydra -l <USERNAME> -P <PASSWORD_FILE> smb://<TARGET_IP>

# SSH Brute Force
hydra -l <USERNAME> -P <PASSWORD_FILE> ssh://<TARGET_IP>



