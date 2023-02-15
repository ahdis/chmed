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
* entry[MedicationRequest] 1..
* entry[MedicationRequest].resource only CHMEDMedicationRequestPre
* entry[MedicationRequest].resource ^short = "CHMED Medication Prescription MedicationRequest"



Mapping: eMediplan-for-CHMEDMedicationPrescriptionDocument
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationPrescriptionDocument
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* identifier -> "Medication.Id"
