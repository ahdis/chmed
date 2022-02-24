Profile: CHMEDDosage
Parent: Dosage
Id: chmed-dosage
Title: "CHMED Dosage"
Description: "Dosage according to the 'Posology' in CHMED21A"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage"

// * sequence

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

* timing.repeat.when MS
* timing.repeat.when. ^short = "When a medicament must be taken"

* asNeededBoolean MS
* asNeededBoolean. ^short = "Reserve medication ('true' if in reserve, 'false' otherwise)"

/*
* route
* route.coding
* route.coding.system
* route.coding.code
* route.coding.display
*/

* doseAndRate.doseQuantity MS
* doseAndRate.doseQuantity. ^short = "The amount of the medicament to be applied"
* doseAndRate.doseQuantity only CHEMEDQuantityWithEmedUnits

//* maxDosePerPeriod only CHEMEDRatioWithEmedUnits
//* maxDosePerPeriod
//* maxDosePerPeriod ^short = "Upper limit on medication per unit of time"



Mapping: CHMED21A-for-CHMEDDosage
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"
* additionalInstruction[relativeToMeal] -> "Posology.RM"

* timing.repeat.boundsPeriod.start -> "Posology.DtFrom"
* timing.repeat.boundsPeriod.end -> "Posology.DtTo"
* timing.repeat.when -> "Posology.PO[Type1].Ds"
//* timing -> "Posology.CyDu, , SimpliedVersion of taking times onlys"

* asNeededBoolean -> "Posology.InRes"

//* route -> "Medicament.Roa"

* doseAndRate.doseQuantity.value -> "Posology.PO[Type1].Ds, Posology.PO[Type3].TD[Type1].T[Type1].A"
* doseAndRate.doseQuantity.unit -> "Medicament.Unit"
* doseAndRate.doseQuantity.system -> "Medicament.Unit"
* doseAndRate.doseQuantity.code -> "Medicament.Unit"
//* doseAndRate.dose[x] -> "doseQuantity: TakingTime.A"

//* maxDosePerPeriod -> "TakingTime.MA"
