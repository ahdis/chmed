Profile: CHMEDPatientCard
Parent: CHMEDPatientPre
Id: chmed-card-patient
Title: "CHMED Patient (CARD)"
Description: "Profile for the Patient resource, referenced in the CHMED Medication Card Composition"
* . ^short = "CHMED Patient (CARD)"
* communication[languageOfCorrespondence] 1..
* communication[languageOfCorrespondence] ^short = "The patient's language"


Mapping: eMediplan-for-CHMEDPatientCard
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPatientCard
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "Patient"
* extension[exts] -> "exts -> Extension"
* identifier -> "ids -> PatientId"
* identifier.type -> "PatientId.type (1: Insurance card number, 2: Local PID)"
* identifier.system -> "PatientId.sId"
* identifier.value -> "PatientId.val"
* identifier[LocalPid] -> "PatientId.type = 1: Insurance card number"
* identifier[insuranceCardNumber] -> "PatientId.type = 2: Local PID"
* name.family -> "lName"
* name.given -> "fName"
* telecom[phone] -> "phones"
* telecom[email] -> "emails"
* gender -> "gender (1: Male, 2: Female, 3: Other)"
* birthDate -> "bdt"
* address.line -> "street"
* address.city -> "city"
* address.postalCode -> "zip"
* communication[languageOfCorrespondence] -> "lng"
