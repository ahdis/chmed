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
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"


Mapping: CHMED23A-for-CHMEDTimeOfGestation
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDTimeOfGestation
Target: "http://emediplan.ch/chmed23a"
* subject -> "Patient.MData -> MedicalData"
* valueQuantity -> "MedicalData.ToG (format conversion between {week}-{day} to 'days' necessary)"