Profile: CHMEDPatientPre
Parent: CHCorePatientEPR
Id: chmed-pre-patient
Title: "CHMED Patient (PRE)"
Description: "Profile for the Patient resource, referenced in the CHMED Medication Prescription Composition"
* . ^short = "CHMED Patient (PRE)"
* extension contains CHMEDExtension named exts 0..*
* extension[exts] ^short = "Extension"
* identifier ^short = "Patient ID"
* identifier[LocalPid] ^short = "Local PID"
* identifier[insuranceCardNumber] ^short = "Insurance card number"
* name.family 1..
* name.family ^short = "Last name"
* name.given 1..
* name.given ^short = "First name"
* telecom[phone] ^short = "Phone number"
* telecom[email] ^short = "Email address"
* gender ^short = "Gender of the patient (male | female | other)"
* birthDate ^short = "Date of birth"
* address.line ^short = "Street"
* address.city ^short = "City"
* address.postalCode ^short = "Postcode"


Mapping: eMediplan-for-CHMEDPatientPre
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPatientPre
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
