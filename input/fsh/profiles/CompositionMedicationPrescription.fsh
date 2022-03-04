Profile: CHMEDCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed-pre-composition
Title: "CHMED Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Prescription Composition"
* language
* extension[informationRecipient]

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* subject only Reference(CHMEDPatientPre)
* subject ^short = "Patient"

* date ^short = "Date of creation"

* author only Reference(CHMEDPractitioner or $ch-emed-practitionerrole or Device or CHMEDPatientCard or RelatedPerson or CHCoreOrganizationEPR)
* title
* confidentiality
* confidentiality.extension[confidentialityCode]
* custodian

* section[prescription].entry only Reference(CHMEDMedicationRequestPre)
* section[prescription].entry ^short = "Medicament"

* section[annotation].text ^short = "Remark"



Mapping: CHMED21A-for-CHMEDCompositionMedicationPrescription
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDCompositionMedicationPrescription
Target: "http://emediplan.ch/chmed21a"
* -> "Medication"
// * extension[informationRecipient] -> "Patient or Patient.Rcv (Gln of receiver)"
* extension[privateField] -> "PFs -> Private Field"
* identifier -> "Id"
* type -> "MedType (Type 2: Prescription (Rx))"
* subject -> "Patient -> Patient"
* date -> "Dt"
// * author -> "Auth"

* section[prescription] -> "Meds -> Medicament"
* section[annotation] -> "Rmk"