Profile: MedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed20af-card-bundle
Title: "Medication Card Document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication Card Document"
* identifier
* identifier.system
* identifier.value
* type
* timestamp
* entry
* entry[Composition]
* entry[Composition].resource only CompositionMedicationCard
* entry[Composition].resource
* entry[Composition].resource ^short = "CHMED20AF Medication Card Composition"



Mapping: CHMED16A-for-MedicationCardDocument
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationCardDocument
Target: "http://emediplan.ch/chmed16a"
* identifier -> "Id"