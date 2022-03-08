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
* code ^short = "Premature infant"

* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^short = "'True' if patient is a premature baby, otherwise 'false' (only if age <= 18 months)"

* subject 1..
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"


Mapping: CHMED21A-for-CHMEDPrematureBaby
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDPrematureBaby
Target: "http://emediplan.ch/chmed21a"
* subject -> "Patient.MData -> MedicalData"
* valueBoolean -> "MedicalData.Prem"