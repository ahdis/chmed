Profile: CHMEDPatientPre
Parent: CHCorePatientEPR
Id: chmed-pre-patient
Title: "CHMED Patient (Pre)"
Description: "Profile for the Patient resource, referenced in the CHMED Medication Prescription Composition"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Patient (Pre)"

* extension contains CHMEDExtensionPrivateField named privateField 0..*
* extension[privateField] ^short = "Private Field"

* identifier ^short = "Patient Id"
* identifier.type ^short = "Type of the Id"
* identifier.system ^short = "The system allowing to identify the patient"
* identifier.value ^short = "The value identifying the patient"
* identifier[LocalPid] ^short = "Local Patient Id"
* identifier[insuranceCardNumber] ^short = "Insurance Card Number"

* name ..1
* name.family 1..1
* name.family ^short = "Last name"
* name.given 1..1
* name.given ^short = "First name"

* telecom ^short = "Contact"
* telecom ^slicing.discriminator[+].type = #value
* telecom ^slicing.discriminator[=].path = "system"
* telecom ^slicing.rules = #open
* telecom contains 
    phone 0..* and
    email 0..*

* telecom[phone] ^short = "Phone number"
* telecom[phone].system ^fixedCode = #phone
* telecom[phone].system 1..
* telecom[phone].value 1..

* telecom[email] ^short = "Email address"
* telecom[email].system ^fixedCode = #email  
* telecom[email].system 1.. 
* telecom[email].value 1..

* gender ^short = "Gender of the patient"
* birthDate ^short = "Date of birth"

* address 0..1
* address.line 0..1
* address.line ^short = "Street"
* address.city ^short = "City"
* address.postalCode ^short = "Zip Code"


Mapping: eMediplan-for-CHMEDPatientPre
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPatientPre
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* -> "Patient"
* extension[privateField] -> "PFs -> Private Field"

* identifier -> "Ids -> PatientId"
* identifier.type -> "PatientId.Type"
* identifier.system -> "PatientId.SId"
* identifier.value -> "PatientId.Val"
* identifier[LocalPid] -> "Type 1: InsuranceCardNumber"
* identifier[insuranceCardNumber] -> "Type 2: LocalPID"

* name.family -> "LName"
* name.given -> "FName"

* telecom -> "Cs -> Contact"
* telecom[phone] -> "Contact.Phone"
* telecom[email] -> "Contact.Email"

* gender -> "Gender (1: Male, 2: Female, 3: Other)"
* birthDate -> "BDt"
* address.line -> "Street"
* address.city -> "City"
* address.postalCode -> "Zip"
