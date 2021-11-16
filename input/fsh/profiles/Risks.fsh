Profile: Risks
Parent: Condition
Id: chmed20af-condition-risks
Title: "Risks"
Description: "Profile for the Condition resource to represent the risks"
* . ^short = "CHMED20AF Risks"
* identifier MS
* clinicalStatus = $condition-clinical#active
* clinicalStatus MS
* category 1..1 MS
* category from RiskCategories (required)
* category ^binding.description = "A category assigned to the condition."
* code MS
* code from Risks (required)
* code ^short = "Identification of the risk for that category."
* code ^binding.description = "Identification of risk"
* subject only Reference(PatientCard)
* subject MS
* recordedDate MS


Mapping: CHMED16A-for-Risks
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: Risks
Target: "http://emediplan.ch/chmed16a"
* -> "MedicalData.RG (RiskCategory)"
* category -> "RiskCatgory"
* code -> "risk"