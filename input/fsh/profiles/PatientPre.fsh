Profile: CHMED20AFPatientPre
Parent: CHCorePatientEPR
Id: chmed20af-pre-patient
Title: "CHMED20AF Patient (Pre)"
Description: "Profile for the Patient resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Patient (Pre)"
* extension contains CHMED20AFExtPrivateField named privatefield 0..*
* extension[privatefield] ^short = "Private fields for patient"
* identifier
* identifier[LocalPid]
* identifier[LocalPid].system
* identifier[LocalPid].value
* name
* telecom
* gender
* birthDate
* address



Mapping: CHMED16A-for-CHMED20AFPatientPre
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFPatientPre
Target: "http://emediplan.ch/chmed16a"
* -> "Patient"
* extension[privatefield] -> "Patient.PFields"
* identifier -> "Patient.Id with PatientId.Type (LocalPatientIdentifier = 2)"
* name -> "name.given = Patient.FName, name.family = Patient.LName"
* telecom -> "Patient.Phone"
* gender -> "Patient.Gender, Male = 1, Female = 2"
* birthDate -> "Patient.BDt"
* address -> "address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City"