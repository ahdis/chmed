Profile: CHMEDMedication
Parent: CHEMEDMedication
Id: chmed-medication
Title: "CHMED Medication"
Description: "Profile for the Medication resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication"




Mapping: eMediplan-for-CHMEDMedication
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedication
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* -> "Medicament"
* code -> "Id"
* code.coding.system -> "IdType"
* code.coding[GTIN] -> "Id with IdType 2 (GTIN)"
* code.text -> "Id with IdType 1 (None)"

