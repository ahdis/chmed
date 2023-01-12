Profile: CHMEDCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed-pre-composition
Title: "CHMED Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Medication Prescription Composition"

* extension[informationRecipient] ^short = "Receiver"

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* subject only Reference(CHMEDPatientPre)
* subject ^short = "Patient"

* date ^short = "Date of creation"

* author only Reference($ch-emed-practitionerrole or CHMEDPatientCard or RelatedPerson)

* author.extension contains CHMEDExtensionAuthorRole named authorRole 1..1
* author.extension[authorRole] ^short = "Role of the author"

* section[prescription].entry only Reference(CHMEDMedicationRequestPre)
* section[prescription].entry ^short = "Medicament"

* section[annotation].text ^short = "Remark"



Mapping: CHMED23A-for-CHMEDCompositionMedicationPrescription
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDCompositionMedicationPrescription
Target: "http://emediplan.ch/chmed23a"
* -> "Medication"
* extension[informationRecipient] -> "Rcv"
* extension[privateField] -> "PFs -> PrivateField"
* identifier -> "Id"
* type -> "MedType (Type 2: Prescription (Rx))"
* subject -> "Patient -> Patient"
* date -> "Dt"
* author -> "Auth, Zsr"
* author.extension[authorRole] -> "AuthR"

* section[prescription] -> "Meds -> Medicament"
* section[annotation] -> "Rmk"