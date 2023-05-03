# Week 2 Task 1
Find all Items with the noun `Item`. 
1. Which command was used?

```powershell
 PS C:\Users\noaboa97\Github\Learn PowerShell> Get-Command *Item*

CommandType     Name                                               Version    Source
-----------     ----                                               -------    ------
Function        Get-DAEntryPointTableItem                          1.0.0.0    DirectAccessClientComponents
Function        Get-TestDriveItem                                  3.4.0      Pester
Function        New-DAEntryPointTableItem                          1.0.0.0    DirectAccessClientComponents
Function        Remove-DAEntryPointTableItem                       1.0.0.0    DirectAccessClientComponents
Function        Rename-DAEntryPointTableItem                       1.0.0.0    DirectAccessClientComponents
Function        Reset-DAEntryPointTableItem                        1.0.0.0    DirectAccessClientComponents
Function        Set-DAEntryPointTableItem                          1.0.0.0    DirectAccessClientComponents
Cmdlet          Clear-Item                                         3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Clear-ItemProperty                                 3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Copy-Item                                          3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Copy-ItemProperty                                  3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ChildItem                                      3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ControlPanelItem                               3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-Item                                           3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ItemProperty                                   3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Get-ItemPropertyValue                              3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Invoke-Item                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Move-Item                                          3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Move-ItemProperty                                  3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          New-Item                                           3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          New-ItemProperty                                   3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-Item                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Remove-ItemProperty                                3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Rename-Item                                        3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Rename-ItemProperty                                3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-Item                                           3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Set-ItemProperty                                   3.1.0.0    Microsoft.PowerShell.Management
Cmdlet          Show-ControlPanelItem                              3.1.0.0    Microsoft.PowerShell.Management
Application     UevTemplateConfigItemGenerator.exe                 0.0.0.0    C:\Windows\system32\UevTemplateConfigItemGenerator.exe
```

2. Choose 3 cmdlets above an describe it in your own words

- `Get-ChildItem` is used to retrieve a list of child items (files and directories) in a specified directory. It is similar to the dir command in the Windows command prompt or the ls command in Linux/Unix.
  Ruft die untergeordneten Items auf

- `Get-Item` is used to retrieve an item (file or directory) at a specified location. It is similar to the `type` command in the Windows command prompt or the `cat` command in Linux/Unix.
  
- `Get-ItemProperty` is a command in PowerShell that is used to retrieve the properties of an item (file or registry key) at a specified location. It is similar to the `attrib` command in the Windows command prompt.