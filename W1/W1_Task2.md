# Week 1 Task 2

## Command to allow running PowerShell scripts
More information about Executionpolicies: [about_Execution_Policies](https://learn.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_execution_policies?view=powershell-7.3)

```powershell
# Allows all scripts
Set-ExecutionPolicy -ExecutionPolicy Bypass

# Allows scripts written on the local computer but not from the internet or a network drive
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned
```

## Open online help 
The `-Online` Parameter will open the help document in the browser on https://learn.microsoft.com
```powershell
Get-Help Set-ExecutionPolicy -Online
```

## Write a script which will output:
The solution is in `Block1Arbeitsauftrag2.ps1`
```cli
10 ist eine gerade Zahl
1. Durchlauf der For-Schleife
2. Durchlauf der For-Schleife
3. Durchlauf der For-Schleife
4. Durchlauf der For-Schleife
5. Durchlauf der For-Schleife
6. Durchlauf der For-Schleife
7. Durchlauf der For-Schleife
8. Durchlauf der For-Schleife
9. Durchlauf der For-Schleife
10. Durchlauf der For-Schleife
1. Durchlauf der While-Schleife
2. Durchlauf der While-Schleife
3. Durchlauf der While-Schleife
4. Durchlauf der While-Schleife
5. Durchlauf der While-Schleife
6. Durchlauf der While-Schleife
7. Durchlauf der While-Schleife
8. Durchlauf der While-Schleife
9. Durchlauf der While-Schleife
10. Durchlauf der While-Schleife
```

