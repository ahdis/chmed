Profile: CHMEDDosage
Parent: Dosage
Id: chmed-dosage
Title: "CHMED Dosage"
Description: "Dosage according to the 'Posology' in CHMED21A"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage"

* sequence MS
* sequence. ^short = "The order of the dosage instructions (number is identical -> concurrent,  number is different -> sequential)"

* additionalInstruction ^slicing.discriminator.type = #pattern
* additionalInstruction ^slicing.discriminator.path = "$this"
* additionalInstruction ^slicing.rules = #open
* additionalInstruction contains 
    relativeToMeal 0..1 MS and 
    evenOddDays 0..1 MS
* additionalInstruction[relativeToMeal]. ^short = "When the medicament must be applied relative to a meal (before, during or after)"
* additionalInstruction[relativeToMeal] from RelativeToMeal (required)
* additionalInstruction[evenOddDays]. ^short = "The medicament is be applied on even or odd days"
* additionalInstruction[evenOddDays] from EvenOddDays (required)

* timing.repeat.extension contains $ext-dayOfMonth named dayOfMonth 0..*


* timing.repeat.boundsPeriod.start MS
* timing.repeat.boundsPeriod.start. ^short = "When the dosage starts to be valid"
* timing.repeat.boundsPeriod.end MS
* timing.repeat.boundsPeriod.end. ^short = "When the dosage’s validity ends"

* timing.repeat.count MS
* timing.repeat.count. ^short = ""

* timing.repeat.duration MS
* timing.repeat.durationUnit MS

* timing.repeat.frequency MS
* timing.repeat.frequency. ^short = "How often the timed dosage must be repeated within the cycle"
* timing.repeat.period MS
* timing.repeat.period. ^short = "The duration of a cycle"
* timing.repeat.periodUnit MS
* timing.repeat.periodUnit. ^short = "The cycle duration unit specifies the time unit (hours, days etc.)"

* timing.repeat.dayOfWeek MS
* timing.repeat.timeOfDay MS

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

* doseAndRate.doseRange MS

* doseAndRate.doseQuantity MS
* doseAndRate.doseQuantity. ^short = "The amount of the medicament to be applied"
* doseAndRate.doseQuantity only CHEMEDQuantityWithEmedUnits

* doseAndRate.doseQuantity.extension contains CHMEDExtensionDoseQuantityTo named doseQuantityTo 0..1

* maxDosePerPeriod MS
* maxDosePerPeriod ^short = "TBD"
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits





Mapping: CHMED21A-for-CHMEDDosage
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"

* sequence -> "SOs"

* additionalInstruction[relativeToMeal] -> "Posology.RM"
* additionalInstruction[evenOddDays] -> "Posology.E"

* timing.repeat.extension[dayOfMonth] -> "6.5"

* timing.repeat.boundsPeriod.start -> "Posology.DtFrom"
* timing.repeat.boundsPeriod.end -> "Posology.DtTo"

* timing.repeat.count -> "Du"

* timing.repeat.duration -> "7.2"
* timing.repeat.durationUnit -> "7.2"

* timing.repeat.frequency -> "Posology.PO[Type4].TDpC"
* timing.repeat.period -> "Posology.PO[Type4].CyDu"
* timing.repeat.periodUnit -> "Posology.PO[Type4].DyDuU"

* timing.repeat.dayOfWeek -> "6.4"
* timing.repeat.timeOfDay -> "6.2"

* timing.repeat.when -> "Posology.PO[Type1].Ds"

* asNeededBoolean -> "Posology.InRes"

//* route -> "Medicament.Roa"

* doseAndRate.doseRange -> "7.3"

* doseAndRate.doseQuantity.extension[doseQuantityTo] -> "7.2"


* doseAndRate.doseQuantity.value -> "Posology.PO[Type1].Ds, 
                                     Posology.PO[Type3].TD[Type1].T[Type1].A, 
                                     Posology.PO[Type4].TD[Type1].T[Type1].A"
* doseAndRate.doseQuantity.unit -> "Medicament.Unit"
* doseAndRate.doseQuantity.system -> "Medicament.Unit"
* doseAndRate.doseQuantity.code -> "Medicament.Unit"

* maxDosePerPeriod -> "6.6"
