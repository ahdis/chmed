Profile: MedicationPrescriptionDocument
Parent: CHEMEDDocumentMedicationPrescription
Id: chmed20af-pre-bundle
Title: "Medication Prescription Document"
Description: "Profile for the Bundle resource to represent the prescribed medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication Prescription Document"
* identifier
* identifier.system
* identifier.value
* type
* timestamp
* entry
* entry[Composition]
* entry[Composition].resource only CompositionMedicationPrescription
* entry[Composition].resource
* entry[Composition].resource ^short = "CHMED20AF Medication Prescription Composition"



Mapping: CHMED16A-for-MedicationPrescriptionDocument
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: MedicationPrescriptionDocument
Target: "http://emediplan.ch/chmed16a"
* identifier -> "Id"