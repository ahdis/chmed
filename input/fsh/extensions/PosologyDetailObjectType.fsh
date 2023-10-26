Extension: CHMEDPosologyDetailObjectType
Id: chmed-posology-detail-object-type
Title: "CHMED Posology Detail Object Type"
Description: "CHMED extension for the type of the posology detail objects defined in 'eMedication Plan ChMed Posology'"
* ^context[0].type = #element
* ^context[=].expression = "Dosage"
* . ^short = "CHMED Posology Detail Object Type"
* valueCoding from PosologyDetailObjectType (required)
* valueCoding 1..
