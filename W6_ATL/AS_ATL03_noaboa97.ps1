# this is where the XML sample file was saved:
$Path = "$HOME/Downloads/sample3.xml"

# 1.1 load it into an XML object:
$xml = New-Object -TypeName XML
$xml.Load($Path)

# 1.2 filter for the Element with name "Feuer" and show the property
($xml.Elements.Element | where {$_.Name -eq "Feuer"}).Eigenschaften

# 1.3 remove the element with the name "Das 5. Element"
$item = Select-XML -Xml $xml -XPath '//Element[Name="Das 5. Element"]'
$item.node.parentnode.RemoveChild($item.node)

