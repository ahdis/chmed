Profile: Medication
Parent: CHEMEDMedication
Id: chmed20af-medication
Title: "Medication"
Description: "Profile for the Medication resource"
* . ^short = "CHMED20AF Medication"
* code MS
* code.coding MS
* code.coding[GTIN] MS
* code.coding[GTIN].system MS
* code.coding[GTIN].code MS
* code.coding[GTIN].display MS
* code.text MS
* form MS
* form.coding MS
* form.coding.system MS
* form.coding.code MS
* form.coding.display MS
* amount MS
* ingredient MS
* ingredient.itemCodeableConcept MS
* ingredient.itemCodeableConcept.coding MS
* ingredient.itemCodeableConcept.text MS
* ingredient.strength MS


Mapping: CHMED16A-for-Medication
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: Medication
Target: "http://emediplan.ch/chmed16a"
* code.coding[GTIN] -> "Medicament.Id with Medicament.IdType 2 (GTIN)"