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
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"



Mapping: CHMED23A-for-CHMEDBodyHeight
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDBodyHeight
Target: "http://emediplan.ch/chmed23a"
* subject -> "Patient.MData -> MedicalData"
* valueQuantity -> "MedicalData.H"