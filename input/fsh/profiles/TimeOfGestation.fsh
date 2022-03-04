Profile: CHMEDTimeOfGestation
Parent: Observation
Id: chmed-obs-timeofgestation
Title: "CHMED Time of Gestation"
Description: "Profile for the Observation resource to represent the time of gestation"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Time of Gestation"

* code = $loinc#49052-4
* code ^short = "Gestational age in days"

* valueQuantity 1..
* valueQuantity.value 1..
* valueQuantity.unit 1..
* valueQuantity.unit = "day" (exactly)
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org" (exactly)
* valueQuantity.code 1..
* valueQuantity.code = #d (exactly)

* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "Patient"


Mapping: CHMED21A-for-CHMEDTimeOfGestation
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDTimeOfGestation
Target: "http://emediplan.ch/chmed21a"
* subject -> "Patient.MData -> MedicalData"
* valueQuantity -> "MedicalData.ToG (format conversion between {week}-{day} to 'days' necessary)"