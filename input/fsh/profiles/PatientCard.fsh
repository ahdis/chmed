Profile: CHMEDPatientCard
Parent: CHCorePatientEPR
Id: chmed-card-patient
Title: "CHMED Patient (Card)"
Description: "Profile for the Patient resource of the Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Patient (Card)"
* extension contains CHMEDExtensionPrivateField named privatefield 0..*
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
* communication ..1
* communication ^slicing.discriminator.type = #value
* communication ^slicing.discriminator.path = "preferred"
* communication ^slicing.ordered = false
* communication ^slicing.rules = #open
* communication[languageOfCorrespondance] 1..
* communication[languageOfCorrespondance].language
* communication[languageOfCorrespondance].language from CommonLanguages (extensible)
* communication[languageOfCorrespondance].language ^short = "The language which can be used to communicate with the patient about his or her health"
* communication[languageOfCorrespondance].language ^binding.description = "A human language."
* communication[languageOfCorrespondance].preferred
* communication[languageOfCorrespondance].preferred ^short = "Language preference indicator"



Mapping: CHMED21A-for-CHMEDPatientCard
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDPatientCard
Target: "http://emediplan.ch/chmed21a"
* -> "Patient"
* extension[privatefield] -> "Patient.PFields"
* identifier -> "Patient.Id with PatientId.Type (LocalPatientIdentifier = 2)"
* name -> "name.given = Patient.FName, name.family = Patient.LName"
* telecom -> "Patient.Phone"
* gender -> "Patient.Gender, Male = 1, Female = 2"
* birthDate -> "Patient.BDt"
* address -> "address.line = Patient.Street, address.postalCode = Patient.Zip, address.city = Patient.City"
* communication[languageOfCorrespondance].language -> "Patient.Lng conversion between ISO 639-1 (de) to urn:ietf:cbp:47 (de_CH) necessary"