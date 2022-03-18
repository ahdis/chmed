Profile: CHMEDDosage
Parent: Dosage
Id: chmed-dosage
Title: "CHMED Dosage"
Description: "Dosage according to the 'eMedication Plan CHMED Posology'"
* ^publisher = "IG eMediplan"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.emediplan.ch"
* . ^short = "CHMED Dosage"

* extension contains CHMEDExtensionPosologyObjectType named posologyObjectType 0..* MS
* extension contains CHMEDExtensionTimedDosageObjectType named timedDosageObjectType 0..1 MS

* sequence 
* sequence. ^short = "The order of the dosage instructions (number is identical -> concurrent,  number is different -> sequential)"

* additionalInstruction ^slicing.discriminator.type = #pattern
* additionalInstruction ^slicing.discriminator.path = "$this"
* additionalInstruction ^slicing.rules = #open
* additionalInstruction contains 
    relativeToMeal 0..1 and 
    evenOddDays 0..1 
* additionalInstruction[relativeToMeal]. ^short = "When the medicament must be applied relative to a meal (before, during or after)"
* additionalInstruction[relativeToMeal] from RelativeToMeal (required)
* additionalInstruction[evenOddDays]. ^short = "The medicament is be applied on even or odd days"
* additionalInstruction[evenOddDays] from EvenOddDays (required)

* timing.repeat.extension contains $ext-dayOfMonth named dayOfMonth 0..*


* timing.repeat.boundsPeriod.start 
* timing.repeat.boundsPeriod.end 

* timing.repeat.count 

* timing.repeat.duration 
* timing.repeat.durationUnit 

* timing.repeat.frequency 
* timing.repeat.period 
* timing.repeat.periodUnit 

* timing.repeat.dayOfWeek 
* timing.repeat.timeOfDay 

* timing.repeat.when 

* asNeededBoolean 
* asNeededBoolean. ^short = "Reserve medication ('true' if in reserve, 'false' otherwise)"

* route ^short = "Route of administration"
* route from $edqm-routeofadministration (required)

* method ^short = "Method of administration"
* method from CDTYP62 (required)

* doseAndRate.doseRange only CHEMEDRangeWithEmedUnits

* doseAndRate.doseQuantity 
* doseAndRate.doseQuantity only CHEMEDQuantityWithEmedUnits

* doseAndRate.doseQuantity.extension contains CHMEDExtensionDoseQuantityTo named doseQuantityTo 0..1

* maxDosePerPeriod 
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits





Mapping: CHMED21A-for-CHMEDDosage
Id: CHMED21A
Title: "CHMED21A"
Source: CHMEDDosage
Target: "http://emediplan.ch/chmed21a"
* -> "Posology"

* extension[posologyObjectType] -> "PO.T" // 5.
* extension[timedDosageObjectType] -> "PO.TD.T" // (5.3/5.4/5.5/5.6 ->) 6. 

* sequence -> "PO with split/tapered dosing, PO.SOs" // div, 5.5

* additionalInstruction[relativeToMeal] -> "RM" // 4.
* additionalInstruction[evenOddDays] -> "PO.E" // 5.6

* timing.repeat.extension[dayOfMonth] -> "PO.Ds (DaysOfMonth)" // 6.5

* timing.repeat.boundsPeriod.start -> "DtFrom" // 4.
* timing.repeat.boundsPeriod.end -> "DtTo" // 4.

* timing.repeat.count -> "PO.D/DU" // 8.1 and 8.2

* timing.repeat.duration -> "D.Du" // 7.2
* timing.repeat.durationUnit -> "D.DuU" // 7.2

* timing.repeat.frequency -> "PO.TDpC" // 5.4
* timing.repeat.period -> "PO.CyDu" // 5.4
* timing.repeat.periodUnit -> "PO.CyDuU" // 5.4

* timing.repeat.dayOfWeek -> "PO.WDs" // 6.4
* timing.repeat.timeOfDay -> "PO.Ts.Off/OffU" // 6.2 and 9.1

* timing.repeat.when -> "PO.Ds (Daily), PO.Ts.S" // 5.1, 6.3 and 9.2

* asNeededBoolean -> "InRes" // 4.

* route -> "Medicament.Roa"
* method -> "Medicament.Moa"

* doseAndRate.doseRange.low -> "D.AMin" // 7.3
* doseAndRate.doseRange.high -> "D.AMax" // 7.3

* doseAndRate.doseQuantity.extension[doseQuantityTo] -> "D.ATo" // 7.2

* doseAndRate.doseQuantity.value -> "D.A, D.AFrom" // 7.1, 7.2
* doseAndRate.doseQuantity.unit -> "Medicament.Unit"
* doseAndRate.doseQuantity.system -> "Medicament.Unit"
* doseAndRate.doseQuantity.code -> "Medicament.Unit"

* maxDosePerPeriod.numerator -> "PO.D" // 6.6
* maxDosePerPeriod.denominator.value -> "PO.MID" // 6.6
* maxDosePerPeriod.denominator.unit -> "PO.MIDU" // 6.6
* maxDosePerPeriod.denominator.system -> "PO.MIDU" // 6.6
* maxDosePerPeriod.denominator.code -> "PO.MIDU" // 6.6