Profile: CHMEDDosageStructuredNormalCard
Parent: CHEMEDDosageStructuredNormal
Id: chmed-dosage-structured-normal-card
Title: "CHMED Dosage Structured Normal (Card)"
Description: "Dosage structured normal of Medication Card document"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage Structured Normal (Card)"

* obeys chmed-dosage

/*
* additionalInstruction from RelativeToMeal (preferred)

* additionalInstruction ^slicing.discriminator.type = #value
* additionalInstruction ^slicing.discriminator.path = "system"
* additionalInstruction ^slicing.rules = #open
* additionalInstruction contains 
    relativeToMeal 0..1

* additionalInstruction[relativeToMeal] MS
* additionalInstruction[relativeToMeal]. ^short = "Describes when the medicament must be applied relative to a meal (before, during or after)"
* additionalInstruction[relativeToMeal] from RelativeToMeal (preferred)
*/
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


Mapping: CHMED21A-for-CHMEDDosageStructuredNormalCard
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosageStructuredNormalCard
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
//* additionalInstruction[relativeToMeal] -> "Posology.RM"
/*
* timing -> "Posology.DtFrom, Posology.DtTo, Posology.CyDu, Posology.InRes, SimpliedVersion of taking times onlys"
* route -> "Medicament.Roa"
* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo"
* maxDosePerPeriod -> "TakingTime.MA"
*/