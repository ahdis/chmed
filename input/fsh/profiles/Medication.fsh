Profile: Medication
Parent: CHEMEDMedication
Id: chmed20af-medication
Title: "Medication"
Description: "Profile for the Medication resource"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication"
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


Mapping: CHMED16A-for-Medication
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: Medication
Target: "http://emediplan.ch/chmed16a"
* code.coding[GTIN] -> "Medicament.Id with Medicament.IdType 2 (GTIN)"