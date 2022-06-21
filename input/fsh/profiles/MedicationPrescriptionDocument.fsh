Profile: CHMEDMedicationPrescriptionDocument
Parent: CHEMEDDocumentMedicationPrescription
Id: chmed-pre-bundle
Title: "CHMED Medication Prescription Document"
Description: "Profile for the Bundle resource to represent the prescribed medication of a patient"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Prescription Document"

* entry[Composition].resource only CHMEDCompositionMedicationPrescription
* entry[Composition].resource ^short = "CHMED Medication Prescription Composition"
* entry[MedicationRequest].resource only CHMEDMedicationRequestPre
* entry[MedicationRequest].resource ^short = "CHMED Medication Prescription MedicationRequest"



Mapping: CHMED23A-for-CHMEDMedicationPrescriptionDocument
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDMedicationPrescriptionDocument
Target: "http://emediplan.ch/chmed23a"
* identifier -> "Medication.Id"