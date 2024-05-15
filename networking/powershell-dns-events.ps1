# Get DNS events with details
Get-WinEvent -FilterHashtable @{logname="Microsoft-Windows-Sysmon/Operational";id=22} | ForEach-Object {$_.message}

# Get all DNS queries
Get-WinEvent -FilterHashtable @{logname="Microsoft-Windows-Sysmon/Operational";id=22} | ForEach-Object {$_.message -split "`r`n"} | Select-String QueryName | %{$_.line.split()[-1]}

