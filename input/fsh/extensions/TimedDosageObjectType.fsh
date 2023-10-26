Extension: CHMEDTimedDosageObjectType
Id: chmed-timed-dosage-object-type
Title: "CHMED Timed Dosage Object Type"
Description: "CHMED extension for the type of the timed dosage object defined in 'eMedication Plan ChMed Posology'"
* ^context[0].type = #element
* ^context[=].expression = "Dosage"
* . ^short = "CHMED Timed Dosage Object Type"
* valueCoding from TimedDosageObjectType (required)
* valueCoding 1..
