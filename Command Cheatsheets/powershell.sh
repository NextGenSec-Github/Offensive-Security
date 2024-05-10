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

















