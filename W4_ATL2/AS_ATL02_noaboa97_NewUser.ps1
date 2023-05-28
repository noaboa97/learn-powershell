<#
.SYNOPSIS
Creates a new user and exports it to a csv 
.DESCRIPTION
Creates email, abbreviation and assignes a free phone number for a new user
Exports the details to a csv for import to another system

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
Will be used in the email as subdomain of the company domain

.EXAMPLE
Just run it in the PowerShell 
.EXAMPLE
.\<Filename>.ps1

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
if($Phonenumbers){
    [System.Collections.ArrayList]$Phonenumbers = @(1201..1299)
}

function New-Email($Firstname,$Lastname,$Department){
    return "$($firstname.tolower().replace(' ','')).$($lastname.tolower().replace(' ',''))@$($department.tolower().replace(' ','')).acme.com"
}

function New-Abbreviation($firstname,$lastname) {
    return ("$($firstname[0])$($lastname[0])$($lastname[1])").ToLower()
}

function Select-FreePhonenumber([System.Collections.ArrayList]$list){
    $number = $list | Get-Random
    $list.Remove($number)
    return $number
}

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







