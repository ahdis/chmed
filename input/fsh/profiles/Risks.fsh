Profile: CHMEDRisks
Parent: Condition
Id: chmed-condition-risks
Title: "CHMED Risks"
Description: "Profile for the Condition resource to represent the risks"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Risks"

* clinicalStatus = $condition-clinical#active

* category 1..1
* category from RiskCategories (required)
* category ^short = "Identification of risk category"
* category ^binding.description = "A category assigned to the condition"

* code from Risks (required)
* code ^short = "Identification of the risk for that category"
* code ^binding.description = "Identification of risk"

* subject 1..
* subject only Reference(CHMEDPatient)
* subject ^short = "Patient"



Mapping: CHMED23A-for-CHMEDRisks
Id: CHMED23A
Title: "CHMED23A"
Source: CHMEDRisks
Target: "http://emediplan.ch/chmed23a"
* -> "MedicalData (MData).RCs -> RiskCategory"
* category -> "RiskCategory.Id (RC Id)"
* code -> "RiskCategory.RCs (Risk Id)"
* subject -> "Patient.MData -> MedicalData (MData)"


Mapping: CHMED16A-for-CHMEDRisks
Id: CHMED16A
Title: "CHMED16A"
Source: CHMEDRisks
Target: "http://emediplan.ch/chmed16a"
* -> "MedicalData.Rc -> RiskCategory"
* category -> "RiskCategory.Id (Rc Id)"
* code -> "RiskCategory.R (Risk Id)"
* subject -> "Patient.Med -> MedicalData"