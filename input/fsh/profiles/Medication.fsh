Profile: CHMEDMedication
Parent: CHEMEDMedication
Id: chmed-medication
Title: "CHMED Medication"
Description: "Profile for the Medication resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication"
* code
* code.coding
* code.coding[GTIN]
* code.coding[GTIN].system
* code.coding[GTIN].code
* code.coding[GTIN].display
* code.text
* form
* form.coding
* form.coding.system
* form.coding.code
* form.coding.display
* amount
* ingredient
* ingredient.itemCodeableConcept
* ingredient.itemCodeableConcept.coding
* ingredient.itemCodeableConcept.text
* ingredient.strength


Mapping: CHMED21A-for-CHMEDMedication
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDMedication
Target: "http://emediplan.ch/chmed21a"
* code.coding[GTIN] -> "Medicament.Id with Medicament.IdType 2 (GTIN)"