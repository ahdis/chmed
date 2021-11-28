Profile: CardDosageStructuredSplitChmed20af
Parent: CHEMEDDosageStructuredSplit
Id: chmed20af-card-dosage-structured-split
Title: "Dosage Structured Split (Card)"
Description: "Dosage structured split of Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED20AF Dosage Structured Split (Card)"
* sequence MS
* timing MS
* timing.repeat MS
* timing.repeat.bounds[x] MS
* timing.repeat.when MS
* route MS
* route.coding MS
* route.coding.system MS
* route.coding.code MS
* route.coding.display MS
* doseAndRate MS
* doseAndRate.dose[x] MS
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits
* maxDosePerPeriod MS
* maxDosePerPeriod ^short = "Upper limit on medication per unit of time"



Mapping: CHMED16A-for-CardDosageStructuredSplitChmed20af
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: CardDosageStructuredSplitChmed20af
Target: "http://emediplan.ch/chmed16a"
* -> "Posology"
* timing -> "Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes, SimpliedVersion of taking times onlys"
* route -> "Medicament.Roa"
* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo"
* maxDosePerPeriod -> "TakingTime.MA"