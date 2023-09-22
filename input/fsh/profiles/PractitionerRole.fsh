Profile: CHMEDPractitionerRole
Parent: $ch-emed-practitionerrole
Id: chmed-practitionerrole
Title: "CHMED PractitionerRole"
Description: "Profile for the PractitionerRole resource"
* . ^short = "CHMED PractitionerRole"
* practitioner only Reference(CHMEDPractitioner)
* practitioner ^short = "The healthcare person"
* organization only Reference(CHMEDOrganization)
* organization ^short = "The organization in which the healthcare person practices"
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains
    ZSR 0..1 
* identifier[ZSR] ^short = "The ZSR number of the healthcare person or his/her organisation"
* identifier[ZSR] ^patternIdentifier.system = "urn:oid:2.16.756.5.30.1.123.100.2.1.1"
* identifier[ZSR].value 1..

Profile: CHMEDPractitioner
Parent: $ch-emed-practitioner
Id: chmed-practitioner
Title: "CHMED Practitioner"
Description: "Profile for the Practitioner resource"
* . ^short = "CHMED Practitioner"
* identifier[GLN] ^short = "The GLN"
* identifier[ZSR] ^short = "The ZSR number"
* name.family 1..
* name.family ^short = "Last name"
* name.given 1..
* name.given ^short = "First name"

Profile: CHMEDOrganization
Parent: $ch-emed-organization
Id: chmed-organization
Title: "CHMED Organization"
Description: "Profile for the Organization resource"
* . ^short = "CHMED Organization"
* identifier[ZSR] ^short = "The ZSR number"
* address.line 1..
* address.line ^short = "Street"
* address.city 1..
* address.city ^short = "City"
* address.postalCode 1..
* address.postalCode ^short = "Postcode"




Mapping: eMediplan-for-CHMEDPractitionerRole
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPractitionerRole
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "HealthcarePerson"
* practitioner -> "HealthcarePerson"
* organization -> "HealthcarePerson"
* identifier[ZSR] -> "Medication.zsr"

Mapping: eMediplan-for-CHMEDPractitioner
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPractitioner
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "HealthcarePerson"
* identifier[GLN] -> "gln"
* name.given -> "fName"
* name.family -> "lName"
* identifier[ZSR] -> "Medication.zsr"

Mapping: eMediplan-for-CHMEDOrganization
Id: eMediplan
Title: "eMediplan"
Source: CHMEDOrganization
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* -> "HealthcarePerson"
* address.line -> "street"
* address.city -> "city"
* address.postalCode -> "zip"
* identifier[ZSR] -> "Medication.zsr"
