# Step 3.1
Get-ChildItem -Path "HKLM:\SOFTWARE"

# Step 3.2
New-Item -Path "HKLM:\SOFTWARE\ACME Inc"

# Step 3.3
Set-Location -Path "HKLM:\SOFTWARE\ACME Inc"

# Step 3.4
New-PSDrive -Name "ACME" -PSProvider "FileSystem" -Root "C:\ACME"

# Step 3.5
Set-Location -Path "ACME:"

# Step 3.6
New-ItemProperty -Path "." -Name "Zeichenkette1" -Value "Hallo Welt" -PropertyType "String"

# Step 3.7
Copy-ItemProperty -Path "." -Name "Zeichenkette1" -Destination "." -DestinationName "Zeichenkette"

# Step 3.8
Rename-ItemProperty -Path "." -Name "Zeichenkette" -NewName "Zeichenkette2"

# Step 3.9
Set-ItemProperty -Path "." -Name "Zeichenkette2" -Value "PowerShell ist toll."

# Step 3.10
Get-Item -Path "." | Select-Object -ExpandProperty Property

# Step 3.11
Remove-ItemProperty -Path "." -Name *

# Step 3.12
Get-PSDrive

# Step 3.13
Remove-PSDrive -Name "ACME"

# Step 3.14
<# One could argue that step 3.13 could be skipped because it's always a good practice 
to clean up after your code and remove any resources that are no longer needed. 
However, if the script is only run once and there are no other processes accessing
 the ACME drive, then the system will automatically remove the drive when 
 the PowerShell session is closed. So technically, step 3.13 is not strictly 
 necessary, but it's still a good habit to include it.#>