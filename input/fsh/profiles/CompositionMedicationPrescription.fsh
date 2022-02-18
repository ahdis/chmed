Profile: CHMED20AFCompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed20af-pre-composition
Title: "CHMED20AF Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication Prescription Composition"
* language
* extension[informationRecipient]
* extension contains CHMED20AFExtPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier.system
* identifier.value
* status
* type
* subject only Reference(CHMED20AFPatientPre)
* subject
* date
* author only Reference(CHMED20AFPractitioner or $ch-emed-practitionerrole or Device or CHMED20AFPatientCard or RelatedPerson or CHCoreOrganizationEPR)
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
* section[prescription].entry only Reference(CHMED20AFMedicationRequestPre)
* section[prescription].entry

* section[annotation]
* section[annotation].title
* section[annotation].code
* section[annotation].text
* section[annotation].text ^short = "General comments"



Mapping: CHMED16A-for-CHMED20AFCompositionMedicationPrescription
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFCompositionMedicationPrescription
Target: "http://emediplan.ch/chmed16a"
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