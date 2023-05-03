<#
    .SYNOPSIS
    FizzBuzz word game and interview screening instrument for programmers

    .DESCRIPTION
    Takes a integer and prints out every number except the one divided by 15 / 5 /3 and replaces them with FizzBuzz / Buzz / Fizz

    .PARAMETER Number
    Input is an integer for the game to count to that number
    Usually a number higher than 100

    .OUTPUTS
    Write-Host System.String

    .EXAMPLE
    PS> .\AS_ATL01_liwanpo.noah_FizzBuzz.ps1 110

    .EXAMPLE
    PS> .\AS_ATL01_liwanpo.noah_FizzBuzz.ps1 -Number 110

    .EXAMPLE
    PS> . .\AS_ATL01_liwanpo.noah_FizzBuzz.ps1 110

    .EXAMPLE
    PS> . .\AS_ATL01_liwanpo.noah_FizzBuzz.ps1 -Number 110

    .NOTES
    CreatDate:  02.05.2023
    Author:     Noah Li Wan Po
    ModifyDate: 02.05.2023
    ModifyUser: Noah Li Wan Po
#>
param(
    [Parameter(Mandatory)]
    [int]$number
)

for($count = 1;$count -le $number;$count++){

    if($count % 15 -eq 0){

        Write-Host "Fizz Buzz"

    }elseif($count % 5 -eq 0){

        Write-Host "Buzz"

    }elseif($count % 3 -eq 0){

        Write-Host "Fizz"

    }else{

        Write-Host $count

    }

}