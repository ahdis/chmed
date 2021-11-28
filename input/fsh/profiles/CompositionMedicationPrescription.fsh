Profile: CompositionMedicationPrescription
Parent: CHEMEDCompositionMedicationPrescription
Id: chmed20af-pre-composition
Title: "Medication Prescription Composition"
Description: "Profile for the Composition resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Medication Prescription Composition"
* language MS
* extension[informationRecipient] MS
* extension contains ExtPrivateField named privatefield 0..* MS
* extension[privatefield] ^short = "Private fields for patient"
* identifier MS
* identifier.system MS
* identifier.value MS
* status MS
* type MS
* subject only Reference(PatientPre)
* subject MS
* date MS
* author only Reference(Practitioner or CHCorePractitionerRoleEpr or Device or PatientPre or RelatedPerson or CHCoreOrganizationEPR)
* author MS
* title MS
* confidentiality MS
* confidentiality.extension[confidentialityCode] MS
* custodian MS
* section MS
* section[originalRepresentation] MS
* section[originalRepresentation].title MS
* section[originalRepresentation].code MS
* section[originalRepresentation].text MS
* section[originalRepresentation].entry MS

* section[prescription] MS
* section[prescription].title MS
* section[prescription].code MS
* section[prescription].entry only Reference(MedicationRequestPre)
* section[prescription].entry MS

* section[annotation] MS
* section[annotation].title MS
* section[annotation].code MS
* section[annotation].text MS
* section[annotation].text ^short = "General comments"



Mapping: CHMED16A-for-CompositionMedicationPrescription
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CompositionMedicationPrescription
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