# ============
# Get-WinEvent
# ============

# FUNDAMENTALS

# List All Providers
Get-WinEvent -ListProvider *

# FILTERING LOGS

# Retrieves Windows events from the "Application" log generated by the ".NET Runtime" provider.
Get-WinEvent -FilterHashtable @{LogName='Application'; ProviderName='.NET Runtime'}
