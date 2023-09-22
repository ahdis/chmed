Extension: CHMEDExtension
Id: chmed-extension
Title: "CHMED Extension"
Description: "CHMED extension can be used to include additional information."
* ^context[0].type = #element
* ^context[=].expression = "Composition"
* ^context[+].type = #element
* ^context[=].expression = "Composition.section"
* ^context[+].type = #element
* ^context[=].expression = "Patient"
* ^context[+].type = #element
* ^context[=].expression = "MedicationStatement"
* ^context[+].type = #element
* ^context[=].expression = "MedicationRequest"
* ^context[+].type = #element
* ^context[=].expression = "Extension"
* . ^short = "CHMED Extension"
* extension contains
    nm 1..1 and
    val 0..1 and 
    schema 1..1 and
    CHMEDExtension named exts 0..*
* extension[nm] ^short = "The name of the field"
* extension[nm].valueString 1..
* extension[val] ^short = "The value of the field"
* extension[val].valueString 1..
* extension[schema] ^short = "The schema can be any string and can be used to determine how to interpret the extension"
* extension[schema].valueString 1..
* extension[exts] ^short = "Nested extensions"



Mapping: eMediplan-for-CHMEDExtension
Id: eMediplan
Title: "eMediplan"
Source: CHMEDExtension
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Extension" 
* extension[nm].valueString -> "nm"
* extension[val].valueString -> "val"
* extension[schema].valueString -> "schema"
* extension[exts] -> "exts"
