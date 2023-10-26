Profile: CHMEDDosage
Parent: Dosage
Id: chmed-dosage
Title: "CHMED Dosage"
Description: "Dosage according to the 'eMedication Plan ChMed Posology'"
* . ^short = "CHMED Dosage"
* extension contains CHMEDPosologyDetailObjectType named posologyDetailObjectType 0..*
* extension contains CHMEDTimedDosageObjectType named timedDosageObjectType 0..1
* additionalInstruction from RelativeToMeal (required)
* timing.repeat.extension contains $ext-dayOfMonth named dayOfMonth 0..*
* route from $edqm-routeofadministration (required)
* method from CDTYP62 (required)
* doseAndRate.doseRange only CHEMEDRangeWithEmedUnits
* doseAndRate.doseQuantity only CHEMEDQuantityWithEmedUnits
* doseAndRate.doseQuantity.extension contains CHMEDDoseQuantityTo named doseQuantityTo 0..1
* maxDosePerPeriod only CHEMEDRatioWithEmedUnits