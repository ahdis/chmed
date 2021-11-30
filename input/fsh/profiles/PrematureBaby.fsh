Profile: PrematureBaby
Parent: Observation
Id: chmed20af-obs-prematurebaby
Title: "Premature Baby"
Description: "Profile for the Observation resource to represent a premature baby"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Premature Baby"
* code = $sct#395507008
* code MS
* code ^short = "Premature infant"
* valueBoolean 1.. MS
* valueBoolean only boolean
* valueBoolean ^short = "premature baby true only if age <= 18 months"


Mapping: CHMED16A-for-PrematureBaby
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: PrematureBaby
Target: "http://emediplan.ch/chmed16a"
* valueBoolean -> "MedicalData.Prem"