# Most important PowerShell Commands (Cmdlets)
```powershell
# Get the help page within the shell
Get-Help 

# Outputs all the properties of an object
Select-object *

# Show the type of the object
$test = Get-member
$test.gettype()

# List information about the available commands
Get-Command
```

## Get-Help
Open Online help in Browser
```powershell
Get-help get-help -Online
```