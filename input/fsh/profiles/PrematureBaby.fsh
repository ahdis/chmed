Profile: CHMEDPrematureBaby
Parent: Observation
Id: chmed-obs-prematurebaby
Title: "CHMED Premature Baby"
Description: "Profile for the Observation resource to represent a premature baby"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Premature Baby"
* code = $sct#395507008
* code
* code ^short = "Premature infant"
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^short = "premature baby true only if age <= 18 months"


Mapping: CHMED21A-for-CHMEDPrematureBaby
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDPrematureBaby
Target: "http://emediplan.ch/chmed21a"
* valueBoolean -> "MedicalData.Prem"