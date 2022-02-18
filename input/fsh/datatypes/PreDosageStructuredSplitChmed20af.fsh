Profile: PreDosageStructuredSplitChmed20af
Parent: CHEMEDDosageStructuredSplitMedicationRequest
Id: chmed20af-pre-dosage-structured-split
Title: "Dosage Structured Split (Pre)"
Description: "Dosage structured split of Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED 20AF Dosage Structured Split (Pre)"
* sequence
* timing
* timing.repeat
* timing.repeat.bounds[x]
* timing.repeat.when
* route
* route.coding
* route.coding.system
* route.coding.code
* route.coding.display
* doseAndRate
* doseAndRate.dose[x]
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits
* maxDosePerPeriod
* maxDosePerPeriod ^short = "Upper limit on medication per unit of time"


Mapping: CHMED16A-for-PreDosageStructuredSplitChmed20af
Id: CHMED16A
Title: "Mapping to CHMED16A"
Source: PreDosageStructuredSplitChmed20af
Target: "http://emediplan.ch/chmed16a"
* -> "Posology"
* timing -> "Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes, SimpliedVersion of taking times onlys"
* route -> "Medicament.Roa"
* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo"
* maxDosePerPeriod -> "TakingTime.MA"