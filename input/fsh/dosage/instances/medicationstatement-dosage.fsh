/*

Instance: card-medicationstatement-dosage-4
InstanceOf: CHMED20AFMedicationStatementCard
Title: "MedicationStatement - Dosage Posology"
Description: "Example for a MedicationStatement (Card) to illustrate the dosage"
Usage: #example
* contained = med01
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:5c288e1e-d549-46c3-a835-60fb60b7d098"
* status = #completed
* medicationReference.reference = "#med01"
* subject.reference = "Patient/card-patient-s01"

* dosage[structurednormal][+].additionalInstruction = $sct#307165006 "Before meal (qualifier value)"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.start = "2021-10-07"
* dosage[structurednormal][=].timing.repeat.boundsPeriod.end = "2021-10-07"
* dosage[structurednormal][=].asNeededBoolean = false

*/


// 8. Sequence objects
// 8.1. PosologySequence
// 8.2. Pause
// 9. Taking objects
// 9.1. TakingAtTime
// 9.2. TakingInSegment
