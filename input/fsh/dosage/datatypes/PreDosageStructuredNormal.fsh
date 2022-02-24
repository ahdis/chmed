Profile: CHMEDDosageStructuredNormalPre
Parent: CHEMEDDosageStructuredNormalMedicationRequest
// Parent: CHMEDDosage
Id: chmed-dosage-structured-normal-pre
Title: "CHMED Dosage Structured Normal (Pre)"
Description: "Dosage structured normal of Medication Prescription document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Normal (Pre)"
/*
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
*/

Mapping: CHMED21A-for-CHMEDDosageStructuredNormalPre
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosageStructuredNormalPre
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
/*
* timing -> "Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes, SimpliedVersion of taking times onlys"
* route -> "Medicament.Roa"
* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo"
* maxDosePerPeriod -> "TakingTime.MA"
*/