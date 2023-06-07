
# 2.1
## URL of the API with the filter parameters
$Request = "https://newsapi.org/v2/top-headlines?country=ch"

## HTTP Header with Authorization API key
$header = @{
    Authorization = "3fdfb0d729d444ff98a4e3c6385b5b6a"
}

## Call of the API which directly is converted from JSON
$Response = Invoke-RestMethod $Request -Headers $header

# 2.2 
## Selecting the proper properties and exporting as CSV to the download folder
$Response.articles | select-object title, url -ExpandProperty source | select-object @{name="sourcename"; expr={$_.Name}}, title, url | export-csv "$HOME/Downloads/top-headlines.csv" -Encoding utf8BOM
