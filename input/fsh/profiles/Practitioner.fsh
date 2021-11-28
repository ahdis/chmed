Profile: Practitioner
Parent: CHCorePractitionerEPR
Id: chmed20af-practitioner
Title: "Practitioner"
Description: "Profile for the Practitioner resource to represent a healthcare professional"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Practitioer"
* identifier MS
* identifier[GLN] MS
* identifier[GLN].system MS
* identifier[GLN].value MS
* identifier[ZSR] MS
* identifier[ZSR].system MS
* identifier[ZSR].value MS
* name MS
* telecom MS
* address MS



Mapping: CHMED16A-for-Practitioner
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: Practitioner
Target: "http://emediplan.ch/chmed16a"
* -> "Auth"
* identifier[GLN].value -> "Auth.Gln"
* identifier[ZSR].value -> "ZSR-Number of the organisation"
* name -> "name.given = Auth.FName, name.family = Auth.LName"