Profile: CHMEDBodyWeight
Parent: $bodyweight
Id: chmed-obs-bodyweight
Title: "CHMED Body Weight"
Description: "Profile for the Observation resource to represent the body weight"
* . ^short = "CHMED Body Weight"
* code ^short = "Body weight"
* valueQuantity 1..
* valueQuantity.value 1..
* valueQuantity.value ^short = "Weight (kilogram)"
* valueQuantity.unit 1..
* valueQuantity.unit = "kg"
* valueQuantity.system 1..
* valueQuantity.system ^short = "UCUM"
* valueQuantity.code 1..
* valueQuantity.code = #kg
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDBodyWeight
Id: eMediplan
Title: "eMediplan"
Source: CHMEDBodyWeight
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* subject -> "Patient.mData -> MedicalData"
* valueQuantity -> "MedicalData.w"
* code -> "MedicalData.w"
