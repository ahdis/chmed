Profile: CHMEDBodyWeight
Parent: $bodyweight
Id: chmed-obs-bodyweight
Title: "CHMED Body Weight"
Description: "Profile for the Observation resource to represent the body weight"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Body Weight"

* code ^short = "Body weight"

* valueQuantity 1..
* valueQuantity only Quantity
* valueQuantity.value ^short = "Weight (kilogram)"
* valueQuantity.unit = "kg"
* valueQuantity.system ^short = "UCUM"
* valueQuantity.code = #kg

* subject 1..
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"



Mapping: CHMED21A-for-CHMEDBodyWeight
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDBodyWeight
Target: "http://emediplan.ch/chmed21a"
* subject -> "Patient.MData -> MedicalData"
* valueQuantity -> "MedicalData.W"