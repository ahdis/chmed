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

* author[person] only Reference($ch-emed-practitionerrole or CHMEDPatientCard or RelatedPerson)

* author[person].extension contains CHMEDExtensionAuthorRole named authorRole 1..1
* author[person].extension[authorRole] ^short = "Role of the author"

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
* extension[privateField] -> "PFs -> Private Field"
* identifier -> "Id"
* type -> "MedType (Type 2: Prescription (Rx))"
* subject -> "Patient -> Patient"
* date -> "Dt"
* author[person] -> "Auth, Zsr (Organization.identifier)"
* author[person].extension[authorRole] -> "AuthR"

* section[prescription] -> "Meds -> Medicament"
* section[annotation] -> "Rmk"


Mapping: CHMED16A-for-CHMEDCompositionMedicationPrescription
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDCompositionMedicationPrescription
Target: "http://emediplan.ch/chmed16a"
* -> "Medication"
* extension[informationRecipient] -> "Patient.Rcv"
* extension[privateField] -> "PFields -> Private Field"
* identifier -> "Id"
* type -> "MedType (Type 2: Prescription (Rx))"
* subject -> "Patient -> Patient"
* date -> "Dt"
* author[person] -> "Auth, Zsr (Organization.identifier)"

* section[prescription] -> "Medicaments -> Medicament"
* section[annotation] -> "Rmk"
