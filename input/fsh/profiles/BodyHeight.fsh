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

* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "Patient"



Mapping: CHMED21A-for-CHMEDBodyHeight
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDBodyHeight
Target: "http://emediplan.ch/chmed21a"
* subject -> "Patient.MData -> MedicalData"
* valueQuantity -> "MedicalData.H"