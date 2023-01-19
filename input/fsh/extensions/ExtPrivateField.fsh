Extension: CHMEDExtensionPrivateField
Id: chmed-private-field
Title: "CHMED Private Field"
Description: "Extension for private fields defined in 'eMedication Plan CHMED'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[+].type = #element
* ^context[=].expression = "Composition"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"

* . ^short = "CHMED Private Field"

* extension contains
    name 1..1 and
    value 1..1

* extension[name] ^short = "Name of the private field"
* extension[name].valueString 1..

* extension[value] ^short = "Value of the private field"
* extension[value].valueString 1..


Mapping: CHMED23A-for-CHMEDExtensionPrivateField
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDExtensionPrivateField
Target: "http://emediplan.ch/chmed23a"
* -> "Private Field" 
* extension[name] -> "Nm"
* extension[value] -> "Val"


Mapping: CHMED16A-for-CHMEDExtensionPrivateField
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDExtensionPrivateField
Target: "http://emediplan.ch/chmed16a"
* -> "Private Field" 
* extension[name] -> "Nm"
* extension[value] -> "Val"