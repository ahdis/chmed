/*

Instance: medicationstatement-dosage
InstanceOf: CHMEDMedicationStatementDosage
Title: "MedicationStatement Dosage"
Description: "Example for a MedicationStatement"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"
*/



// 5. Posology objects
// 5.1. Daily
// 5.2. FreeText
// 5.3. Single
// 5.4. Cyclic
// 5.5. Sequence
// 5.6. Even/odd days
// 6. Timed dosage objects
// 6.1. DosageOnly

// 6.2. Times: Take 1 at 08:00.
/*
* dosage[structurednormal][+].timing.repeat.timeOfDay = "08:00:00"
* dosage[structurednormal][=].doseAndRate.doseQuantity = 1 '{Piece}' "Piece"
*/

// 6.3. DaySegments
// 6.4. WeekDays
// 6.5. DaysOfMonth
// 6.6. Interval
// 7. Dosage Objects
// 7.1. DosageSimple
// 7.2. DosageFromTo
// 7.3. DosageRange
// 8. Sequence objects
// 8.1. PosologySequence
// 8.2. Pause
// 9. Taking objects
// 9.1. TakingAtTime
// 9.2. TakingInSegment












