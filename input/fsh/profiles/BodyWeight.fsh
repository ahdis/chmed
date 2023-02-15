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

* subject ^short = "Patient"



Mapping: eMediplan-for-CHMEDBodyWeight
Id: eMediplan
Title: "eMediplan"
Source: CHMEDBodyWeight
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* subject -> "Patient.MData -> MedicalData (MData)"
* valueQuantity -> "MedicalData (MData).W"
