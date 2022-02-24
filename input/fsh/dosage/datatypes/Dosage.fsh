Profile: CHMEDDosage
Parent: Dosage
Id: chmed-dosage
Title: "CHMED Dosage"
Description: "Dosage according to the 'Posology' in CHMED21A"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage"

* additionalInstruction ^slicing.discriminator.type = #pattern
* additionalInstruction ^slicing.discriminator.path = "$this"
* additionalInstruction ^slicing.rules = #open
* additionalInstruction contains 
    relativeToMeal 0..1 MS

* additionalInstruction[relativeToMeal]. ^short = "When the medicament must be applied relative to a meal (before, during or after)"
* additionalInstruction[relativeToMeal] from RelativeToMeal (required)

* timing.repeat.boundsPeriod.start MS
* timing.repeat.boundsPeriod.start. ^short = "When the dosage starts to be valid"
* timing.repeat.boundsPeriod.end MS
* timing.repeat.boundsPeriod.end. ^short = "When the dosage’s validity ends"

//* timing.repeat.when
* asNeededBoolean MS
* asNeededBoolean. ^short = "Reserve medication ('true' if in reserve, 'false' otherwise)"

/*
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


Mapping: CHMED21A-for-CHMEDDosage
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
* additionalInstruction[relativeToMeal] -> "Posology.RM"

* timing.repeat.boundsPeriod.start -> "Posology.DtFrom"
* timing.repeat.boundsPeriod.end -> "Posology.DtTo"
//* timing -> "Posology.CyDu, , SimpliedVersion of taking times onlys"
* asNeededBoolean -> "Posology.InRes"
/*
* route -> "Medicament.Roa"
* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A, doseRange: TakingTime.DoFrom, TakingTime.DoTo"
* maxDosePerPeriod -> "TakingTime.MA"
*/