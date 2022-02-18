Profile: CHMED20AFPractitioner
Parent: $ch-emed-practitioner
Id: chmed20af-practitioner
Title: "CHMED20AF Practitioner"
Description: "Profile for the Practitioner resource to represent a healthcare professional"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Practitioner"
* identifier
* identifier[GLN]
* identifier[GLN].system
* identifier[GLN].value
* identifier[ZSR]
* identifier[ZSR].system
* identifier[ZSR].value
* name
* telecom
* address



Mapping: CHMED16A-for-CHMED20AFPractitioner
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CHMED20AFPractitioner
Target: "http://emediplan.ch/chmed16a"
* -> "Auth"
* identifier[GLN].value -> "Auth.Gln"
* identifier[ZSR].value -> "ZSR-Number of the organisation"
* name -> "name.given = Auth.FName, name.family = Auth.LName"