Profile: CHMEDMedicationPrescriptionDocument
Parent: CHEMEDDocumentMedicationPrescription
Id: chmed-pre-bundle
Title: "CHMED Medication Prescription document"
Description: "Profile for the Bundle resource to represent the prescribed medication of a patient"
* . ^short = "CHMED Medication Prescription document"

* identifier ^short = "The ID"
* timestamp ^short = "The date of creation"

* entry[Composition].resource only CHMEDCompositionMedicationPrescription
* entry[Composition].resource ^short = "CHMED Medication Prescription Composition"
* entry[MedicationRequest] 1..
* entry[MedicationRequest].resource only CHMEDMedicationRequestPre
* entry[MedicationRequest].resource ^short = "CHMED Medication Prescription MedicationRequest"



Mapping: eMediplan-for-CHMEDMedicationPrescriptionDocument
Id: eMediplan
Title: "eMediplan"
Source: CHMEDMedicationPrescriptionDocument
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* identifier -> "Medication.id"
* timestamp -> "Medication.dt"
* entry[Composition] -> "Medication"
