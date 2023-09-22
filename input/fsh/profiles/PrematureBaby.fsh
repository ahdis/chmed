Profile: CHMEDPrematureBaby
Parent: Observation
Id: chmed-obs-prematurebaby
Title: "CHMED Premature Baby"
Description: "Profile for the Observation resource to represent a premature baby"
* . ^short = "CHMED Premature Baby"
* code = $sct#395507008
* code ^short = "Premature infant"
* valueBoolean 1..
* valueBoolean only boolean
* valueBoolean ^short = "True if it is a premature baby, false otherwise (only if age <= 18 months)"
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDPrematureBaby
Id: eMediplan
Title: "eMediplan"
Source: CHMEDPrematureBaby
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* subject -> "Patient.mData -> MedicalData"
* valueBoolean -> "MedicalData.prem"
* code -> "MedicalData.prem"
