Profile: CHMEDMedicationPrescriptionDocument
Parent: CHEMEDDocumentMedicationPrescription
Id: chmed-pre-bundle
Title: "CHMED Medication Prescription Document"
Description: "Profile for the Bundle resource to represent the prescribed medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Prescription Document"
* identifier
* identifier.system
* identifier.value
* type
* timestamp
* entry
* entry[Composition]
* entry[Composition].resource only CHMEDCompositionMedicationPrescription
* entry[Composition].resource
* entry[Composition].resource ^short = "CHMED Medication Prescription Composition"



Mapping: CHMED21A-for-CHMEDMedicationPrescriptionDocument
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDMedicationPrescriptionDocument
Target: "http://emediplan.ch/chmed21a"
* identifier -> "Id"