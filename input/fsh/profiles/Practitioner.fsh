Profile: CHMEDPractitioner
Parent: $ch-emed-practitioner
Id: chmed-practitioner
Title: "CHMED Practitioner"
Description: "Profile for the Practitioner resource to represent a healthcare professional"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Practitioner"
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



Mapping: CHMED21A-for-CHMEDPractitioner
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDPractitioner
Target: "http://emediplan.ch/chmed21a"
* -> "Auth"
* identifier[GLN].value -> "Auth.Gln"
* identifier[ZSR].value -> "ZSR-Number of the organisation"
* name -> "name.given = Auth.FName, name.family = Auth.LName"