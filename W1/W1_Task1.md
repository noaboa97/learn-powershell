# Week 1 Task 1

## Command to update the PowerShell help files
```powershell
Update-Help
```

## Command to show the eventlog 
```powershell
# List all available lognames
Get-Eventlog -List
# Output the system logs
Get-Eventlog -Logname System
```

## Command to show the help file for a command

With the parameter `-Full` the whole help file is displayed
Usually it will only output 

Name

Syntax

Description

Relevant Links 

Notes
```powershell
Get-help get-eventlog
Get-help get-eventlog -Full
```

## Output information about the PowerShell
```powershell
PS C:\Users\noaboa97> $PSVersionTable
----                           -----
PSVersion                      5.1.22621.963
PSEdition                      Desktop
PSCompatibleVersions           {1.0, 2.0, 3.0, 4.0...}
BuildVersion                   10.0.22621.963
CLRVersion                     4.0.30319.42000
WSManStackVersion              3.0
PSRemotingProtocolVersion      2.3
SerializationVersion           1.1.0.1
```

