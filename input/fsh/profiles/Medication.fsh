Profile: CHMEDMedication
Parent: CHEMEDMedication
Id: chmed-medication
Title: "CHMED Medication"
Description: "Profile for the Medication resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication"




Mapping: CHMED23A-for-CHMEDMedication
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedication
Target: "http://emediplan.ch/chmed23a"
* -> "Medicament"
* code -> "Id"
* code.coding.system -> "IdType"
* code.coding[GTIN] -> "Id with IdType 2 (GTIN)"
* code.text -> "Id with IdType 1 (None)"


Mapping: CHMED16A-for-CHMEDMedication
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDMedication
Target: "http://emediplan.ch/chmed16a"
* -> "Medicament"
* code -> "Id"
* code.coding.system -> "IdType"
* code.coding[GTIN] -> "Id with IdType 2 (GTIN)"
* code.text -> "Id with IdType 1 (None)"