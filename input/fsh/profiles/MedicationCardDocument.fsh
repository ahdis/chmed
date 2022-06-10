Profile: CHMEDMedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed-card-bundle
Title: "CHMED Medication Card Document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Card Document"

* entry[Composition].resource only CHMEDCompositionMedicationCard
* entry[Composition].resource ^short = "CHMED Medication Card Composition"



Mapping: CHMED23A-for-CHMEDMedicationCardDocument
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationCardDocument
Target: "http://emediplan.ch/chmed23a"
* identifier -> "Medication.Id"