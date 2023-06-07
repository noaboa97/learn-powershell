$Path = "$HOME/Downloads/sample3.xml"

New-Item $Path -Force 

$XmlWriter = New-Object System.XMl.XmlTextWriter($Path,[System.Text.Encoding]::UTF8)

$XmlWriter.Formatting = 'Indented'
$XmlWriter.Indentation = 1
$XmlWriter.IndentChar = "`t"

$XmlWriter.WriteStartDocument()

# Comment
$XmlWriter.WriteComment('Alle Elemente')

# Übergeordnetes Element
$XmlWriter.WriteStartElement("Elements")
$XmlWriter.WriteAttributeString("Aktiv", $true)

# Unterelement
$XmlWriter.WriteStartElement("Element")
$XmlWriter.WriteAttributeString("Eigenschaften","nass")
$XmlWriter.WriteElementString("Name","Wasser")
$XmlWriter.WriteEndElement()

$XmlWriter.WriteStartElement("Element")
$XmlWriter.WriteAttributeString("Eigenschaften","fest")
$XmlWriter.WriteElementString("Name","Erde")
$XmlWriter.WriteEndElement()

$XmlWriter.WriteStartElement("Element")
$XmlWriter.WriteAttributeString("Eigenschaften","flüchtig")
$XmlWriter.WriteElementString("Name","Luft")
$XmlWriter.WriteEndElement()

$XmlWriter.WriteStartElement("Element")
$XmlWriter.WriteAttributeString("Eigenschaften","heiss")
$XmlWriter.WriteElementString("Name","Feuer")
$XmlWriter.WriteEndElement()

$XmlWriter.WriteStartElement("Element")
$XmlWriter.WriteAttributeString("Eigenschaften","nicht existens")
$XmlWriter.WriteElementString("Name","Das 5. Element")
$XmlWriter.WriteEndElement()

$XmlWriter.WriteEndElement()


$XmlWriter.WriteEndDocument()
$Xmlwriter.Flush()
$Xmlwriter.Close()


