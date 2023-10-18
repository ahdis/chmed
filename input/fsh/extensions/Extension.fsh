Extension: CHMEDExtension
Id: chmed-extension
Title: "CHMED Extension"
Description: "CHMED extension can be used to include additional information. NOTE: The extension can include itself as a nested extension (see linked example below)."
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
* ^context[+].type = #extension
* ^context[=].expression = Canonical(CHMEDExtension)
* . ^short = "CHMED Extension"
* extension contains
    nm 1..1 and
    val 0..1 and
    schema 1..1 and
    CHMEDExtension named exts 0..*
* extension[nm] ^short = "The name of the field"
* extension[nm].value[x] only string
* extension[nm].value[x] 1..
* extension[val] ^short = "The value of the field"
* extension[val].value[x] only string
* extension[val].value[x] 1..
* extension[schema] ^short = "The schema can be any string and can be used to determine how to interpret the extension"
* extension[schema].value[x] only string
* extension[schema].value[x] 1..
* extension[exts] ^short = "The list of nested extensions"



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
