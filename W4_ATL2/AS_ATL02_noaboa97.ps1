<#
.SYNOPSIS
Big Filetypes in Download Folder 
.DESCRIPTION
Lists files over 100kb in the userhome of the user who runs the script. Grouped by the file type / extension. 
.EXAMPLE
.\AS_ATL02_noaboa97.ps1
.NOTES
CreatDate:  23.05.2023
Author:     Noah Li Wan Po
ModifyDate: 23.05.2023
ModifyUser: Noah Li Wan Po
#>
# Step 2.1    ~ = Userhome                    Step 2.2 Lenght in Bytes               Step 2.3 Extension = Dateityp
# Use -Recurse to include Subfolders                              
Get-ChildItem -Path "~\Downloads" -Recurse | Where-Object {$_.Length -gt 1000000} | Group-Object -Property Extension