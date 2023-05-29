<#
.SYNOPSIS
Creates a new user and exports it to a csv 

.DESCRIPTION
Creates email, abbreviation and assignes a free phone number for a new user
Exports the details to a csv for import to another system

Email shema:
<firstname.lastname>@<department>.acme.com

Abbreviation shema:
<1. letter firstname><1. und 2. letter lastname>

.PARAMETER Path
Path of CSV that will be created of the user or existing one.
It will append if it already exists.

.PARAMETER Firstname
Firstname of the new user
Used for abbreviation and email 

.PARAMETER Lastname
Lastname of the new user
Used for abbreviation and email 

.PARAMETER Department
Department of the new user.
Default is "Buchhaltung"
Will be used in the email as subdomain of the company domain

.EXAMPLE
# Without splatting
.\AS_ATL02_noaboa97_NewUser.ps1 -Path "~\Downloads\Users.csv" -Firstname "Noah" -Lastname "Li Wan Po" -Department "IT"

.EXAMPLE
 # Splatting with array
$Params = ( "~\Downloads\Users.csv", "Noah", "Li Wan Po", "IT") 
.\AS_ATL02_noaboa97_NewUser.ps1 @Params

.EXAMPLE
 # Splatting with hashtable
$Params = @{
 "FirstName"="Noah"
 "LastName"="Li Wan Po"
 "Department"="IT"
 "Path"="~\Downloads\Users.csv"
}
.\AS_ATL02_noaboa97_NewUser.ps1 @Params

.NOTES
CreatDate:  28.05.2023
Author:     Noah Li Wan Po
ModifyDate: 29.05.2023
ModifyUser: Noah Li Wan Po
#>

param (
    [Parameter(Mandatory)]
    [string]
    $Path,
    [Parameter(Mandatory)]
    [string]
    $Firstname,
    [Parameter(Mandatory)]
    [string]
    $Lastname,
    [Parameter()]
    [string]
    $Department="Buchhaltung"
)

# 3.2 Function to create the email for the user
function New-Email($Firstname,$Lastname,$Department){
    return "$($firstname.tolower().replace(' ','')).$($lastname.tolower().replace(' ',''))@$($department.tolower().replace(' ','')).acme.com"
}

# 3.3 Function to create the abbreviation for the user
function New-Abbreviation($firstname,$lastname) {
    return ("$($firstname[0])$($lastname[0])$($lastname[1])").ToLower()
}

# 3.4 Function to randomly select a phonenumber from a list with a range
if($Phonenumbers){
    [System.Collections.ArrayList]$Phonenumbers = @(1201..1299)
}
function Select-FreePhonenumber([System.Collections.ArrayList]$list){
    $number = $list | Get-Random
    $list.Remove($number)
    return $number
}

# 3.5 Creates a CSV at the save location / path
function Export-User($UserObject,$Path){

    $UserObject | Export-Csv -Path $Path -NoTypeInformation -Append

}

$User = [PSCustomObject]@{
    Vorname   = $Firstname
    Nachname  = $Lastname
    Abteilung = $Department
    Email     = New-Email $Firstname $Lastname $Department
    Kuerzel   = New-Abbreviation $Firstname $Lastname
    Telefon   = Select-FreePhonenumber $Phonenumbers
}

Export-User $User $Path







