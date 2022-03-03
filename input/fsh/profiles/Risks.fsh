Profile: CHMEDRisks
Parent: Condition
Id: chmed-condition-risks
Title: "CHMED Risks"
Description: "Profile for the Condition resource to represent the risks"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Risks"
* identifier
* clinicalStatus = $condition-clinical#active
* clinicalStatus
* category 1..1
* category from RiskCategories (required)
* category ^binding.description = "A category assigned to the condition."
* code
* code from Risks (required)
* code ^short = "Identification of the risk for that category."
* code ^binding.description = "Identification of risk"
* subject only Reference(CHMEDPatientCard)
* subject
* recordedDate


Mapping: CHMED21A-for-CHMEDRisks
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDRisks
Target: "http://emediplan.ch/chmed21a"
* -> "MedicalData.RG (RiskCategory)"
* category -> "RiskCatgory"
* code -> "risk"