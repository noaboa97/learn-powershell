param(
    [int]$number
)

if($number % 2 -eq 0){

    Write-Host "$number ist eine gerade Zahl"

}else{

    Write-Host "$number ist eine ungerade Zahl"

}

for($count = 1;$count -le $number;$count++){

    Write-Host "$count. Durchlauf der For-Schleife"

}

$count = 0
while($count -lt $number){
    $count++
    Write-Host "$count. Durchlauf der While-Schleife"


}
