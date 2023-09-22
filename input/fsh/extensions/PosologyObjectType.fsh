Extension: CHMEDPosologyObjectType
Id: chmed-posology-object-type
Title: "CHMED Posology Object Type"
Description: "CHMED extension for the type of the posology objects defined in 'eMedication Plan CHMED Posology'"
* ^context[0].type = #element
* ^context[=].expression = "Dosage"
* . ^short = "CHMED Posology Object Type"
* valueCoding from PosologyObjectType (required)
* valueCoding 1..

// TODO Mapping
