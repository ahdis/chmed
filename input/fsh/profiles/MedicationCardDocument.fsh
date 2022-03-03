Profile: CHMEDMedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed-card-bundle
Title: "CHMED Medication Card Document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Card Document"
* identifier
* identifier.system
* identifier.value
* type
* timestamp
* entry
* entry[Composition]
* entry[Composition].resource only CHMEDCompositionMedicationCard
* entry[Composition].resource
* entry[Composition].resource ^short = "CHMED Medication Card Composition"



Mapping: CHMED21A-for-CHMEDMedicationCardDocument
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDMedicationCardDocument
Target: "http://emediplan.ch/chmed21a"
* identifier -> "Id"