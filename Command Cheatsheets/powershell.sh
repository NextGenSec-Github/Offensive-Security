# Powershell Commands

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








