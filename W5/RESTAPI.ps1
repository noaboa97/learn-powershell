# URL der Api
$Request = 'https://reqres.in/api/users'
# Call der Api (standardmässig: GET-Request)
$Response = Invoke-WebRequest $Request
$Response = Invoke-RestMethod $Request

# Wandel in Json
$Json = ConvertFrom-Json $Response
# Array auslesen
$Users = $Json | Select -ExpandProperty data