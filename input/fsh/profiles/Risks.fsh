Profile: CHMEDRisks
Parent: Condition
Id: chmed-condition-risks
Title: "CHMED Risks"
Description: "Profile for the Condition resource to represent the risks"
* . ^short = "CHMED Risks"
* clinicalStatus 1..
* clinicalStatus = $condition-clinical#active
* clinicalStatus ^short = "The patient is currently experiencing the risk or there is evidence for it"
* category 1..1
* category from RiskCategories (required)
* category ^short = "Risk category"
* code from Risks (required)
* code ^short = "Risk within the risk category"
* subject 1..
* subject only Reference(CHMEDPatientCard)
* subject ^short = "The patient"



Mapping: eMediplan-for-CHMEDRisks
Id: eMediplan
Title: "eMediplan"
Source: CHMEDRisks
Target: "https://emediplan.ch/wp-content/uploads/2023/09/20230815_eMediplan_ChMed23A_1.0-AND-eMediplan_ChMed23A_Posology_1.0.pdf"
* category -> "MedicalData.rcs -> RiskCategory.id (1: Renal insufficiency, 2: Liver insufficiency, 3: Reproduction, 4: Competitive athlete, 5: Operating vehicles/machines, 6: Allergies, 7: Diabetes)"
* code -> "MedicalData.rcs -> RiskCategory.rIds"
* subject -> "Patient.mData -> MedicalData"
