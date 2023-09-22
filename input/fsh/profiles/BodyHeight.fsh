Profile: CHMEDBodyHeight
Parent: $bodyheight
Id: chmed-obs-bodyheight
Title: "CHMED Body Height"
Description: "Profile for the Observation resource to represent the body height"
* . ^short = "CHMED Body Height"
* code ^short = "Body height"
* valueQuantity 1..
* valueQuantity.value 1..
* valueQuantity.value ^short = "Height (centimetre)"
* valueQuantity.unit 1..
* valueQuantity.unit = "cm"
* valueQuantity.system 1..
* valueQuantity.system ^short = "UCUM"
* valueQuantity.code 1..
* valueQuantity.code = #cm
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDBodyHeight
Id: eMediplan
Title: "eMediplan"
Source: CHMEDBodyHeight
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* subject -> "Patient.mData -> MedicalData"
* valueQuantity -> "MedicalData.h"
* code -> "MedicalData.h"
