Profile: CHMEDPatientPre
Parent: CHCorePatientEPR
Id: chmed-pre-patient
Title: "CHMED Patient (Pre)"
Description: "Profile for the Patient resource of the Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Patient (Pre)"
* extension contains CHMEDExtensionPrivateField named privateField 0..*
* identifier
* identifier[LocalPid]
* identifier[LocalPid].system
* identifier[LocalPid].value
* name
* telecom
* gender
* birthDate
* address



Mapping: CHMED21A-for-CHMEDPatientPre
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDPatientPre
Target: "http://emediplan.ch/chmed21a"
* -> "Patient"
* extension[privateField] -> "Patient.PFields"
* identifier -> "Patient.Id with PatientId.Type (LocalPatientIdentifier = 2)"
* name -> "name.given = Patient.FName, name.family = Patient.LName"
* telecom -> "Patient.Phone"
* gender -> "Patient.Gender, Male = 1, Female = 2"
* birthDate -> "Patient.BDt"
* address -> "address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City"