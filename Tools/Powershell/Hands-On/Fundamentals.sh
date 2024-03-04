# =======================
# Powershell Fundamnetals
# =======================

Get-Help Get-Process  # Get help for the Get-Process cmdlet

Get-Command  # Get all available commands

Get-Process  # Get information about running processes

Get-Service  # Get information about installed services

Get-ChildItem C:\Windows  # Get items in the C:\Windows directory

Get-Process | Select-Object Name, CPU  # Select the Name and CPU properties of processes

Get-Process | Where-Object { $_.CPU -gt 10 }  # Filter processes with CPU usage greater than 10

Get-Process | ForEach-Object { Write-Host "Process: $($_.Name)" }  # Display the name of each process

New-Item -ItemType Directory -Path C:\Temp\NewFolder  # Create a new directory named "NewFolder" in C:\Temp

Set-Location C:\Windows  # Change the current directory to C:\Windows

Clear-Host  # Clear the PowerShell console window

Write-Host "Hello, World!"  # Display "Hello, World!" in the console

$name = Read-Host "Enter your name"  # Prompt the user to enter their name and store it in the $name variable

Get-Process | Out-File -FilePath C:\Temp\Processes.txt  # Save information about processes to a file

Invoke-Command -ComputerName Server01 -ScriptBlock { Get-Service }  # Retrieve services on a remote computer

$command = "Get-Process"
Invoke-Expression $command  # Execute the command stored in the $command variable

Test-Connection google.com  # Test connectivity to google.com

Start-Process notepad.exe  # Start the Notepad application

Get-Process -Name notepad | Stop-Process  # Stop all instances of the Notepad process











