Profile: CHMEDCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed-pre-composition
Title: "CHMED Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* . ^short = "CHMED Medication Prescription Composition"
* extension contains 
    CHMEDExtension named exts 0..* and
    CHMEDRecipient named rec 0..1
* extension[exts] ^short = "Extension"
* identifier ^short = "The ID"
* type ^short = "Prescription (Rx)"
* subject only Reference(CHMEDPatientPre)
* subject ^short = "The patient"
* date ^short = "The date of creation"
* author[person] only Reference(CHMEDPractitionerRole)
* author[person] ..1
* author[person] ^short = "The author of the document (healthcare person)"
* section[prescription].entry only Reference(CHMEDMedicationRequestPre)
* section[prescription].entry ^short = "Medicament"
* section[annotation].text ^short = "The remark"



Mapping: eMediplan-for-CHMEDCompositionMedicationPrescription
Id: eMediplan
Title: "eMediplan"
Source: CHMEDCompositionMedicationPrescription
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Medication"
* extension[exts] -> "exts -> Extension"
* extension[rec] -> "rec"
* identifier -> "id"
* type -> "medType (Type 3: Prescription (Rx))"
* subject -> "patient -> Patient"
* date -> "dt"
* author[person] -> "auth (1: Healthcare person) -> hcPerson -> HealthcarePerson"
* section[prescription] -> "meds -> Medicament"
* section[annotation].text -> "rmk"
