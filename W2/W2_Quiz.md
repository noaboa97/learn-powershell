# Quiz

Read the following article: [about_PSProviders](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_providers?view=powershell-7.3)

  - What's the cmdlets to show the currently availbale PowerShell providers?
  - What are the standard providers?

```powershell
PS C:\Users\noaboa97\Github\Learn PowerShell> Get-PSProvider

Name                 Capabilities                                                           Drives
----                 ------------                                                           ------
Registry             ShouldProcess, Transactions                                            {HKLM, HKCU}
Alias                ShouldProcess                                                          {Alias}
Environment          ShouldProcess                                                          {Env}
FileSystem           Filter, ShouldProcess, Credentials                                     {C, Z}
Function             ShouldProcess                                                          {Function}
Variable             ShouldProcess                                                          {Variable}
```

## Name at least 2 providers which will be dynamically integrated at runtime:

- Certificate
- WSMAN

After running e.g.
```powershell
Get-Help Certificate
Get-Help WSMAN
```

The providers will show up in the list if you run ``Get-PSProvider` again.

```powershell
PS C:\Users\noah\Github\Learn PowerShell> Get-PSProvider

Name                 Capabilities                                                           Drives
----                 ------------                                                           ------
Registry             ShouldProcess, Transactions                                            {HKLM, HKCU}
Alias                ShouldProcess                                                          {Alias}
Environment          ShouldProcess                                                          {Env}
FileSystem           Filter, ShouldProcess, Credentials                                     {C, Z}
Function             ShouldProcess                                                          {Function}
Variable             ShouldProcess                                                          {Variable}
Certificate          ShouldProcess                                                          {Cert}
WSMan                Credentials                                                            {WSMan}
```