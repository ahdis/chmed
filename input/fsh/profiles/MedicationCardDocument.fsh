Profile: MedicationCardDocument
Parent: CHEMEDDocumentMedicationCard
Id: chmed20af-card-bundle
Title: "Medication Card Document"
Description: "Profile for the Bundle resource to represent the entire, current medication of a patient"
* . ^short = "CHMED20AF Medication Card Document"
* identifier MS
* identifier.system MS
* identifier.value MS
* type MS
* timestamp MS
* entry MS
* entry[Composition] MS
* entry[Composition].resource only CompositionMedicationCard
* entry[Composition].resource MS
* entry[Composition].resource ^short = "CHMED20AF Medication Card Composition"



Mapping: CHMED16A-for-MedicationCardDocument
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationCardDocument
Target: "http://emediplan.ch/chmed16a"
* identifier -> "Id"