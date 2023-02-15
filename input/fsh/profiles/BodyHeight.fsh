Profile: CHMEDBodyHeight
Parent: $bodyheight
Id: chmed-obs-bodyheight
Title: "CHMED Body Height"
Description: "Profile for the Observation resource to represent the body height"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Body Height"

* code ^short = "Body height"

* valueQuantity 1..
* valueQuantity only Quantity
* valueQuantity.value ^short = "Height (centimetre)"
* valueQuantity.unit = "cm"
* valueQuantity.system ^short = "UCUM"
* valueQuantity.code = #cm

* subject ^short = "Patient"



Mapping: eMediplan-for-CHMEDBodyHeight
Id: eMediplan
Title: "eMediplan"
Source: CHMEDBodyHeight
Target: "https://emediplan.ch/software-anbieter/spezifikationen/"
* subject -> "Patient.MData -> MedicalData (MData)"
* valueQuantity -> "MedicalData (MData).H"

