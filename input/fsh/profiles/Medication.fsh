Profile: CHMEDMedication
Parent: CHEMEDMedication
Id: chmed-medication
Title: "CHMED Medication"
Description: "Profile for the Medication resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication"




Mapping: CHMED21A-for-CHMEDMedication
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDMedication
Target: "http://emediplan.ch/chmed21a"
* -> "Medicament"
* code.coding[GTIN] -> "Id with IdType 2 (GTIN)"
* code.text -> "Id with IdType 1 (None)"