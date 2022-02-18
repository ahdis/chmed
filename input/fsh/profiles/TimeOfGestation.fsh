Profile: TimeOfGestation
Parent: Observation
Id: chmed20af-obs-timeofgestation
Title: "Time of Gestation"
Description: "Profile for the Observation resource to represent the time of gestation"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Time of Gestation"
* code = $loinc#49052-4
* code
* code ^short = "Gestational age in days"
* valueQuantity 1..
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #d (exactly)


Mapping: CHMED16A-for-TimeOfGestation
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: TimeOfGestation
Target: "http://emediplan.ch/chmed16a"
* -> "ToG"
* code -> "ToG.Days + ToG.Weeks"