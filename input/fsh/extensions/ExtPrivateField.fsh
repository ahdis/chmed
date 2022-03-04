Extension: CHMEDExtensionPrivateField
Id: chmed-private-field
Title: "CHMED Private Field"
Description: "Extension for private fields defined in 'eMedication Plan CHMED'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[0].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "Composition"

* . ^short = "CHMED Private Field"

* extension contains
    name 1..1 and
    value 1..1

* extension[name] ^short = "Name of the private field"
* extension[name].valueString 1..

* extension[value] ^short = "Value of the private field"
* extension[value].valueString 1..


Mapping: CHMED21A-for-CHMEDExtensionPrivateField
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDExtensionPrivateField
Target: "http://emediplan.ch/chmed21a"
* -> "PrivateField" 
* extension[name] -> "Nm"
* extension[value] -> "Val"