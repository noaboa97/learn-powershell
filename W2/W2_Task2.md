# Week 2 Task 2
1. Find all commandlets with the noun "verb" in it. Which command was used?
```powershell
PS C:\Users\noaboa97\Github\Learn PowerShell> get-command *-verb*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Get-Verb
Cmdlet          Write-Verbose                                      3.1.0.0    Microsoft.PowerShell.Utility
```

2. How many verbs are there? Whats the command to show the number of verbs?

```powershell
(Get-Verb).count  
98

# Or

Get-Verb | Measure-Object

Count    : 98
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```