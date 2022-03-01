Extension: CHMEDExtensionPosologyObjectType
Id: chmed-posology-object-type
Title: "CHMED Posology Object Type"
Description: "Extension for the type of the posology objects defined in 'eMedication Plan CHMED Posology'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[0].type = #element
* ^context[=].expression = "Dosage"

* . ^short = "CHMED Posology Object Type"

* valueCoding from PosologyObjectType (required)
* valueCoding 1..

