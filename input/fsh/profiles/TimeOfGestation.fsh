Profile: CHMEDTimeOfGestation
Parent: Observation
Id: chmed-obs-timeofgestation
Title: "CHMED Time of Gestation"
Description: "Profile for the Observation resource to represent the time of gestation"
* . ^short = "CHMED Time of Gestation"
* code = $loinc#49052-4
* code ^short = "Gestational age in days"
* valueQuantity 1..
* valueQuantity.value 1..
* valueQuantity.value ^short = "The time of gestation (only if it is a premature baby)"
* valueQuantity.unit 1..
* valueQuantity.unit = "day"
* valueQuantity.system 1..
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.system ^short = "UCUM"
* valueQuantity.code 1..
* valueQuantity.code = #d
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDTimeOfGestation
Id: eMediplan
Title: "eMediplan"
Source: CHMEDTimeOfGestation
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* subject -> "Patient.mData -> MedicalData"
* valueQuantity -> "MedicalData.toG"
* code -> "MedicalData.toG"
