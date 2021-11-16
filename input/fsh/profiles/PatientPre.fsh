Profile: PatientPre
Parent: CHCorePatientEPR
Id: chmed20af-pre-patient
Title: "Patient (Pre)"
Description: "Profile for the Patient resource of the Medication Prescription document"
* . ^short = "CHMED20AF Patient (Pre)"
* extension contains ExtPrivateField named privatefield 0..* MS
* extension[privatefield] ^short = "Private fields for patient"
* identifier MS
* identifier[LocalPid] MS
* identifier[LocalPid].system MS
* identifier[LocalPid].value MS
* name MS
* telecom MS
* gender MS
* birthDate MS
* address MS



Mapping: CHMED16A-for-PatientPre
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: PatientPre
Target: "http://emediplan.ch/chmed16a"
* -> "Patient"
* extension[privatefield] -> "Patient.PFields"
* identifier -> "Patient.Id with PatientId.Type (LocalPatientIdentifier = 2)"
* name -> "name.given = Patient.FName, name.family = Patient.LName"
* telecom -> "Patient.Phone"
* gender -> "Patient.Gender, Male = 1, Female = 2"
* birthDate -> "Patient.BDt"
* address -> "address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City"