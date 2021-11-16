Profile: MedicationPrescriptionDocument
Parent: CHEMEDDocumentMedicationPrescription
Id: chmed20af-pre-bundle
Title: "Medication Prescription Document"
Description: "Profile for the Bundle resource to represent the prescribed medication of a patient"
* . ^short = "CHMED20AF Medication Prescription Document"
* identifier MS
* identifier.system MS
* identifier.value MS
* type MS
* timestamp MS
* entry MS
* entry[Composition] MS
* entry[Composition].resource only CompositionMedicationPrescription
* entry[Composition].resource MS
* entry[Composition].resource ^short = "CHMED20AF Medication Prescription Composition"



Mapping: CHMED16A-for-MedicationPrescriptionDocument
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationPrescriptionDocument
Target: "http://emediplan.ch/chmed16a"
* identifier -> "Id"