Extension: CHMEDExtensionTimedDosageObjectType
Id: chmed-timed-dosage-object-type
Title: "CHMED Timed Dosage Object Type"
Description: "Extension for the type of the timed dosage object defined in 'eMedication Plan CHMED Posology'"

* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"

* ^context[0].type = #element
* ^context[=].expression = "Dosage"

* . ^short = "CHMED Timed Dosage Object Type"

* valueCoding from TimedDosageObjectType (required)
* valueCoding 1..

