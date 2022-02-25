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
* timing.repeat.boundsPeriod.end MS

* timing.repeat.count MS
* timing.repeat.count. ^short = "TBD"

* timing.repeat.duration MS
* timing.repeat.durationUnit MS

* timing.repeat.frequency MS
* timing.repeat.period MS
* timing.repeat.periodUnit MS

* timing.repeat.dayOfWeek MS
* timing.repeat.timeOfDay MS

* timing.repeat.when MS

* asNeededBoolean MS
* asNeededBoolean. ^short = "Reserve medication ('true' if in reserve, 'false' otherwise)"

* route MS
* method MS

* doseAndRate.doseRange MS

* doseAndRate.doseQuantity MS
* doseAndRate.doseQuantity only CHEMEDQuantityWithEmedUnits

* doseAndRate.doseQuantity.extension contains CHMEDExtensionDoseQuantityTo named doseQuantityTo 0..1

* maxDosePerPeriod MS
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits





Mapping: CHMED21A-for-CHMEDDosage
Id: CHMED21A
Title: "Mapping to CHMED21A"
Source: CHMEDDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"

* sequence -> "TBD"

* additionalInstruction[relativeToMeal] -> "RM"
* additionalInstruction[evenOddDays] -> "TBD"

* timing.repeat.extension[dayOfMonth] -> "6.5"

* timing.repeat.boundsPeriod.start -> "DtFrom"
* timing.repeat.boundsPeriod.end -> "DtTo"

* timing.repeat.count -> "TBD"

* timing.repeat.duration -> "7.2"
* timing.repeat.durationUnit -> "7.2"

* timing.repeat.frequency -> "TBD"
* timing.repeat.period -> "TBD"
* timing.repeat.periodUnit -> "TBD"

* timing.repeat.dayOfWeek -> "6.4"
* timing.repeat.timeOfDay -> "6.2"

* timing.repeat.when -> "TBD"

* asNeededBoolean -> "InRes"

* route -> "Medicament.ROA"
* method -> "Medicament.MOA"

* doseAndRate.doseRange -> "7.3"

* doseAndRate.doseQuantity.extension[doseQuantityTo] -> "7.2"


* doseAndRate.doseQuantity.value -> "TBD"
* doseAndRate.doseQuantity.unit -> "Medicament.Unit"
* doseAndRate.doseQuantity.system -> "Medicament.Unit"
* doseAndRate.doseQuantity.code -> "Medicament.Unit"

* maxDosePerPeriod -> "6.6"
