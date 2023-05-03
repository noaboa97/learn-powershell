param(
    [Parameter(Mandatory)]
    [ValidateSet("bar","buzz")]
    [string]$foo
    )

Write-host "Eingabe war $foo"

Exit 1