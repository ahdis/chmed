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
* extension contains CHMEDExtensionPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* type
* subject only Reference(CHMEDPatientPre)
* subject
* date
* author only Reference(CHMEDPractitioner or $ch-emed-practitionerrole or Device or CHMEDPatientCard or RelatedPerson or CHCoreOrganizationEPR)
* title
* confidentiality
* confidentiality.extension[confidentialityCode]
* custodian
* section
* section[originalRepresentation]
* section[originalRepresentation].title
* section[originalRepresentation].code
* section[originalRepresentation].text
* section[originalRepresentation].entry

* section[prescription]
* section[prescription].title
* section[prescription].code
* section[prescription].entry only Reference(CHMEDMedicationRequestPre)
* section[prescription].entry

* section[annotation]
* section[annotation].title
* section[annotation].code
* section[annotation].text
* section[annotation].text ^short = "General comments"



Mapping: CHMED21A-for-CHMEDCompositionMedicationPrescription
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDCompositionMedicationPrescription
Target: "http://emediplan.ch/chmed21a"
* -> "Medication"
* extension[informationRecipient] -> "Patient or Patient.Rcv (Gln of receiver)"
* extension[privatefield] -> "PFields"
* identifier -> "Id"
* type -> "MedType"
* subject -> "Patient"
* date -> "Dt"
* author -> "Auth"
* section[prescription] -> "Medicaments"
* section[annotation] -> "Rmk"